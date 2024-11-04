#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <iostream>
#include <cstring>
#include <unistd.h>  // For usleep function

// Function to recursively search for a window by its name (title)
Window findWindow(Display *display, Window root, const char *windowName) {
    Window parent;
    Window *children;
    unsigned int numChildren;

    // Get the list of child windows
    if (XQueryTree(display, root, &root, &parent, &children, &numChildren) != 0) {
        for (unsigned int i = 0; i < numChildren; i++) {
            char *window_title = nullptr;

            // Get the window name (title)
            XFetchName(display, children[i], &window_title);

            // Check if the window name matches the target window name
            if (window_title && std::strcmp(window_title, windowName) == 0) {
                std::cout << "Window handle (ID) found: " << children[i] << std::endl;
                return children[i];  // Return the window ID
            }

            // Recursively search in child windows
            Window result = findWindow(display, children[i], windowName);
            if (result) {
                return result;
            }
        }
    }
    return 0;  // Window not found
}

// Function to get the window size
void getWindowSize(Display *display, Window window, int &width, int &height) {
    XWindowAttributes attributes;
    XGetWindowAttributes(display, window, &attributes);

    // Get width and height from the attributes
    width = attributes.width;
    height = attributes.height;
}

// Function to resize the window by handle (ID)
void resizeWindow(Display *display, Window window, int newWidth, int newHeight) {
    // Resize the window to the specified width and height
    XResizeWindow(display, window, newWidth, newHeight);
    XFlush(display);  // Ensure the resize request is sent to the X server
}

int main() {
    // Open connection to the X server
    Display *display = XOpenDisplay(nullptr);
    if (display == nullptr) {
        std::cerr << "Cannot open display\n";
        return 1;
    }

    // Define the root window (usually the top-level window of the screen)
    Window root = DefaultRootWindow(display);

    // Define the name of the window you want to find
    const char *targetWindowName = "Nebula 1.1.01-";  // Replace with your window's title

    Window targetWindow = 0;
    
    // Wait until the window is found (polling every 500 milliseconds)
    std::cout << "Waiting for the window to appear...\n";
    while ((targetWindow = findWindow(display, root, targetWindowName)) == 0) {
        usleep(1000000);  // Wait for 500 milliseconds before trying again
    }

    std::cout << "Window found!\n";
    int width = 0, height = 0;

    // Get the window size
    getWindowSize(display, targetWindow, width, height);

    std::cout << "Before Window size - Width: " << width << ", Height: " << height << std::endl;

    // Resize the window to the desired dimensions
    resizeWindow(display, targetWindow, 1920, 1080);

    // Close the display connection
    XCloseDisplay(display);
    return 0;
}

