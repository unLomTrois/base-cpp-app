#include "application.hpp"

int main() {
    Application *app = new Application();

    app->run();

    delete app;

    return 0;
}