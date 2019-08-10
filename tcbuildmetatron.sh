#!/bin/bash

docker volume create --name maven-repo-metatron-discovery

docker run -it --rm --name pk_build_metatron_discovery -v maven-repo-metatron-discovery:/root/.m2 -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.6.1-jdk-8 mvn -s /root/.m2/settings.xml -P extensions-all clean install -DskipTests


