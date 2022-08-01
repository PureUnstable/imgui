project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internals.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}
	
	includedirs
	{
		"include"
	}

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter { "system:linux", "configurations:Release" }
		buildoptions "/MT"
	
	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"