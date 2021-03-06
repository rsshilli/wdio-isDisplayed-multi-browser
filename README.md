To reproduce:
1. Run it normally, and you'll see it will pass (at least on Windows):
```shell
npm install
npm run wdio
```

2. Now let's build in a docker container and see it fail. Build the docker image:
```shell
docker build -t mydockerimage .
```

3. Start the docker container:
```shell
docker run -v $(pwd):/root/project -it mydockerimage bash
```

For me on Windows, I've checked this out to `C:\projects\wdio-isDisplayed-multi-browser` so I ran:

```shell
docker run -v "c:/projects/wdio-isDisplayed-multi-browser:/root/project" -it mydockerimage bash
```


4. Now setup xvfb so there's a virtual X-window system from Chrome to run in:
```shell
xvfb-run --auto-servernum --server-args='-screen 0 1080x1080x24' /bin/bash
```

5. Now re-download the npm binaries so you have the Linux version.
```shell
cd /root/project
rm -rf node_modules/
npm install
```

6. Run it:
```shell
npm run wdio
```

The failure should look like:

![Image Of Webdriver.io failing](https://github.com/rsshilli/wdio-isDisplayed-multi-browser/blob/main/imageOfFailure.png?raw=true)

