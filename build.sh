#!/bin/bash

image="matplotlib"
tag="latest"

docker build -t $image:$tag .