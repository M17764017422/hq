-- xmake.lua
set_xmakever("2.5.0")
set_languages("c++17")

-- ✅ 强制 fmt 使用 MT 静态运行时
add_requires("fmt", {configs = {shared = false, vs_runtime = "MT"}})

target("hq")
    set_kind("binary")
    add_files("main.cpp")
    
    add_packages("fmt")
    
    -- ✅ Windows 静态运行时
    if is_plat("windows") then
        set_runtimes("MT")
    end
    
    -- ✅ 修改：使用 modest_a 代替单独的库
    add_links("modest_a")
    
    -- ✅ 添加 legacy_stdio_definitions 解决 __imp_strncpy 问题
    if is_plat("windows") then
        add_syslinks("ws2_32", "bcrypt", "advapi32", "legacy_stdio_definitions")
    end
    
    local modest_root = "$(projectdir)/deps/modest"
    add_includedirs(path.join(modest_root, "include"))
    add_linkdirs(path.join(modest_root, "lib"))
    
    set_optimize("fast")
