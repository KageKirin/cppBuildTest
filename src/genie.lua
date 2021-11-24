project "cppBuildTest"
    language "C++"
    kind "ConsoleApp"
    flags {
        "ExtraWarnings",
        "FatalWarnings",
        "No64BitChecks",
        "StaticRuntime",
        "ObjcARC",
        "CppLatest",
    }

    files {
        "main.cpp",
    }
