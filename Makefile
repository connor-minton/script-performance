.PHONY: all clean
all: hello-c hello-cpp hello-go hello-pl hello-py

clean:
	rm bin/* obj/*

hello-c.o: src/hello.c
	gcc -c -o obj/hello-c.o src/hello.c

hello-c: hello-c.o
	gcc -o bin/hello-c obj/hello-c.o

hello-cpp.o: src/hello.cpp
	gcc -c -o obj/hello-cpp.o src/hello.cpp

hello-cpp: hello-cpp.o
	g++ -o bin/hello-cpp obj/hello-cpp.o

hello-go: src/hello.go
	go build -o bin/hello-go src/hello.go

hello-rs: src/hello.rs
	rustc -o bin/hello-rs src/hello.rs

hello-java: src/Hello.java
	javac src/Hello.java -d obj

hello-lua: src/hello.lua
	cp src/hello.lua bin/hello-lua

hello-pl: src/hello.pl
	cp src/hello.pl bin/hello-pl

hello-p6: src/hello.p6
	cp src/hello.p6 bin/hello-p6

hello-py: src/hello.py
	cp src/hello.py bin/hello-py

hello-rb: src/hello.rb
	cp src/hello.rb bin/hello-rb

hello-js: src/hello.js
	cp src/hello.js bin/hello-js

hello-php: src/hello.php
	cp src/hello.php bin/hello-php
