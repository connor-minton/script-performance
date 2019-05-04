# Scripting Language Performance

This intends to be a collection of scripting language benchmarks for the
metrics that I care about--particularly, startup time. I just want a language
that lets me do `for i in lots-of-files/*; do ./little-script; done` as
painlessly, quickly, and Bash-lessly as possible. Yes, I am doing this to spite
Bash.

## Dependencies

If you want to run all of the _scripting language_ benchmarks, you'll need

- Make
- Node.js
- Lua
- Perl (5 _and_ 6)
- PHP
- Python 3
- Ruby

If you want to run the compiled "reference" benchmarks, you'll
additionally need

- a C compiler
- a C++ compiler
- a Go compiler
- a Java compiler
- a Rust compiler

## Benchmarks

The following metrics are calculated:

- Startup time

That's it. That's all I care about right now. Maybe some CPU-intensive benchmarks
later.

## Running the Benchmarks

`cd` into the directory and run `make`. If everything is golden, you can run
any benchmark by running

```
./bench $testname $iterations
```

where `testname` is the test name (usually the name in the `bin` directory) and
`iterations` is the number of times to execute, defaulting to 20.

### List of Tests

- `hello-c` - C
- `hello-cpp` - C++
- `hello-go` - Go
- `hello-java` - Java
- `hello-js` - Node.js
- `hello-lua` - Lua
- `hello-p6` - Perl 6
- `hello-php` - PHP
- `hello-pl` - Perl 5
- `hello-py` - Python 3
- `hello-rb` - Ruby
- `hello-rs` - Rust
