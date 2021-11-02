# Docker for Cordova 10.x

Docker for Cordova 10.x with preinstalled build tools

**Build for android platform in `debug` mode and use the specified build configuration:**

```bash
docker run -it --rm -v `pwd`:/srv/app cordova:latest npx cordova build android --debug --buildConfig=..\myBuildConfig.json
```
