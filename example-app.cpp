#include <torch/torch.h>
#include <iostream>

int main() {
  torch::Tensor tensor = torch::rand({2, 2});
  std::cout << tensor << std::endl;
}
