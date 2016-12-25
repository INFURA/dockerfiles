## SWARM

### Requirements

#### "Just clone the repo and build"

* `docker`

#### "I got a fork I want to package into an image"

* `docker`
* Go language
* Have `$GOPATH` defined
* Have your cloned repo in the right path (i.e. `$GOPATH/src/github.com/ethereum`)

### Building the image

Run in this directory the file

```
./build-image.sh
```

Will invoke `docker build` and package your swarm image into an alpine container.

If you need to package from a fork, take a look at the code of the `Dockerfile`.
You need to comment / uncomment a couple of lines to accomplish that goal.

### Running the image

Just

```
docker run -ti --tm infura/swarm <options>
```

Tricky part is figuring out the options. Please refer to [the official swarm guide](http://swarm-guide.readthedocs.io/en/latest/runninganode.html).

Now, to run a gateway of swarm backed by a geth node, use this script

```
./gateway.sh
```

### Testing your image

(TODO) 
