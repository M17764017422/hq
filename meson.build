project('hq', 'cpp', default_options: ['cpp_std=c++17'])
modest = dependency('modest', version: '>=x.y.z', required: true)
modest_include = include_directories('C:/Program Files/modest/include')
modest_lib = library('modest', include_directories: modest_include, link_args: ['-L"C:/Program Files/modest/lib"'], dependencies: modest)

fmt = dependency('fmt')
executable('hq', 'main.cpp',
  dependencies: [modest, fmt]
)
