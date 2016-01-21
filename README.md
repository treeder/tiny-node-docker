This is an example for how to build a teeny, tiny Docker image for your
Node programs.

This example is an web server that prints Hello World and ends up in a **4.7MB** Docker image.

[![](https://badge-imagelayers.iron.io/treeder/static-go:latest.svg)](https://imagelayers.iron.io/?images=treeder/static-go:latest 'Get your own badge on imagelayers.io')

## 1. Get dependencies

We only have one dependency, so let's get it and vendor it:

```sh
docker run --rm -v "$PWD":/app -w /app iron/node:dev npm install
```

## 2. Test it locally

```sh
docker run --rm -it -p 8080:8080 -v "$PWD":/app -w /app iron/node npm start
```

Check localhost:8080 to ensure it's running.

## 3. Build image

```sh
docker build -t treeder/tiny-node:latest .
```

## 4. Test the image

Now that we built the image, let's run it.

```sh
docker run --rm -it -p 8080:8080 treeder/tiny-node
```

Surf to: http://localhost:8080/

Boom.

## Fat version

To build the fat version, change all the iron/node bits to node:argon.
