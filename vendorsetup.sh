#!/bin/bash

pclang=prebuilts/clang/host/linux-x86/proton-clang

if [ ! -d $pclang ]; then
echo "proton clang is empty! cloning.."
git clone https://github.com/kdrag0n/proton-clang $pclang
else
echo "proton clang exist, skipping.."
fi
