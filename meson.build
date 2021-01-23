project('hq', 'cpp', default_options: ['cpp_std=c++17'])
modest = dependency('modest')
executable('hq', 'main.cpp',cpp_args: ['-static-libstdc++ -static-libgcc', '-Wl,-Bstatic,--whole-archive -lwinpthread ','-static'],
  dependencies: [modest],include_directories : 'D:/a/_temp/msys/msys64/usr/local/include'
)
