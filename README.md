# Theia with some tools

A Docker image with Theia web IDE and a lot of useful tools.

This image contains :
- Theia.
- Oh-my-ZSH.
- Docker.
- Docker-compose.
- [Jabba](https://github.com/shyiko/jabba) as Java version manager.
- [NVM](https://github.com/nvm-sh/nvm) as NodeJS version manager.
- [Yarn](https://github.com/yarnpkg/yarn) as NodeJS dependency manager.
- Some tools like Git, Subversion, Nano, ...

## Usage
### Try it !
Image contains a tiny NodeJS project to show how it's cool. ✌️
```bash
docker run --rm -ti --privileged -p 8500:8500 -p 3000:3000 jaouan/theia-fullstack
```
Then visit http://localhost:8500/#/root/workspace/demo !
Depend to your Docker installation, you may encounter Docker overlay error on startup. Add `-e DOCKER_EXTRA_OPTS=""` option in the Docker run command.

### Mounting workspace
```bash
docker run --rm -ti --privileged -p 8500:8500 -p 3000:3000 -v /my/workspace:/root/workspace jaouan/theia-fullstack
```
