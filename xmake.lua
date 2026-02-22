-- xmake.lua
set_xmakever("2.5.0")
set_languages("c++14")

-- 添加 fmt 包 (xmake 会自动处理 Windows 下的静态/动态选择)
add_requires("fmt", {configs = {shared = false}}) -- 强制 fmt 也静态编译

target("hq")
    set_kind("binary")
    add_files("hq.cpp")
    
    -- 添加包
    add_packages("fmt")
    
    -- 设置运行时库为静态 (MT / MTd)，避免依赖 MSVC 运行时 DLL
    if is_plat("windows") then
        set_runtimes("MT") 
    end

    -- 链接核心库
    -- 注意：在 Windows 上，我们期望链接 .lib 文件
    add_links("myhtml", "mycss", "mycore", "myencoding")
    
    -- Windows 特有系统库 (Modest 可能需要)
    if is_plat("windows") then
        add_syslinks("ws2_32", "bcrypt") 
    end
    
    -- 路径配置
    -- 如果我们在 CI 中将 Modest 安装到了特定目录，需要在这里指定
    -- 这里假设我们将依赖构建在 projectdir/deps/modest 下
    local modest_root = "$(projectdir)/deps/modest"
    
    add_includedirs(path.join(modest_root, "include"))
    add_linkdirs(path.join(modest_root, "lib"))
    
    set_optimize("fast")
    set_symbols("debug") -- 保留调试信息以便排查
