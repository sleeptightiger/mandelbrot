#include <iostream>
#include <cstdint>
#include <memory>
#include <array>
#include <math.h>
#include "Bitmap.hpp"
#include "Zoom.hpp"
#include "Mandelbrot.hpp"
#include "ZoomList.hpp"

using namespace std;
using namespace caveofprogramming;

int main() {
    
    int const WIDTH = 800;
    int const HEIGHT = 600;
    Bitmap bitmap(WIDTH, HEIGHT);
    
    double min = 9999999;
    double max = -9999999;
    
    ZoomList zoomList(WIDTH, HEIGHT);
    
    zoomList.add(Zoom(WIDTH/2, HEIGHT/2, 4.0/WIDTH));
    zoomList.add(Zoom(295, HEIGHT - 202, 0.1));
    zoomList.add(Zoom(312, HEIGHT - 304, 0.1));
    
    unique_ptr<int[]> histogram(new int[Mandelbrot::MAX_ITERATIONS]{0});
    unique_ptr<int[]> fractal(new int[WIDTH*HEIGHT]{0});
    
    
    
     for(int y {0}; y < HEIGHT; y++){
        for(int x {0}; x < WIDTH; x++) {
            pair<double, double> coords = zoomList.doZoom(x, y);
           
            int iterations = Mandelbrot::getIterations(coords.first, coords.second);
            
            fractal[y*WIDTH+x] = iterations;
            
            if(iterations != Mandelbrot::MAX_ITERATIONS) {
                histogram[iterations]++;
            }
            
            uint8_t  color = (uint8_t)(256 * (double)iterations/Mandelbrot::MAX_ITERATIONS);
            
            color = color*color*color;
            bitmap.setPixel(x, y, 0, color,  0);
            if(color < min) min = color;
            if(color > max) max = color;
        }
    }
    
    int total = 0;
    for(int i {0}; i<Mandelbrot::MAX_ITERATIONS; i++) {
        total += histogram[i];
    }
    
    for(int y {0}; y < HEIGHT; y++){
        for(int x {0}; x < WIDTH; x++) {
            
            uint8_t red = 0;
            uint8_t green = 0;
            uint8_t blue = 0;
            
            int iterations = fractal[y*WIDTH+x];
            
            if(iterations != Mandelbrot::MAX_ITERATIONS) {
            
                double hue = 0.0;
                for(int i {0}; i <= iterations; i++) {
                    hue += (double)histogram[i]/total;
                }
                
                green = pow(255, hue);
            
            }
            
            bitmap.setPixel(x, y, red, green,  blue);
            
        }
    }
    
    bitmap.write("test.bmp");
    cout<<"Finished."<<endl;
    return 0;
}