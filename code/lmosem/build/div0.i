# 1 "../hal/div0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../hal/div0.c"
# 25 "../hal/div0.c"
void hal_sysdie();

void __div0 (void)
{
    hal_sysdie("div NOT 0\n");
}
