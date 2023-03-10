# Purpur Minecraft Server

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)

## About <a name = "about"></a>

This repo creates a basic purpur minecraft server with some basic plugins and configuration files.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

Java is needed to run the server. Wget is needed to download the server files. Optional but useful is the build tool <a href="https://www.gnu.org/software/make/">make</a>.

```sh
git clone https://github.com/Mozart409/mozart409-purpur.git
```

## Usage <a name = "usage"></a>

To download the server files

```sh
make server
```

To start the server run

```sh
server/server.sh
```

To clear the server folder and all files run

```sh
make rimraf
```

Have fun!
