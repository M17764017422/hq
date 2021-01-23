project('hq', 'cpp', default_options: ['cpp_std=c++17'])
modest = dependency('modest')
executable('hq', 'main.cpp',cpp_args: ['-Wl,-Bstatic -lstdc++ -lgcc_eh -lpthread -Wl,-Bdynamic'],
  dependencies: [modest],include_directories : 'D:/a/_temp/msys/msys64/usr/local/include'
)
