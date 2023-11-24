#include <iostream>
#include <cmath>

double function(double x) {
    return exp(3 * x) * atan(x / 2);
}

double trapezoidalIntegration(double a, double b, int n) {
    double h = (b - a) / n;
    double result = (function(a) + function(b)) / 2.0;

    for (int i = 1; i < n; ++i) {
        double x = a + i * h;
        result += function(x);
    }

    return result * h;
}

int main() {
    double a = 0.0;      
    double b = M_PI / 4;  
    int n = 1000;         

    double result = trapezoidalIntegration(a, b, n);

    std::cout << "Rezultat integrala: " << result << std::endl;

    return 0;
}
