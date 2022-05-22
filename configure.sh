#!/bin/zsh

rm -rf CMakeCache.txt CMakeFiles cmake_install.cmake

brew=$HOMEBREW_PREFIX
torch=`python3 -c 'import torch;print(torch.utils.cmake_prefix_path)'`
cuda=$brew/opt/cuda
cudnn=$brew/opt/cudnn
print Torch is $torch
opts=(
    -D CMAKE_PREFIX_PATH="$brew;$torch;$cuda;$cudnn"
)

cmake $opts .
