solution "tacopie"
	configurations { "Debug", "Release" }
	location ( "Build" )
	targetdir "Bin/%{cfg.buildcfg}"

	platforms { "x86", "x64" }
	pic "On"
	symbols "On"
	
	includedirs { "vendor", "." }

	filter "system:windows"
		defines { "WINDOWS", "WIN32" }

	filter "configurations:Debug"
		defines { "DEBUG" }

	filter "configurations:Release"
		optimize "On"

	include "tacopie"
