#include <chrono>
#include <iostream>

int main(int argc, char** argv) {
  std::chrono::system_clock::time_point start, end;

  start = std::chrono::system_clock::now();

  long long a = 0;
  long long itr = (long long)2e9;
  for (int i = 0; i < itr; ++i) {
    a++;
  }

  end = std::chrono::system_clock::now();

  double time = static_cast<double>(
      std::chrono::duration_cast<std::chrono::microseconds>(end - start)
          .count() /
      1000.0);

  std::cout << "On: " << argv[1] << "  total time:" << time << "[ms]"
            << std::endl;
}
