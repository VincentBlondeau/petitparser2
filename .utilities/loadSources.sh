#!/usr/bin/env sh

echo -en 'travis_fold:start:SOURCES\\r'
wget http://scg.unibe.ch/download/jk/sources/smalltalk-src-all.zip
mkdir ${TRAVIS_BUILD_DIR}/smalltalk-src
unzip -qo smalltalk-src-all.zip -d ${TRAVIS_BUILD_DIR}/smalltalk-src/
echo -en 'travis_fold:start:SOURCES\\r'
