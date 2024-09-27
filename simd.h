/*
 *  Part of SIMD functions implementation of lx7 architecture for ESP32S3.
 *  Author: 0x4A4D
 */

extern "C" {
/* Add Packed 8-bit Values (16)  
 * EE.VADDS.S8  Q3, Q1, Q2
 */   
  int8_t* m8_add_p16(int8_t *A, int8_t *B, int8_t *C);

/* Add Packed 16-bit Values (8)  
 * EE.VADDS.S16  Q3, Q1, Q2
 */ 
  int16_t* m16_add_p8(int16_t *A, int16_t *B, int16_t *C);

/* Add Packed 32-bit Values (4)  
 * EE.VADDS.S32  Q3, Q1, Q2
 */ 
  int32_t* m32_add_p4(int32_t *A, int32_t *B, int32_t *C);




/* Subtraction of two Packed Arrays with 8-bit Values (16)  
 * EE.VSUBS.S8  Q3, Q1, Q2
 */   
  int8_t* m8_sub_p16(int8_t *A, int8_t *B, int8_t *C);

/* Add Packed 16-bit Values (8)  
 * EE.VSUBS.S16  Q3, Q1, Q2
 */ 
  int16_t* m16_sub_p8(int16_t *A, int16_t *B, int16_t *C);

/* Add Packed 32-bit Values (4)  
 * EE.VSUBS.S32  Q3, Q1, Q2
 */ 
  int32_t* m32_sub_p4(int32_t *A, int32_t *B, int32_t *C);




/* Signed multiplication of two Packed Arrays with 8-bit Values (16)  
 * EE.VMUL.S8  Q3, Q1, Q2
 */   
  int16_t* m8_mul_p16(int8_t *A, int8_t *B, int8_t *C);

/* Signed multiplication of two Packed Arrays with 16-bit Values (8)  
 * EE.VMUL.S16  Q3, Q1, Q2
 */ 
  int32_t* m16_mul_p8(int16_t *A, int16_t *B, int16_t *C);




/* Unsigned multiplication of two Packed Arrays with 8-bit Values (16)  
 * EE.VMUL.U8  Q3, Q1, Q2
 */   
  int16_t* m8_umul_p16(int8_t *A, int8_t *B, int8_t *C);

/* Unsigned multiplication of two Packed Arrays with 16-bit Values (8)  
 * EE.VMUL.U16  Q3, Q1, Q2
 */ 
  int32_t* m16_umul_p8(int16_t *A, int16_t *B, int16_t *C);

}

