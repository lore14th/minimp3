project "minimp3"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"
	
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
		symbols "On"	-- debug version --

	filter "configurations:Release"
		runtime "Release"
		optimize "Full"	-- release version --
		inlining "Auto"
		floatingpoint "Fast"
