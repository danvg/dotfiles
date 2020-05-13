#include <iostream>

namespace calc
{
   template<typename T>
   T gcd(T m, T n)
   {
      if(n == 0)
         return m;

      return gcd(n, m % n);
   }
} // calc

int main(int argc, char **argv)
{
   if(argc != 3)
   {
      std::cout << "Usage: calc_gdc m n" << std::endl;
      return -1;
   }

   const auto m = std::atoi(argv[1]);
   const auto n = std::atoi(argv[2]);

   std::cout << calc::gcd(m, n) << std::endl;
   return 0;
}
