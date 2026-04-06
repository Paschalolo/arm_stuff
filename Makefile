MFILE=$(FILE).o
ASMFILE=$(FILE).S
# nasm -f elf64 program.asm -o program.o
COMPILEASM.o = as -f elf64 -g 
vpath %.o src 
vpath %.S src 
r : link 
	./bin/$(FILE) 
run : link 
	./bin/$(FILE)
run2: compilecpp
	./src/$(FILE) && rm src/$(FILE) && rm src/$(MFILE)
compilecpp: compile
	g++-14 src/$(MFILE) src/$(FILE).cpp -o src/$(FILE)

link :  compile 
	ld  src/$(MFILE) -o bin/$(FILE)
compile: $(ASMFILE)
	$(COMPILEASM.o) $< -o src/$(MFILE) 
	
create: 
	touch  src/$(ASMFILE)
clean : 
	rm src/$(FILE) && rm src/$(MFILE)
push : 
	git add . && git commit -m"ARM ASSEMBLY ------ "

online : 
	git push origin main 
