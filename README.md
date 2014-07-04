# Contents
- [Introduction](#introduction)
    - [Version](#version)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Configuration](#configuration)
    - [Data Store](#data-store)
- [Thanks](#thanks)

# Introduction
Dockerfile to build image with elliptics.

For now this image is just a part of basic cocaine cloud installation.

## Version
Current Version: 2.25.4.20

# Installation

Pull the latest or specific version of the image from the docker index.
This is the recommended method of installation as it is easier to update image
in the future.
These builds are performed by the **Docker Trusted Build** service.

```bash
docker pull burkostya/elliptics:2.25.4.20
```

Alternately you can build the image yourself.

```bash
git clone https://github.com/burkostya/docker-elliptics.git
cd docker-elliptics
docker build -t '<user>/elliptics'
```

# Quick Start
Run container

```bash
docker run --name=elliptics -i -t --rm \
  -p 1025:1025 \
  burkostya/elliptics:2.25.4.20
```

# Configuration

## Data Store
For data persistency you should mount a volume

```
/opt/elliptics
```

Volumes can be mounted in docker by specifying the **'-v'**
option in the docker run command.

```bash
mkdir /opt/data/elliptics
docker run --name=elliptics -d \
  -p 1025 \
  -v /opt/data/elliptics:/opt/elliptics \
  burkostya/elliptics:2.25.4.20
```

- Start the image

```bash
docker run --name=elliptics -d \
  -p 1025:1025 \
  -v /opt/data/elliptics:/opt/elliptics \
  burkostya/elliptics:2.25.4.20
```

# Thanks

* @sameersbn for awesome template of container configuration
