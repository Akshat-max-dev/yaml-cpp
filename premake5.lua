project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
            systemversion "latest"
            cppdialect "C++17"
            staticruntime "on"

    filter "configurations:Debug"
            runtime "Debug"
            symbols "on"

    filter "configurations:Release"
            runtime "Release"
            optimize "on"