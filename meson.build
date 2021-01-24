project('hq', 'cpp', default_options: ['cpp_std=c++17'])
modest = dependency('modest',static:true)
add_global_link_arguments('-Wl,--subsystem,console,-Bstatic,--whole-archive','-lstdc++','-lgcc_eh','-lpthread',language:'cpp')
executable('hq', 'main.cpp',
  dependencies: [modest],include_directories : 'D:/a/_temp/msys/msys64/usr/local/include',cpp_args : ['-v']
)
