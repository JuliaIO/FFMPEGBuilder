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
# TODO: Theora and Opus once their releases are available
script = raw"""
cd $WORKSPACE/srcdir
cd ffmpeg-4.1/
sed -i 's/-lflite"/-lflite -lasound"/' configure
apk add coreutils
./configure            \
  --prefix=$prefix     \
  --enable-gpl         \
  --enable-version3    \
  --enable-nonfree     \
  --disable-static     \
  --enable-shared      \
  --disable-debug      \
  --enable-avresample  \
  --enable-libass      \
  --enable-libfdk-aac  \
  --enable-libfreetype \
  --enable-libmp3lame  \
  --enable-libvorbis   \
  --enable-libvpx      \
  --enable-libx264     \
  --enable-encoders    \
  --enable-decoders    \
  --enable-muxers      \
  --enable-demuxers    \
  --enable-parsers     \
  --extra-cflags="-I${prefix}/include" \
  --extra-ldflags="-L${prefix}/lib"
#--enable-libx265
make -j${nproc}
make install

"""
# For libx264rgb see discussion at https://stackoverflow.com/a/40409031/1364192

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
# TODO: Theora and Opus once their releases are available
dependencies = [
    "https://github.com/JuliaIO/LibassBuilder/releases/download/v0.14.0/build_libass.v0.14.0.jl",
    "https://github.com/SimonDanisch/FDKBuilder/releases/download/0.1.6/build_libfdk.v0.1.6.jl",
    "https://github.com/SimonDanisch/NASMBuilder/releases/download/2.13.3/build_nasm.v2.13.3.jl",
    "https://github.com/SimonDanisch/FribidiBuilder/releases/download/0.14.0/build_fribidi.v0.14.0.jl",
    "https://github.com/JuliaGraphics/FreeTypeBuilder/releases/download/v2.9.0-0/build.jl",
    "https://github.com/SimonDanisch/LAMEBuilder/releases/download/3.100.0/build_liblame.v3.100.0.jl",
    "https://github.com/JuliaIO/LibVorbisBuilder/releases/download/v1.3.6/build_libvorbis.v1.3.6.jl",
    "https://github.com/staticfloat/OggBuilder/releases/download/v1.3.3-7/build_Ogg.v1.3.3.jl",
    "https://github.com/jpsamaroo/LibVPXBuilder/releases/download/v5.0.0/build_LibVPX.v5.0.0.jl",
    "https://github.com/jpsamaroo/YasmBuilder/releases/download/v1.3.0-pre/build_YasmBuilder.v1.3.0.jl",
    "https://github.com/ianshmean/x264Builder/releases/download/v2019.5.25-noyasm/build_x264Builder.v2019.5.25-noyasm.jl",
    #"https://github.com/jpsamaroo/x265Builder/releases/download/v2.8-noyasm/build_x265Builder.v2.8.0.jl",
]

# Build the tarballs, and possibly a `build.jl` as well.
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies)
