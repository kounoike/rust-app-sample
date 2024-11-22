#!/bin/bash

OS=$1
ARCH=$2
case $OS in
    linux)
        case $ARCH in
            amd64)
                TARGET=x86_64-unknown-linux-gnu
                ;;
            arm64)
                TARGET=aarch64-unknown-linux-gnu
                ;;
            *)
                echo "Unsupported ARCH: $ARCH"
                exit 1
                ;;
        esac
        ;;
    *)
        echo "Unsupported OS: $OS"
        exit 1
        ;;
esac
OUTPUT_PATH=$3

cross build --release --target "${TARGET}"
cp target/${TARGET}/release/rust-app-sample ${OUTPUT_PATH}
