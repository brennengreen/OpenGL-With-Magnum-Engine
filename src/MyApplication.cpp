#include <Corrade/Containers/ArrayView.h>
#include <Corrade/Containers/Optional.h>
#include <Corrade/PluginManager/Manager.h>
#include <Corrade/Utility/Resource.h>
#include <Magnum/ImageView.h>
#include <Magnum/GL/Buffer.h>
#include <Magnum/GL/DefaultFramebuffer.h>
#include <Magnum/GL/Mesh.h>
#include <Magnum/GL/Texture.h>
#include <Magnum/GL/TextureFormat.h>
#include <Magnum/Platform/Sdl2Application.h>
#include <Magnum/Trade/AbstractImporter.h>
#include <Magnum/Trade/ImageData.h>

#include <Magnum/Math/Color.h>
#include <Magnum/GL/Renderer.h>
#include <Magnum/ImGuiIntegration/Context.hpp>

#include "TexturedTriangleShader.h"

#include <iostream>

using namespace Magnum;
using namespace Math::Literals;

class MyApplication: public Platform::Application {
    public:
        explicit MyApplication(const Arguments& arguments);

    private:
        void drawEvent() override;

        void viewportEvent(ViewportEvent& event) override;

        void keyPressEvent(KeyEvent& event) override;
        void keyReleaseEvent(KeyEvent& event) override;

        void mousePressEvent(MouseEvent& event) override;
        void mouseReleaseEvent(MouseEvent& event) override;
        void mouseMoveEvent(MouseMoveEvent& event) override;
        void mouseScrollEvent(MouseScrollEvent& event) override;
        void textInputEvent(TextInputEvent& event) override;

        void drawImGui();
        void drawScene();

        ImGuiIntegration::Context _imgui{NoCreate};

        bool _showDemoWindow = true;
        bool _showAnotherWindow = false;
        Color4 _clearColor = 0x72909aff_rgbaf;
        Float _floatValue = 0.0f;

        GL::Mesh _mesh;
        TexturedTriangleShader _shader;
        GL::Texture2D _texture;
};

MyApplication::MyApplication(const Arguments& arguments): Platform::Application{arguments, Configuration{}.setTitle("Magnum Shader + Dear ImGui Example").setWindowFlags(Configuration::WindowFlag::Resizable)} {
    _imgui = ImGuiIntegration::Context(Vector2{windowSize()}/dpiScaling(),
            windowSize(), framebufferSize());

    GL::Renderer::setBlendEquation(GL::Renderer::BlendEquation::Add, GL::Renderer::BlendEquation::Add);
    GL::Renderer::setBlendFunction(GL::Renderer::BlendFunction::SourceAlpha, GL::Renderer::BlendFunction::OneMinusSourceAlpha);

    struct TriangleVertex {
        Vector2 position;
        Vector2 textureCoordinates;
    };
    const TriangleVertex data[] {
            {{-0.5f, -0.5f}, {0.0f, 0.0f}}, /* Left position and texture coordinate */
            {{ 0.5f, -0.5f}, {1.0f, 0.0f}}, /* Right position and texture coordinate */
            {{ 0.0f,  0.5f}, {0.5f, 1.0f}}  /* Top position and texture coordinate */
    };

    GL::Buffer buffer;
    buffer.setData(data);
    _mesh.setCount(3)
         .addVertexBuffer(std::move(buffer), 0,
              TexturedTriangleShader::Position{},
              TexturedTriangleShader::TextureCoordinates{});

    PluginManager::Manager<Trade::AbstractImporter> manager;
    Containers::Pointer<Trade::AbstractImporter> importer =
            manager.loadAndInstantiate("TgaImporter");
    if(!importer) std::exit(1);

    const Utility::Resource rs{"textured-triangle-data"};
    if (!importer->openData(rs.getRaw("stone.tga"))) std::exit(2);

    Containers::Optional<Trade::ImageData2D> image = importer->image2D(0);
    CORRADE_INTERNAL_ASSERT(image);
    _texture.setWrapping(GL::SamplerWrapping::ClampToEdge)
        .setMagnificationFilter(GL::SamplerFilter::Linear)
        .setMinificationFilter(GL::SamplerFilter::Linear)
        .setStorage(1, GL::textureFormat(image->format()), image->size())
        .setSubImage(0, {}, *image);

    #if !defined(MAGNUM_TARGET_WEBGL) && !defined(CORRADE_TARGET_ANDROID)
        setMinimalLoopPeriod(16);
    #endif
}

