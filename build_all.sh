# Build the project for specified platforms
./install_all_compiler.sh
./linux_aarch64_compile_script.sh
./linux_x86_64_compile_script.sh
./win32_compile_script.sh
./win64_compile_script.sh

# Compiling process
make --directory=./build-Win32
make --directory=./build-Win64
make --directory=./build-linux_aarch64
make --directory=./build-linux_x86_64

# Organize all executables files with putting in a file

mkdir -p ./cross-platform-binaries
mkdir -p ./cross-platform-binaries/windows_x86
mkdir -p ./cross-platform-binaries/windows_x64
mkdir -p ./cross-platform-binaries/linux_x86_64
mkdir -p ./cross-platform-binaries/linux_aarch64

cp ./build-Win32/bin/CMake-CrossCompile-HelloWorld.exe ./cross-platform-binaries/windows_x86
cp ./build-Win64/bin/CMake-CrossCompile-HelloWorld.exe ./cross-platform-binaries/windows_x64
cp ./build-linux_x86_64/bin/CMake-CrossCompile-HelloWorld ./cross-platform-binaries/linux_x86_64
cp ./build-linux_aarch64/bin/CMake-CrossCompile-HelloWorld ./cross-platform-binaries/linux_aarch64


