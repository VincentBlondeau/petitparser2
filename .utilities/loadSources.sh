#!/usr/bin/env sh
wget http://scg.unibe.ch/download/jk/sources/smalltalk-src-all.zip
mkdir ${TRAVIS_BUILD_DIR}/smalltalk-src
unzip smalltalk-src-all.zip -d ${TRAVIS_BUILD_DIR}/smalltalk-src/
