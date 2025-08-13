#!/bin/bash
echo "// install.cpp 2025-08-13 10:14 dwg - "     > install.cpp
echo "#include <stdio.h>"                          >> install.cpp
echo "int main() {"                               >> install.cpp
echo "  printf(\"%s\n\",__PRETTY_FUNCTION__);"    >> install.cpp  
echo "}"                                         >> install.cpp
gcc install.cpp -o install
./install
rm install.cpp install
