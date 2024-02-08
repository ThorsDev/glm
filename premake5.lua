project "glm"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	
	targetdir ("bin/%{cfg.buildcfg}/")
	objdir ("bin-int/%{cfg.buildcfg}/")
	
	files
	{
		"glm/**.h", "glm/**.hpp", "glm/**.cpp",
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"