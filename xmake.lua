set_project("redis")
set_languages("c++11")
set_warnings("allextra")
--set_warnings("all", "error")

-- set_config("cxxflags", "-Wno-attributes")
set_config("cc", "clang")
set_config("cxx", "clang++")
set_config("ld", "clang++")

add_rules("mode.debug", "mode.release")

add_includedirs("./rosegun")

target("rosegun")
    set_kind("static")
    add_files("./rosegun/common/*.cc")
    add_cxflags("-fPIE")

includes("test")