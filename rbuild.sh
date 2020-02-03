#!/bin/bash

IMAGE=singularity-genometools.simg
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

singularity build --remote $IMAGE library://icaoberg/default/genometools
