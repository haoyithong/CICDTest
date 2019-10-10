#!/bin/sh
if [ -r Podfile ] ; then
  sudo gem install cocoapods
  pod install
fi