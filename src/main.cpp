#include <raylib.h> // Include the raylib library header file

using namespace std;

// Dimensions of the window
const int win_width = 600;
const int win_height = 400;

int main(){

    InitWindow(win_width, win_height, "Test window"); // Create the window instance
    SetTargetFPS(60); // 60 FPS

    while(!WindowShouldClose()){ // While the window remains open
        BeginDrawing(); // Begin drawing
        ClearBackground(RAYWHITE); // Clear the background

        DrawText("Hello, World!", 10, 10, 20, DARKGRAY); // Draw the text

        EndDrawing(); // End drawing
    }

    CloseWindow(); // Ensure that the window is closed
    return 0;
}
