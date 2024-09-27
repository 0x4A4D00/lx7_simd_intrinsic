## Overview
SIMD (Single Instruction, Multiple Data) intrinsic functions are a type of instruction that allows for simultaneous processing of multiple data elements. This means that a single operation can be applied to multiple values at the same time, improving performance and reducing execution time.

In this implementation, SIMD intrinsic functions have been made available for use on the ESP32S3 microcontroller with lx7 architecture. The goal is to provide a simple way to take advantage of these instructions.

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

## Dependencies
**Nothing.**

## Usage
Just clone this repository, extract files in your arduino project directory and include "simd.h" in you arduino code. 

### Example
```cpp
#include "simd.h"

int16_t __attribute__((aligned (16))) a[8] = {1,2,3,4,5,6,7,8};
int16_t __attribute__((aligned (16))) b[8] = {8,7,6,5,4,3,2,1};
int16_t __attribute__((aligned (16))) c[8]{0};

void 
setup() 
{
  Serial.begin(115200);
}

void 
loop()
{
  m16_add_p8(a, b, c);
  Serial.println("Result:");
  for (int i = 0; i < 8; i++) 
  {  
    Serial.printf("%3d + %d = %d\n", a[i]++, b[i]++, c[i]);
  }

  delay(1000);
}

```

## Contributions
Pull requests are wellcome, Thanks.🤝

## Credits
- https://www.espressif.com/sites/default/files/documentation/esp32-s3_technical_reference_manual_en.pdf
- https://github.com/troyhacks/ESP32-S3_minimal_SIMD_example

## License
This implementation is released under the MIT license. See [LICENSE](https://github.com/0x4A4D00/lx7_simd_intrinsic/blob/main/LICENSE "LICENSE") file for details.
