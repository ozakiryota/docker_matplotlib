#!/bin/bash

xhost +

image="matplotlib"
tag="latest"

docker run -it --rm \
	-e "DISPLAY" \
	-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	$image:$tag \
	bash -c " \
		echo -e 'import matplotlib.pyplot as plt \n\
import numpy as np \n\
x = np.arange(10) \n\
y = np.random.randn(10) \n\
plt.plot(x, y) \n\
plt.show()' > test.py ; \
		cat test.py ; \
		python3 test.py"