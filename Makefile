
ASMFILE=$(MEM)/$(FILE).S
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
	ld -o bin/$(FILE) src/$(MEM)/$(OFILE)

build : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(MEM)/$(OFILE) $< 

build2 : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(MEM)/$(OFILE) $< 

push : 
	git add . && git commit -m "mesa" && git push origin main

cr:
	mkdir src/$(MEM)
create: 
	touch src/$(MEM)/$(ASMFILE)
