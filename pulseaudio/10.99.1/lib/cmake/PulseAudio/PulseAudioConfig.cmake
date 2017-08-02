set(PULSEAUDIO_FOUND TRUE)

set(PULSEAUDIO_VERSION_MAJOR 10)
set(PULSEAUDIO_VERSION_MINOR 99)
set(PULSEAUDIO_VERSION 10.99)
set(PULSEAUDIO_VERSION_STRING "10.99")

find_path(PULSEAUDIO_INCLUDE_DIR pulse/pulseaudio.h HINTS "/home/linuxbrew/.linuxbrew/Cellar/pulseaudio/10.99.1/include")
find_library(PULSEAUDIO_LIBRARY NAMES pulse libpulse HINTS "/home/linuxbrew/.linuxbrew/Cellar/pulseaudio/10.99.1/lib")
