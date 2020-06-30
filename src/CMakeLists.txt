find_package(Corrade REQUIRED Main)
find_package(MagnumIntegration REQUIRED ImGui)
find_package(Magnum REQUIRED GL Trade Sdl2Application)

set_directory_properties(PROPERTIES CORRADE_USE_PEDANTIC_FLAGS ON)

corrade_add_resource(TexturedTriangle_RESOURCES resources.conf)


add_executable(MyApplication MyApplication.cpp TexturedTriangleShader.h TexturedTriangleShader.cpp ${TexturedTriangle_RESOURCES})
target_link_libraries(MyApplication PRIVATE
    Corrade::Main
    Magnum::Application
    Magnum::GL
    Magnum::Magnum
    Magnum::Trade
    MagnumIntegration::ImGui)

# Make the executable a default target to build & run in Visual Studio
set_property(DIRECTORY ${PROJECT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT MyApplication)
