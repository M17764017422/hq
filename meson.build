project('hq', 'cpp', default_options: ['cpp_std=c++17'])
modest = dependency('modest')
fmt = dependency('fmt')
executable('hq', 'main.cpp',
  dependencies: [modest, fmt],
  link_args: ['-I/C/Program\ Files/modest/include', '-LC:/Program\ Files/modest/lib', '-lmodest']
)
