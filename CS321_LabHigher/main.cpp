#include <iostream>
#include <vector>
#include <string>

// 1a) write a higher order function called "filter" that filters the contents of
// any container with push_back method via consulting a lambda.
// lambda is used to ask about the container item's eligibility.
// if the item is eligible, it stays, otherwise it is ignored.
// a lambda returning either true or false is called a "predicate"
// at the end, a new container of the same type with eligible items are returned.

// 1b) use your "filter" function on a std::vector<std::string> instance to
// filter the strings with a length of at least 4 chars.
// 1c) use a lifted function "with_min_length(4)" to do the same thing.

// 2a) write a higher order function called "for_each" that iterates over all items in
// the container and passes them to a lambda.
// 2b) use for_each with a lambda that prints the item to std::cout.
// 2c) print the original container v and filtered container returned in (1a) question

// 3a) write a higher order function called "transform" that iterates over all items and
// changes them to something else via a lambda. lambda does not return anything.
// lambda must change the item directly in-place.
// 3b) use this function to transform all strings stored in the container to <oldvalue>
// container will be "<live>", "<long>", "<and>", "<prosper>" after transform is called.
// 3c) print transformed container using for_each.

// Filter
template <typename  CONTAINER, typename LAMBDA>
auto filter(const CONTAINER& container, LAMBDA lambda)
{
    CONTAINER temp = CONTAINER();
    for(const auto& value : container)
    {
        if(lambda(value))
            temp.push_back(value);
    }
    return temp;
}

auto with_min_length(int value)
{
    return [value](const std::string& s) // is it safe
    {
        return s.length() >= value;
    };
}

// For Each
template <typename CONTAINER, typename LAMBDA>
auto for_each(const CONTAINER& container, LAMBDA lambda)
{
    for(const auto& value : container)
        lambda(value);
}

auto print()
{
    return [](auto s)
    {
        std::cout << s << "\n";
    };
}

// Transform
template <typename CONTAINER, typename LAMBDA>
auto transform(CONTAINER& container, LAMBDA lambda)
{
    for(auto& value : container)
        lambda(value);
    return container;
}

auto change()
{
    return [](auto& s) {
        s = "<" + s + ">";
    };
}



int main() {

    auto v = std::vector<std::string>{"Hi", "Hello", "Cenker", "Karaors", "2"};

    std::cout <<  "Original:" << std::endl;
    for_each(v,print());

    auto min_length = filter(v,with_min_length(4));
    std::cout <<  "\n";
    std::cout <<  "Filter:" << std::endl;
    for_each(min_length,print());

    std::cout <<  "\n";
    std::cout <<  "Transform:" << std::endl;
    auto new_v = transform(min_length, change());
    for_each(new_v,print());


    return 0;
}
