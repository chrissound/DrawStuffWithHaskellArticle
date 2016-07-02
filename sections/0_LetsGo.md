#Drawing stuff with Haskell

## Lets go!

Create the necessary cabal files. You could copy the below file or run through `cabal init`.

{{git img.cabal}}

## Running the code

You'll need GHC installed or you can go the docker route!

For docker:

Simply use this dockerfile:
**Dockerfile**
```
FROM haskell:8.0.1

WORKDIR /opt/server

RUN cabal update
RUN apt-get -y update
RUN apt-get -y install freeglut3-dev

COPY ./img.cabal /opt/server/img.cabal

RUN cabal sandbox init
RUN cabal install --only-dependencies -j4

COPY . /opt/server
RUN cabal sandbox init
RUN cabal install

CMD cabal run
```

Allow x client to connect from anywhere and build it:
```
xhost +
docker build -t drawstuff .
```

And now anytime you want to run the example:
```
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro drawstuff
```

