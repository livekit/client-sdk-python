#!/bin/bash

FFI_PROTOCOL=./client-sdk-rust/livekit-ffi/protocol
OUT_PYTHON=./livekit/_proto

protoc \
    -I=$FFI_PROTOCOL \
    --python_out=$OUT_PYTHON \
    --pyi_out=$OUT_PYTHON \
    $FFI_PROTOCOL/audio_frame.proto \
    $FFI_PROTOCOL/ffi.proto \
    $FFI_PROTOCOL/handle.proto \
    $FFI_PROTOCOL/participant.proto \
    $FFI_PROTOCOL/room.proto \
    $FFI_PROTOCOL/track.proto \
    $FFI_PROTOCOL/video_frame.proto