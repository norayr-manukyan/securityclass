# securityclass/programming/vishap oberon
Here is vt100 standard impementation written in Vishap Oberon programming language.
Original source - https://github.com/vishaps/voc/tree/master/src/test/vt100

Compilation steps

Install compiler from here  https://github.com/vishaps/voc

Run 
voc -s vt100.Mod crt.Mod crttest.Mod -M 
rm *.h *.c *.o *.sym

or just type
make all
make clean

in vt100 folder