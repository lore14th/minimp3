project "minimp3"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"minimp3.h",
		"minimp3_ex.h"
	}

	defines 
	{
		"_CRT_SECURE_NO_WARNINGS"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		symbols "On"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		symbols "Off"
