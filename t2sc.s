/*  CSC 2110, Computer Organization 
 *  Tutorial 2: Labels & Branch Instructions
 *  by William H. Hooper

 *  extern "C" void exponent(int a, int b);
 *  This function raises a to the b power,
 *  returning a^b.  If b < 0, it returns
 *  zero.
 */
  .text
  .align  2
  .global exponent
  .type   exponent,function
  
exponent:
  cmp x1, #0
  b.lt zero

  mov x2, #1
  b.eq return

loop: 
  subs  x1, x1, #1
  mul x2, x0, x2
  b.gt loop
  
return:
  mov x0, x2
  ret

zero:
  mov x0, #0
  ret

  .size  exponent, . - exponent
  .ident  "CSC 2110, Tutorial 2 "
  .ident  "William H. Hooper"
