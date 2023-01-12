#ifndef MANDELBROT_HPP
#define MANDELBROT_HPP

namespace caveofprogramming
{

class Mandelbrot
{
    public: 
        static const int MAX_ITERATIONS = 500;
    
public:
    Mandelbrot();
    virtual ~Mandelbrot();


    static int getIterations(double x, double y);
};

}

#endif // MANDELBROT_HPP
