@if "%_echo%"=="" echo off
REM start buildroot container and run cmd within it
setlocal

mkdir "%CD%\dl" 2> NUL
mkdir "%CD%\output" 2> NUL
docker run --rm -it -v %CD%\dl:/root/buildroot/dl -v %CD%\output:/buildroot_output davidjenni2/buildroot %*
