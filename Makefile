
ASMFILE=$(FILE).s
OFILE=$(FILE).o
DEBUGFLGS= -g
vpath %.s src 
vpath %.S src
vpath %.o src 
vpath %.h include 


run : link
	./src/$(FILE)  && rm ./src/$(FILE)
runp : link 
	./src/$(FILE)  
link : build 
	ld -o src/$(FILE) src/$(OFILE)

build : $(ASMFILE)
	as $(DEBUGFLGS) -o ./src/$(OFILE) $< 


push : 
	git add . && git commit -m "mesa" && git push origin main

create: 
	touch src/$(ASMFILE)
