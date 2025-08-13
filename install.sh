#!/bin/bash
echo "// install.cpp 2025-08-13 10:14 dwg - "       > program.cpp
echo "#include <stdio.h>"                          >> program.cpp
echo "int main() {"                                >> program.cpp
echo "  printf(\"%s\n\",__PRETTY_FUNCTION__);"     >> program.cpp  
echo "}"                                           >> program.cpp
gcc program.cpp -o program
./program
