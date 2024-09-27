
## ld.qr qu, as, imm => Loads 128-bit value from memory into qu register.
## ee.vadds.s8/16/32 qa, qx, qy => Performs a vector addition on 8/16/32-bit data of the two arrays together.
## ee.subs.s8/16/32 qa, qx, qy => Same as vadds but does subtraction.
## ee.mul.(u/s)8/16 qa, qx, qy => Performs an unsigned/signed vector multiplication on 8/16-bit data of the two arrays. Then performs a logical right shift by value of sar register on the result.


# Add Operation
.align 4
.global m8_add_p16
m8_add_p16:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vadds.s8   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 


.align 4
.global m16_add_p8
m16_add_p8:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vadds.s16   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

.global m32_add_p4
.align 4
m32_add_p4:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vadds.s32   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 


# Sub Operation
.align 4
.global m8_sub_p16
m8_sub_p16:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vsubs.s8   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

.align 4
.global m16_sub_p8
m16_sub_p8:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vsubs.s16   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

.align 4
.global m32_sub_p4
m32_sub_p4:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  ee.vsubs.s32   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n


# Signed Mul Operation
.align 4
.global m8_mul_p16
m8_mul_p16:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  movi a5, 0
  wsr.sar a5  
  ee.vmul.s8   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

.align 4
.global m16_mul_p8
m16_mul_p8:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  movi a5, 0
  wsr.sar a5  
  ee.vmul.s16   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 


# Unsigned Mul Operation
.align 4
.global m8_umul_p16
m8_umul_p16:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  movi a5, 0
  wsr.sar a5  
  ee.vmul.u8   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

.global m16_umul_p8
.align 4
m16_umul_p8:
  entry  a1,16 
  ld.qr  q1,a3,0 
  ld.qr  q0,a2,0
  movi a5, 0
  wsr.sar a5  
  ee.vmul.u16   q2,q0,q1
  st.qr  q2,a4,0   
  retw.n 

