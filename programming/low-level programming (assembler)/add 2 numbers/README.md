# securityclass/programming/low level programming (assembler)/add 2 numbers
This program allows you to add 2 decimal nuumbers specified in code

Compilation steps

Install GNU Assembler (GAS) compiler, GNU linker

Run
```bash
as add.s -o add.o
ld add.o -o add
rm add.o
```

or just type
```bash
make compile
make link
make clean
```
in add 2 numbers folder

Result stored as program's exit status code.
After running compiled application, type ```echo $?``` and you will see result of addition.