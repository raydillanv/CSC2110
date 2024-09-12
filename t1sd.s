/* CSC 2110, Computer Organization
 * Tutorial 1: Introduction to Assembly
 * by William H. Hooper
 *
 *  extern "C" int remain(int n, int d);
 * This function takes temperature f in
 * degrees Fahrenheit and returns the
 * equivalent degrees Centigrade
 */
.text
    .align 4
    .global remain
    .type remain,
    % function

            remain : sdiv x2,
    x0, x1 mul x3, x2, x1 sub x0, x0, x3 ret

                                          .size remain,
    .- remain.ident "GCC: (SUSE Linux) 4.8.5".ident "William H. Hooper, CSC 1110, t1".section.note.GNU - stack, "", % progbits
