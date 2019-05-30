# FFMPEG builder

This repository builds binary artifacts for the FFMPEG project.
This repository has a default .travis.yml file that can be used to build
binary artifacts on Travis CI. You will however need to setup the release
upload manually. See https://docs.travis-ci.com/user/deployment/releases/.

If you don't wish to use travis, you can use the build_tarballs.jl
file manually and upload the resulting artifacts to a hosting provider
of your choice.

## Dependency status
| Platform | [Libass](https://github.com/JuliaIO/LibassBuilder) [v0.14.0](https://github.com/JuliaIO/LibassBuilder/releases/tag/v0.14.0-2) | [FDK](https://github.com/SimonDanisch/FDKBuilder) [v0.1.6](https://github.com/SimonDanisch/FDKBuilder/releases/tag/0.1.6) | [Fribidi](https://github.com/SimonDanisch/FribidiBuilder) [v0.14.0](https://github.com/SimonDanisch/FribidiBuilder/releases/tag/0.14.0) | [FreeType](https://github.com/JuliaGraphics/FreeTypeBuilder) [v2.10.0](https://github.com/JuliaGraphics/FreeTypeBuilder/releases/tag/v2.9.1-4) | [LAME](https://github.com/SimonDanisch/LAMEBuilder) [v1.300.0](https://github.com/JuliaIO/LAMEBuilder/releases/tag/v3.100.0-2) | [LibVorbis](https://github.com/JuliaIO/LibVorbisBuilder) [v1.3.6](https://github.com/JuliaIO/LibVorbisBuilder/releases/tag/v1.3.6-2) | [Ogg](https://github.com/JuliaIO/OggBuilder) [v1.3.3](https://github.com/JuliaIO/OggBuilder/releases/tag/v1.3.3-7)  | [LibVPX](https://github.com/JuliaIO/LibVPXBuilder) [v1.8.0](https://github.com/JuliaIO/LibVPXBuilder/releases/tag/v1.8.0) | [x264](https://github.com/JuliaIO/x264Builder) [v2019.5.25](https://github.com/JuliaIO/x264Builder/releases/tag/v2019.5.25) | [x265](https://github.com/JuliaIO/x265Builder) [v3.0.0](https://github.com/JuliaIO/x265Builder/releases/tag/v3.0.0-static) | [Bzip](https://github.com/JuliaPackaging/Yggdrasil/tree/master/Bzip2) [v1.0.6](https://github.com/JuliaPackaging/Yggdrasil/releases/tag/Bzip2-v1.0.6-0) | [Zlib](https://github.com/ianshmean/ZlibBuilder) [v1.2.11](https://github.com/ianshmean/ZlibBuilder/releases/tag/v1.2.11) |
|-----------------------------|-----------------------------------------------------------|----------------------------------------------------------|------------------------------------------------------------------|---------------------------------------------------------------------|------------------------------------------------------------|-----------------------------------------------------------------|---------------------------------------------------------|-------------------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------|
| Windows(:i686) | x | x | x | x | x | x | x | x | x | x | x | x |
| Windows(:x86_64) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:i686, :glibc) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:x86_64, :glibc) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:aarch64, :glibc) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:armv7l, :glibc) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:powerpc64le, :glibc) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:i686, :musl) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:x86_64, :musl) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:aarch64, :musl) | x | x | x | x | x | x | x | x | x | x | x | x |
| Linux(:armv7l, :musl) | x | x | x | x | x | x | x | x | x | x | x | x |
| FreeBSD(:x86_64) | x | x | x | x | x | x | x | x | x | x | x | x |
| MacOS(:x86_64) | x | x | x | x | x | x | x | x | x | x | x | x |
