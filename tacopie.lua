project "tacopie"
    language "C++"
    cppdialect "C++11"
    kind "StaticLib"
    targetname "tacopie"

    includedirs { "includes" }

    vpaths {
        ["Headers/*"] = "includes/tacopie/**.hpp",
		["Sources/*"] = "sources/**.cpp",
		["*"] = "premake5.lua"
	}
    
    files {
		"premake5.lua",
		"**.cpp",
		"**.hpp"
    }
    
    excludes {
        "examples/**",
        "tests/**"
    }