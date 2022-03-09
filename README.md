This repository demonstrates some issues related to compilation speed
for Haskell source files containing lots of string literals.  I
brought this up [on the Haskell Discourse][1] recently.

There are three source files here:

`Slow.hs` uses the `IsString` instance for `Builder` directly.

`Medium.hs` uses the `IsString` instance for `ByteString`.

`Fast.hs` concatenates all the string literals into one big `ByteString`,
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
[1 of 4] Compiling Experiment.Fast                 ( 0.62 s)
[2 of 4] Compiling Experiment.Medium               ( 0.26 s)
[3 of 4] Compiling Experiment.Slow                 ( 2.03 s)
[4 of 4] Compiling Experiment.String               ( 0.35 s)
```

**Note:** In the original version of this repo
(`664488615dbf30c78af34266a6f5ec8aa5cb650f`), `Medium` was actually
slower than `Fast`.  However, now that I have changed `Medium` and
`Fast` to return `ByteString` instead of `Builder`, `Fast` has gotten
slower (0.62 seconds now versus 0.25 before) and `Medium` has gotten
faster (0.25 seconds now versus 1.55 before).  So now they are
somewhat misnamed, since `Fast` is now slower than `Medium`.  Don't
know why that small change made such a big difference.

The `stack.yaml` specifies `lts-18.27`, which implies GHC 8.10.7 and
`bytestring-0.10.12.0`.

I have filed two issues against the `bytestring` package:

* [ByteString literals slow down compilation a lot][495]
* [Builder literals are noticeably slower to compile than ByteString literals][496]

[1]: https://discourse.haskell.org/t/string-literals-and-compilation-speed/4161
[495]: https://github.com/haskell/bytestring/issues/495
[496]: https://github.com/haskell/bytestring/issues/496
