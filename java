#!/bin/sh
DIR="$(cd "$(dirname "$0")" && pwd)"
$JAVA_HOME/bin/java -agentpath:$DIR/libagent.so $@