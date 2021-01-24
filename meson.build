project('hq', 'cpp', default_options: ['-v','cpp_std=c++17'])
modest = dependency('modest')
add_global_link_arguments('-Bstatic,--whole-archive','-lstdc++','-lgcc_eh','-lpthread')
executable('hq', 'main.cpp',
  dependencies: [modest],include_directories : 'D:/a/_temp/msys/msys64/usr/local/include'
)
