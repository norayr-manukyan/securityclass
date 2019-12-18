# securityclass/programming/vishap oberon/sound
By compiling beep.Mod file you will hear sound
Original source - https://github.com/vishaps/voc/tree/master/src/test/sound

Compilation steps

Install compiler from here  https://github.com/vishaps/voc

Run
```bash
voc -M beep.Mod
rm *.h *.c *.o *.sym
```

or just type
```bash
make all
make clean
```
in sound folder

After running compiled application, if you will have errors like ```bash oggenc not found ```, just install vorbis-tools in your system.