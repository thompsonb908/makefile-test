# Example entry
# target: prerequisites
#	command 1
#	command 2 ...

helloworld: helloworld.o
	cc helloworld.o -o helloworld  # Runs third

helloworld.o: helloworld.c
	cc -c helloworld.c -o helloworld.o # Runs second
    
helloworld.c:
	echo '#include <stdio.h>\nint main(){\n\tprintf("Hello World!!");\n\treturn 0;\n}' > helloworld.c # Runs first
