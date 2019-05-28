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
apk add yasm
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
  --enable-libx265     \
  --enable-encoders    \
  --enable-decoders    \
  --enable-muxers      \
  --enable-demuxers    \
  --enable-parsers     \
  --extra-cflags="-I${prefix}/include" \
  --extra-ldflags="-L${prefix}/lib"

make -j${nproc}
make install

"""
# For libx264rgb see discussion at https://stackoverflow.com/a/40409031/1364192

# These are the platforms we will build for by default, unless further
# platforms are passed in on the command line
platforms = [
    # Windows
    Windows(:i686),
    Windows(:x86_64),

    # linux
    Linux(:i686, :glibc),
    Linux(:x86_64, :glibc),
    Linux(:aarch64, :glibc),
    Linux(:armv7l, :glibc),
    Linux(:powerpc64le, :glibc),

    # musl
    Linux(:i686, :musl),
    Linux(:x86_64, :musl),
    Linux(:aarch64, :musl),
    Linux(:armv7l, :musl),

    # The BSD's
    FreeBSD(:x86_64),
    MacOS(:x86_64),
]

# The products that we will ensure are always built
products(prefix) = [
    LibraryProduct(prefix, "libavformat", :libavformat),
    LibraryProduct(prefix, "libavcodec", :libavcodec),
    LibraryProduct(prefix, "libavutil", :libavutil),
    LibraryProduct(prefix, "libpostproc", :libpostproc),
    LibraryProduct(prefix, "libswresample", :libswresample),
    LibraryProduct(prefix, "libavdevice", :libavdevice),
    LibraryProduct(prefix, "libavresample", :libavresample),
    LibraryProduct(prefix, "libavfilter", :libavfilter),
    LibraryProduct(prefix, "libswscale", :libswscale)
]

# Dependencies that must be installed before this package can be built
# TODO: Theora and Opus once their releases are available
dependencies = [
    "https://github.com/JuliaIO/LibassBuilder/releases/download/v0.14.0/build_libass.v0.14.0.jl",
    "https://github.com/SimonDanisch/FDKBuilder/releases/download/0.1.6/build_libfdk.v0.1.6.jl",
    "https://github.com/SimonDanisch/NASMBuilder/releases/download/2.13.3/build_nasm.v2.13.3.jl",
    "https://github.com/SimonDanisch/FribidiBuilder/releases/download/0.14.0/build_fribidi.v0.14.0.jl",
    "https://github.com/JuliaGraphics/FreeTypeBuilder/releases/download/v2.9.0-0/build.jl",
    "https://github.com/JuliaIO/LAMEBuilder/releases/download/v3.100.0-2/build_liblame.v3.100.0.jl",
    "https://github.com/JuliaIO/LibVorbisBuilder/releases/download/v1.3.6/build_libvorbis.v1.3.6.jl",
    "https://github.com/JuliaIO/OggBuilder/releases/download/v1.3.3-7/build_Ogg.v1.3.3.jl",
    "https://github.com/JuliaIO/LibVPXBuilder/releases/download/v5.0.0/build_LibVPX.v5.0.0.jl",
    "https://github.com/JuliaIO/x264Builder/releases/download/v2019.5.25/build_x264Builder.v2019.5.25.jl",
    "https://github.com/JuliaIO/x265Builder/releases/download/v3.0/build_x265Builder.v3.0.0.jl",
]

# Build the tarballs, and possibly a `build.jl` as well.
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies)
