@echo off

set MATHPRESSO_CURRENT_DIR=%CD%
set MATHPRESSO_BUILD_DIR="build_mingw_rel"
set MATHPRESSO_ASMJIT_DIR="../asmjit"

mkdir ..\%MATHPRESSO_BUILD_DIR%
cd ..\%MATHPRESSO_BUILD_DIR%
cmake .. -G"MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DASMJIT_DIR="%MATHPRESSO_ASMJIT_DIR%" -DMATHPRESSO_BUILD_TEST=1
cd %MATHPRESSO_CURRENT_DIR%
