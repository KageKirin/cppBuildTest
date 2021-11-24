add_executable(cppBuildTest
    main.cpp
)

target_compile_features(cppBuildTest
    PUBLIC
    cxx_std_20
)
