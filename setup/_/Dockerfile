ARG VERSION=melodic-ros-core-stretch
FROM ros

RUN apt-get update && apt-get install -y \
    python-catkin-tools \
    && rm -rf /var/lib/apt/lists/*

COPY setup_car.sh .
RUN ./setup_car.sh
CMD bash