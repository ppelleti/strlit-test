This repository demonstrates some issues related to compilation speed
for Haskell source files containing lots of string literals.  I
brought this up [on the Haskell Discourse][1] recently.

There are three source files here:

`Slow.hs` uses the `IsString` instance for `Builder` directly.

`Medium.hs` uses the `IsString` instance for `ByteString`, and then
converts each `ByteString` to a `Builder` by using the `byteString`
function.

`Fast.hs` concatenates all the string literals into one big string,
and extracts substrings by using `drop` and `take`.

`String.hs` uses plain, non-overloaded `String`.

I'm not aware of a "native" way to measure per-file compilation times
in Stack or Cabal, so I have provided the Perl script
`time-lines.pl`.  It can be used like this:

```
stack clean
stack build 2>&1 | ./time-lines.pl
```

On my machine (an AMD Ryzen™ 7 5700U running Ubuntu 20.04.3 LTS), I
get:

```
[1 of 4] Compiling Experiment.Fast                 ( 0.25 s)
[2 of 4] Compiling Experiment.Medium               ( 1.55 s)
[3 of 4] Compiling Experiment.Slow                 ( 1.95 s)
[4 of 4] Compiling Experiment.String               ( 0.36 s)
```

The `stack.yaml` specifies `lts-18.27`, which implies GHC 8.10.7 and
`bytestring-0.10.12.0`.

[1]: https://discourse.haskell.org/t/string-literals-and-compilation-speed/4161
