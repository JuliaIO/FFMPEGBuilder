# FFMPEG builder

This repository builds binary artifacts for the FFMPEG project.
This repository has a default .travis.yml file that can be used to build
binary artifacts on Travis CI. You will however need to setup the release
upload manually. See https://docs.travis-ci.com/user/deployment/releases/.

If you don't wish to use travis, you can use the build_tarballs.jl
file manually and upload the resulting artifacts to a hosting provider
of your choice.

## Dependency status
| Platform | [LibassBuilder](https://github.com/JuliaIO/LibassBuilder) | [FDKBuilder](https://github.com/SimonDanisch/FDKBuilder) | [FribidiBuilder](https://github.com/SimonDanisch/FribidiBuilder) | [FreeTypeBuilder](https://github.com/JuliaGraphics/FreeTypeBuilder) | [LAMEBuilder](https://github.com/SimonDanisch/LAMEBuilder) | [LibVorbisBuilder](https://github.com/JuliaIO/LibVorbisBuilder) | [OggBuilder](https://github.com/staticfloat/OggBuilder) | [LibVPXBuilder](https://github.com/jpsamaroo/LibVPXBuilder) | [x264Builder](https://github.com/ianshmean/x264Builder) | [x265Builder](https://github.com/jpsamaroo/x265Builder) |
|-----------------------------|-----------------------------------------------------------|----------------------------------------------------------|------------------------------------------------------------------|---------------------------------------------------------------------|------------------------------------------------------------|-----------------------------------------------------------------|---------------------------------------------------------|-------------------------------------------------------------|---------------------------------------------------------|---------------------------------------------------------|
| Windows(:i686) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Windows(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:i686, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:x86_64, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | v5.0.0 | v2019.5.25 | x |
| Linux(:aarch64, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:armv7l, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:powerpc64le, :glibc) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:i686, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:x86_64, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| Linux(:aarch64, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | not supported | v1.3.3 | x | v2019.5.25 | x |
| Linux(:armv7l, :musl) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | not supported | v1.3.3 | x | v2019.5.25 | x |
| FreeBSD(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | v3.100.0 | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
| MacOS(:x86_64) | v0.14.0 | v0.1.6 | v0.14.0 | v2.9.0-0 | [PR](https://github.com/SimonDanisch/LAMEBuilder/pull/1) | v1.3.6 | v1.3.3 | x | v2019.5.25 | x |
