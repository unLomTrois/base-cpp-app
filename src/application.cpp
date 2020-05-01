#include "application.hpp"

#include <iostream>


Application::Application() {

}

Application::~Application() {

}

void Application::run() {
    std::cout << "hello base" << std::endl;
}