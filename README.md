To reproduce:
1. Run it normally and you'll see it will pass:
```
npm run wdio
```

2. Now do it in a docker container and see it fail:
```
docker run -it timbru31/node-alpine-git:fermium sh
```