void MyApplication::drawEvent() {
    GL::defaultFramebuffer.clear(GL::FramebufferClear::Color | GL::FramebufferClear::Depth);

    drawScene();
    drawImGui();

    swapBuffers();
    redraw();
}

/* Code to draw all elements of the scene */
void MyApplication::drawScene() {
    _shader
            .setColor(0xffb2b2_rgbf)
            .bindTexture(_texture)
            .draw(_mesh);
}

/* Code to draw all elements of the Debug Windows */
void MyApplication::drawImGui() {
    _imgui.newFrame();
    if(ImGui::GetIO().WantTextInput && !isTextInputActive())
        startTextInput();
    else if (!ImGui::GetIO().WantTextInput && isTextInputActive())
        stopTextInput();

    {
        ImGui::Text("Hello, world!");
        ImGui::SliderFloat("Float", &_floatValue, 0.0f, 1.0f);
        if(ImGui::ColorEdit3("Clear Color", _clearColor.data()))
            GL::Renderer::setClearColor(_clearColor);
        if(ImGui::Button("Test Window"))
            _showDemoWindow ^= true;
        if(ImGui::Button("Another Window"))
            _showAnotherWindow ^= true;
        ImGui::Text("Application average %.3f ms/frame (%.1f FPS)",
                    1000.0/Double(ImGui::GetIO().Framerate), Double(ImGui::GetIO().Framerate));
    }

    if (_showAnotherWindow) {
        ImGui::SetNextWindowSize(ImVec2(500, 100), ImGuiCond_FirstUseEver);
        ImGui::Begin("Another Window", &_showAnotherWindow);
        ImGui::Text("Hello");
        ImGui::End();
    }

    if(_showDemoWindow) {
        ImGui::SetNextWindowPos(ImVec2(650, 20), ImGuiCond_FirstUseEver);
        ImGui::ShowDemoWindow();
    }

    _imgui.updateApplicationCursor(*this);

    GL::Renderer::enable(GL::Renderer::Feature::Blending);
    GL::Renderer::enable(GL::Renderer::Feature::ScissorTest);
    GL::Renderer::disable(GL::Renderer::Feature::FaceCulling);
    GL::Renderer::disable(GL::Renderer::Feature::DepthTest);

    _imgui.drawFrame();

    /* Reset state. Only needed if you want to draw something else with
       different state after. */
    GL::Renderer::enable(GL::Renderer::Feature::DepthTest);
    GL::Renderer::enable(GL::Renderer::Feature::FaceCulling);
    GL::Renderer::disable(GL::Renderer::Feature::ScissorTest);
    GL::Renderer::disable(GL::Renderer::Feature::Blending);
}


void MyApplication::viewportEvent(ViewportEvent& event) {
    GL::defaultFramebuffer.setViewport({{}, event.framebufferSize()});

    _imgui.relayout(Vector2{event.windowSize()}/event.dpiScaling(),
                    event.windowSize(), event.framebufferSize());
}

void MyApplication::keyPressEvent(KeyEvent& event) {
    if(_imgui.handleKeyPressEvent(event)) return;
}

void MyApplication::keyReleaseEvent(KeyEvent& event) {
    if(_imgui.handleKeyReleaseEvent(event)) return;
}

void MyApplication::mousePressEvent(MouseEvent& event) {
    if(_imgui.handleMousePressEvent(event)) return;
}

void MyApplication::mouseReleaseEvent(MouseEvent& event) {
    if(_imgui.handleMouseReleaseEvent(event)) return;
}

void MyApplication::mouseMoveEvent(MouseMoveEvent& event) {
    if(_imgui.handleMouseMoveEvent(event)) return;
}

void MyApplication::mouseScrollEvent(MouseScrollEvent& event) {
    if(_imgui.handleMouseScrollEvent(event)) {
        /* Prevent scrolling the page */
        event.setAccepted();
        return;
    }
}

void MyApplication::textInputEvent(TextInputEvent& event) {
    if(_imgui.handleTextInputEvent(event)) return;
}



MAGNUM_APPLICATION_MAIN(MyApplication)
