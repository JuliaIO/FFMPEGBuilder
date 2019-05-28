# FFMPEG builder

This repository builds binary artifacts for the FFMPEG project.
This repository has a default .travis.yml file that can be used to build
binary artifacts on Travis CI. You will however need to setup the release
upload manually. See https://docs.travis-ci.com/user/deployment/releases/.

If you don't wish to use travis, you can use the build_tarballs.jl
file manually and upload the resulting artifacts to a hosting provider
of your choice.

## Dependency status
| Platform | [Libass](https://github.com/JuliaIO/LibassBuilder) | [FDK](https://github.com/SimonDanisch/FDKBuilder) | [Fribidi](https://github.com/SimonDanisch/FribidiBuilder) | [FreeType](https://github.com/JuliaGraphics/FreeTypeBuilder) | [LAME](https://github.com/SimonDanisch/LAMEBuilder) | [LibVorbis](https://github.com/JuliaIO/LibVorbisBuilder) | [Ogg](https://github.com/staticfloat/OggBuilder) | [LibVPX](https://github.com/jpsamaroo/LibVPXBuilder) | [x264](https://github.com/ianshmean/x264Builder) | [x265](https://github.com/jpsamaroo/x265Builder) |
|-----------------------------|-----------------------------------------------------------|----------------------------------------------------------|------------------------------------------------------------------|---------------------------------------------------------------------|------------------------------------------------------------|-----------------------------------------------------------------|---------------------------------------------------------|-------------------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------|
| Windows(:i686) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Windows(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:i686, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:x86_64, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | v5.0.0 | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:aarch64, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | x |
| Linux(:armv7l, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | x |
| Linux(:powerpc64le, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:i686, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:x86_64, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| Linux(:aarch64, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | not supported | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | x |
| Linux(:armv7l, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | not supported | v1.3.3 | [PR](https://github.com/JuliaIO/LibVPXBuilder/pull/1) | v2019.5.25 | x |
| FreeBSD(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
| MacOS(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | x | v2019.5.25 | [PR](https://github.com/ianshmean/x265Builder/pull/1) |
