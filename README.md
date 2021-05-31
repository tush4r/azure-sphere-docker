# Azure Sphere Docker
Azure Sphere Docker creates a container to authenticate, compile code targetted for Azure Sphere MCU. More details on [Error.How](https://error.how)

## Features

- Installs SDK, necessary utilities non-interactive mode to compile, build Azure Sphere image packages.
- Hosts a clone of sample code from AzureSphere Github.

## Installation

```sh
cd <path_to_dockerfile_directory>
docker build .
```
Or pull the docker image: 

```
docker pull tush4r1/azuresphere_ubuntu
```

## License

MIT


*“First, solve the problem. Then, write the code.” – John Johnson* 👨‍💻 ✌️❤️
