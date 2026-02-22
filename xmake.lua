-- xmake.lua
set_xmakever("2.5.0")
set_languages("c++17")

-- ✅ 修正 1: 使用 runtimes 替代弃用的 vs_runtime
add_requires("fmt", {configs = {runtimes = "MT"}})

target("hq")
    set_kind("binary")
    add_files("main.cpp")
    
    add_packages("fmt")
    
    -- ✅ 修正 2: 显式设置运行时
    if is_plat("windows") then
        set_runtimes("MT")
        add_ldflags("/NODEFAULTLIB:msvcrt.lib", {force = true})
    end
    
    -- ✅ 修正 3: 链接静态库 + 解决 strncpy 问题
    add_links("modest_a", "legacy_stdio_definitions")
    
    if is_plat("windows") then
        add_syslinks("ws2_32", "bcrypt", "advapi32")
    end
    
    local modest_root = "$(projectdir)/deps/modest"
    add_includedirs(path.join(modest_root, "include"))
    add_linkdirs(path.join(modest_root, "lib"))
    
    set_optimize("fast")
