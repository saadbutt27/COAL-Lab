int main()
{
    int a = 4;
    int b = 2;

    int add = a + b;

    int mul = a * b;

    int div = a / b;

    printf("Add: %d\n", add);
    printf("Mul: %d\n", mul);
    printf("Div: %d\n", div);

    return 0;
}

// addi x5, x0, 0x4
// addi x6, x0, 0x2

// add x7, x5, x6

// mul x28, x5, x6

// div x29, x5, x6