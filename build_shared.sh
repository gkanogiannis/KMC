#!/bin/bash

# Check the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    make -f makefile_shared
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Install the built application
mkdir -p $PREFIX/bin
cp ./bin/* $PREFIX/bin/
