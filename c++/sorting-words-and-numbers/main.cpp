#include <iostream>
#include <sstream>
#include <vector>

int main() {
#pragma clang diagnostic push
#pragma ide diagnostic ignored "EndlessLoop"
    while (true) {
        std::vector<std::string> str;
        std::vector<std::string> num;
        std::string word;
        std::string line;
        std::getline(std::cin, line);
        std::stringstream ss(line);
        while (std::getline(ss, word, ' ')) {
            if (word.find_first_not_of("0123456789") == std::string::npos) {
                num.push_back(word);
            } else {
                str.push_back(word);
            }
        }

        for (const std::string& s : str) {
            std::cout << s << " ";
        }
        std::cout << std::endl;
        for (const std::string& s : num) {
            std::cout << s << " ";
        }
        std::cout << std::endl;
    }
#pragma clang diagnostic pop
    return 0;
}
