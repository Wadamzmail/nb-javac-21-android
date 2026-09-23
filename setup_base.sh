#!/bin/bash

set -e

export ant_dir=./make/langtools/netbeans/nb-javac

# Build nb-javac-android
JDK_8="/usr/lib/jvm/java-21-openjdk"

if [[ ! -z "$CI" ]]; then
  JDK_8=$JAVA_8
  echo "langtools.jdk.home=${JAVA_HOME}" >> make/langtools/build.properties
fi