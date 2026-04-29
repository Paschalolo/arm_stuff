
ASMFILE=$(FILE).S
OFILE=$(FILE).o
DEBUGFLGS= -g
vpath %.s src 
vpath %.S src
vpath %.o src 
vpath %.h include 


run : link
	./bin/$(FILE)  
runp : link 
	./src/$(FILE)  
link : build 
	ld -o bin/$(FILE) src/$(OFILE)

build : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(OFILE) $< 

build2 : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(OFILE) $< 

push : 
	git add . && git commit -m "mesa" && git push origin main

create: 
	touch src/$(ASMFILE)
