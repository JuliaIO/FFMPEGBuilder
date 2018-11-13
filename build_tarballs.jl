# Note that this script can accept some limited command-line arguments, run
# `julia build_tarballs.jl --help` to see a usage message.
using BinaryBuilder

name = "FFMPEG"
version = v"4.1.0"

# Collection of sources required to build FFMPEG
sources = [
    "https://ffmpeg.org/releases/ffmpeg-4.1.tar.bz2" =>
    "b684fb43244a5c4caae652af9022ed5d85ce15210835bce054a33fb26033a1a5",

]

# Bash recipe for building across all platforms
script = raw"""
cd $WORKSPACE/srcdir
cd ffmpeg-4.1/
sed -i 's/-lflite"/-lflite -lasound"/' configure
apk add coreutils
./configure --prefix=$prefix --enable-gpl --enable-version3 --enable-nonfree --disable-static --enable-shared --disable-debug --enable-avresample --disable-x86asm
make -j${nproc}
$CC tools/qt-faststart.c -o tools/qt-faststart
make install
install -v -m755 tools/qt-faststart $prefix/bin

"""

# These are the platforms we will build for by default, unless further
# platforms are passed in on the command line
platforms = [
    Linux(:x86_64, libc=:glibc)
]

# The products that we will ensure are always built
products(prefix) = [
    LibraryProduct(prefix, "libavformat", Symbol("")),
    LibraryProduct(prefix, "libavcodec", Symbol("")),
    LibraryProduct(prefix, "libavutil", Symbol("")),
    LibraryProduct(prefix, "libpostproc", Symbol("")),
    LibraryProduct(prefix, "libswresample", Symbol("")),
    LibraryProduct(prefix, "libavdevice", Symbol("")),
    LibraryProduct(prefix, "libavresample", Symbol("")),
    LibraryProduct(prefix, "libavfilter", Symbol("")),
    LibraryProduct(prefix, "libswscale", Symbol(""))
]

# Dependencies that must be installed before this package can be built
dependencies = [
    
]

# Build the tarballs, and possibly a `build.jl` as well.
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies)

