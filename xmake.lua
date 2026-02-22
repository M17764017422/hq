-- xmake.lua
set_xmakever("2.5.0")
set_languages("c++17")

-- 1. 强制 fmt 静态编译
add_requires("fmt", {configs = {shared = false}})

target("hq")
    set_kind("binary")
    add_files("main.cpp")
    
    add_packages("fmt")
    
    -- 2. 关键：Windows 下强制使用 MT 运行时 (静态链接 MSVC CRT)
    if is_plat("windows") then
        set_runtimes("MT")
    end
    
    -- 3. 链接 Modest 静态库
    add_links("myhtml", "mycss", "mycore", "myencoding")
    
    -- Windows 系统库
    if is_plat("windows") then
        add_syslinks("ws2_32", "bcrypt", "advapi32")
    end
    
    -- 4. 指定依赖路径 (必须与 Actions 脚本中的目录结构一致)
    -- Actions 脚本将库放在了 deps/modest 下
    local modest_root = "$(projectdir)/deps/modest"
    add_includedirs(path.join(modest_root, "include"))
    add_linkdirs(path.join(modest_root, "lib"))
    
    set_optimize("fast")
