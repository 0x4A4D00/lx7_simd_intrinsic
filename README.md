## Overview
Simple implementation of SIMD intrinsic functions for the ESP32S3 microcontroller with lx7 architecture.

## Features
- Vector Addition
  - 8-bit vector addition of two arrays with 16 values.
  - 16-bit vector addition of two arrays with 8 values.
  - 32-bit vector addition of two arrays with 4 values.
- Vector Subtraction
  - 8-bit vector subtraction of two arrays with 16 values.
  - 16-bit vector subtraction of two arrays with 8 values.
  - 32-bit vector subtraction of two arrays with 4 values.
- Vector Multiplication
  - 8-bit vector multiplication of two arrays with 16 values.
  - 16-bit vector multiplication of two arrays with 8 values.

## Depnedencies
**Nothing.**

## Usage
Just clone this repository, extract files in your arduino project directory and include "simd.h" in you arduino code. 

## Credits
- https://www.espressif.com/sites/default/files/documentation/esp32-s3_technical_reference_manual_en.pdf
- https://github.com/troyhacks/ESP32-S3_minimal_SIMD_example

## License
This implementation is released under the MIT license. See [LICENSE](https://github.com/0x4A4D00/lx7_simd_intrinsic/blob/main/LICENSE "LICENSE") file for details.
