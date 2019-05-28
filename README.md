# FFMPEG builder

This repository builds binary artifacts for the FFMPEG project.
This repository has a default .travis.yml file that can be used to build
binary artifacts on Travis CI. You will however need to setup the release
upload manually. See https://docs.travis-ci.com/user/deployment/releases/.

If you don't wish to use travis, you can use the build_tarballs.jl
file manually and upload the resulting artifacts to a hosting provider
of your choice.

## Dependency status
| Dep | Windows(:i686) | Windows(:x86_64) | Linux(:i686, :glibc) | Linux(:x86_64, :glibc) | Linux(:aarch64, :glibc) | Linux(:armv7l, :glibc) | Linux(:powerpc64le, :glibc) | Linux(:i686, :musl) | Linux(:x86_64, :musl) | Linux(:aarch64, :musl) | Linux(:armv7l, :musl) | FreeBSD(:x86_64) | MacOS(:x86_64) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [LibassBuilder](https://github.com/JuliaIO/LibassBuilder) | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 |
| [FDKBuilder](https://github.com/SimonDanisch/FDKBuilder) | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 | v0.1.6 |
| [FribidiBuilder](https://github.com/SimonDanisch/FribidiBuilder) | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 | v0.14.0 |
| [FreeTypeBuilder](https://github.com/JuliaGraphics/FreeTypeBuilder) | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 | v2.9.0-0 |
| [LAMEBuilder](https://github.com/SimonDanisch/LAMEBuilder) | x | x | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | v3.100.0 | x |
| [LibVorbisBuilder](https://github.com/JuliaIO/LibVorbisBuilder) | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | v1.3.6 | x | x | v1.3.6 | v1.3.6 |
| [OggBuilder](https://github.com/staticfloat/OggBuilder) | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 | v1.3.3 |
| [LibVPXBuilder](https://github.com/jpsamaroo/LibVPXBuilder) | x | x | x | v5.0.0 | x | x | x | x | x | x | x | x | x |
| [x264Builder](https://github.com/ianshmean/x264Builder) | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 | v2019.5.25 |
| [x265Builder](https://github.com/jpsamaroo/x265Builder) | x | x | x | x | x | x | x | x | x | x | x | x | x |
