
cmake build-cmake: build_cmake
	cd build_cmake && cmake -G Ninja .. && ninja


build_cmake:
	rm -f ./build_cmake
	mkdir -p ./build_cmake
