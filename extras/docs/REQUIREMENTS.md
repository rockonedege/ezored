# Requirements

**The general requirements is:**

1. Python 3 (https://www.python.org/)  
2. PIP (https://pip.pypa.io/)
3. CMake 3.14.1 (https://cmake.org/)  
4. Conan 1.32.1 (https://conan.io/)
5. Conan extra repositories (conan-darwin-toolchain):

They are the basic things to make ezored work. Check on terminal if you have every tool in your path typing their names (python, cmake, conan).

Each platform requirements list now. Maybe you already have it, because are basic tools.

**Android Requirements:**

1. Supported operational system for NDK: macOS, Linux or Windows.  
    
    Conan will download NDK and other things to build based on your system.

**iOS Requirements:**

1. macOS operational system.
2. Xcode.
3. Command line tools.  
    Run: ```xcode-select --install```

**macOS Requirements:**

1. macOS operational system.
2. Xcode.
3. Command line tools.  
    Run: ```xcode-select --install```
4. macOS system headers.  
    Run: ```open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg```  
    The path can change for each macOS version (10.14 is mojave) and this is required because old softwares search on old places for this headers, like old openssl versions.

**Linux Requirements:**

1. Linux operational system.
2. C++ compiler installed.

    Example: On Ubuntu run on terminal: ```sudo apt install build-essential```.

**Windows Requirements:**

1. Windows operational system.
2. Visual Studio installed.  

    Obs 1: Current example in ezored is using version 2017 (15), change for your needs in conan profile file.

    Obs 2: Everything was compiled using community version (https://visualstudio.microsoft.com/vs/).  

    Obs 3: On installation process select "Desktop development with C++".  