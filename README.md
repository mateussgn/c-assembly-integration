# C Assembly Integration
This is a samall project from University relating hardware and software integration.

This repository has 2 files.
 - *integrationcassembly.c* which has the code in C language
 - *sortArray.asm* which has the code in Assembly language
 The C code only takes data inputed from user and passes this data to the Assembly code, which will compute and change the data if needed.

In this specific case, the intention is to sort an array.

The array must have at most ten positions, filled by the user and sorted by the Assembly code.

# How to run the program
 1. You must have gcc installed on yout machine.
 2. Clone this repositoy, and make next steps on the cloned directory.
 3. If your machine is a 64x you should install this: `sudo apt-get install gcc-multilib g++-multilib`
 4. Run: `gcc -m32 -o integration integrationcassembly.c sortArray.o`
 5. This will generate the integration file and you can run the program from it. Run `./integration`
 6. Have fun!
