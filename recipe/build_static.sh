#!/bin/bash

# Check the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    make
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    make -f makefile_mac
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

# Install the built application
mkdir -p $PREFIX/bin
cp ./bin/* $PREFIX/bin/
