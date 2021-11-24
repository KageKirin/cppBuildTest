local thisscriptpath = path.getabsolute(path.getdirectory(_SCRIPT))
local rootpath       = thisscriptpath
local locationpath   = path.join(os.getcwd(), _OPTIONS["to"] or path.join('build/projects'))
local targetpath     = path.join(locationpath, '../bin')
local objectpath     = path.join(locationpath, '../obj')
local librarypath    = path.join(locationpath, '../lib')

solution "cppBuildTest"
    configurations {
        "Debug",
        "Release"
    }
    location (locationpath)

    configuration { "Debug" }
        targetsuffix ""
        defines    { "DEBUG", "_DEBUG" }

    configuration { "Release" }
        targetsuffix ""
        defines    { "RELEASE", "NDEBUG" }

    configuration { "windows" }
        targetdir (path.join(targetpath, "windows"))
        objdir    (path.join(objectpath, "windows"))

    configuration { "linux*" }
        targetdir (path.join(targetpath, "linux"))
        objdir    (path.join(objectpath, "linux"))

    configuration { "macosx" }
        targetdir (path.join(targetpath, "darwin"))
        objdir    (path.join(objectpath, "darwin"))

    configuration { "asmjs" }
        targetdir (path.join(targetpath, "asmjs"))
        objdir    (path.join(objectpath, "asmjs"))

    configuration { "wasm*" }
        targetdir (path.join(targetpath, "wasm"))
        objdir    (path.join(objectpath, "wasm"))

    configuration { "Debug" }
        defines     { "_DEBUG", }
        flags       { "Symbols" }

    configuration { "Release" }
        defines     { "NDEBUG", }
        flags       { "OptimizeSize" }

    configuration { "Debug", "windows" }
        linkoptions { "-Wl,/DEBUG:FULL" }

    configuration {}

    flags {
        "ExtraWarnings",
        "No64BitChecks",
        "StaticRuntime",
    }

    startproject "cppBuildTest"

    dofile('src/genie.lua')
