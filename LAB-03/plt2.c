// int main()
// {
//     int c = 0;
//     int flag;
//     for (int i = 2; i < 11; i++) {
//         flag = 1;
//         for (int j = 2; j <= (i / 2); j++) {
//             if ((i % j) == 0) {
//                 flag = 0;
//             }
//         }
//         if (flag) {
//             c++;
//         }
//     }
//     printf("Prime numbers are %d times from 1 to 10", c);

//     return 0;
// }



// addi x30, x0, 0 # c = 0
// addi x31, x0, 0 # flag = 0;
// addi x5, x0, 0x2 # i=2
// addi x6, x0, 0xa # condition 10
// outer_loop_start:
// bge x5, x6, outer_loop_end # if (i >= 10)
// addi x31, x0, 0x1 # flag = 1
//    addi x7, x0, 0x2 # j=2
//    div x9, x5, x7 # i/2
//    inner_loop_start:
//         bgt x7, x9, inner_loop_end # if(j <= (i/2))
//         rem x28, x5, x7
//         bne x28, x0, label1
//         addi x31, x0, 0 # flag = 0
   
//         label1:

//    addi x7, x7, 1 # j++
//    j inner_loop_start
    
//    inner_loop_end:  
// 		bne x31, x0, label2
//         j here
    
//     label2:
//          addi x30, x30, 1

// here:
// addi x5, x5, 1 # i++
// j outer_loop_start

// outer_loop_end: