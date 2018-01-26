This repository contains a Dockerfile to build a docker container that runs [Bikeshed].

## Usage

    $ docker run --rm -i -t -v $PWD:/data surma/bikeshed <arguments for bikeshed>

## Example

    $ docker run --rm -i -t -v $PWD:/data surma/bikeshed spec index.bs index.postbs.html

[Bikeshed]: https://github.com/tabatkins/bikeshed
