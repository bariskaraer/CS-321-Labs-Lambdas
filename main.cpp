#include <iostream>

template <typename  ... Lambdas>
auto all_of(Lambdas ... lambdas)
{
   return [=](int x){
       return (lambdas(x) && ...);
   };
}

template <typename Predicate, typename Lambda>
auto if_then(Predicate predicate, Lambda lambda)
{
    return [=](auto x)
    {
        if(predicate(x))
        {
            return lambda(x);
        }
        else return 0;
    };

}

auto less_than(int value)
{
    return [value](int x) { return x < value; };
}

auto divisble_by(int value)
{
    return [value](int x) { return x % value == 0;};
}

auto add_x(int value)
{
    return [value](int x) { return x += value; };
}

auto if_big()
{
    return [](std::string str)
    {
        return isupper(str[0]);
    };
}

auto print()
{
    return [](std::string str)
    {
      std::cout << str << std::endl;
      return 1;
    };
}


int main() {
    auto r1 = all_of(less_than(15),divisble_by(14));
    std::cout << r1(14) << std::endl;


    auto r2 = if_then(r1 ,add_x(5));
    std::cout << r2(14) << std::endl;

    auto r3 = if_big();
    auto r4 = if_then(r3,print());
    r4("Cenker");
    return 0;
}
