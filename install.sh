#!/bin/bash
echo "// install.cpp 2025-08-13 10:14 dwg - "     > install.cpp
echo "#include <stdio.h>"                          >> install.cpp
echo "int main() {"                               >> install.cpp
echo "  std::cout << __PRETTY_FUNCTION__"        >> install.cpp
echo "  std::cout << std::endl"                  >> install.cpp
echo "}"                                         >> install.cpp
gcc install.cpp -o install
./install
rm install.cpp install
