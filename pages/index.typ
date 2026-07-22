#import "../layout.typ": layout
#show: layout

#title[JD 0b01101001]

I'm setting up this site purely for the lecture series, so I can distribute
files relatively easily and archive any materials I've made for this.

= Lecture notes

I won't prepare notes for all of the material so I recommend taking your own,
but I will make available whatever notes I do have:
- #link("/algebra")[algebra.typ]

= Code handouts

Build system:
```sh
./
├── .gitignore           # snippet below
├── Makefile             # snippet below
├── build/
│   └── **/*             # build artifacts
└── src/
    ├── lib/
    │   ├── math/
    │   │   ├── vec.c
    │   │   ├── vec.h
    │   │   ├── ratio.c  # hint: one of the examples in ps1 describes this
    │   │   ├── ratio.h  # hint: one of the examples in ps1 describes this
    │   │   ├── complex.c  # we'll cover this in more detail soon
    │   │   └── complex.h  # we'll cover this in more detail soon
    │   └── **/
    │       ├── *.c
    │       └── *.h
    ├── hello-world.c
    └── *.c              # executables
```
#quote(block: true)[
  *Warning:* Make sure there are _no compilation errors_ in your
  `src/lib/**/*.c` files, because they will prevent _any_ executable targets
  (even those that seem like they shouldn't need the erroring file) from
  building as well! This is because our Makefile specifies all of the library
  targets as dependencies of our executables.

  I _strongly_ recommend compiling your code frequently to have more time
  resolution when trying to identify breaking changes you made. However, I
  may, on occasion, give you handouts with placeholders where you are meant to
  finish the code. If the incomplete code causes compilation errors, you will
  be unable to build, in which case you may have to get creative about how you
  debug these.
]

The contents of `Makefile`:
#raw(
  read("../_code/Makefile"),
  block: true,
  lang: "make",
)
#quote(block: true)[
  *Error:* If you copy paste the above listing into a `Makefile`, it will
  not work because `make` expects tab characters for indentation rather than
  spaces. Make sure to replace the two-space indentation that appears after each
  `target: deps` (i.e. for the commands run to build each target) with a tab
  character (the line continuations for preprocessor/compiler flags are fine
  as-is).

  I don't know why it's replacing the tabs with spaces, but I couldn't
  figure it out in a reasonable time frame, so please just make do with this
  for now.
]

The contents of `.gitignore`:
#raw(
  read("../_code/.gitignore"),
  block: true,
  lang: "gitignore",
)

The contents of `hello-world.c`:
#raw(
  read("../_code/src/hello-world.c"),
  block: true,
  lang: "c",
)

The contents of `vec.h`:
#raw(
  read("../_code/src/lib/math/vec.h"),
  block: true,
  lang: "c",
)

The contents of `vec.c`:
#raw(
  read("../_code/src/lib/math/vec.c"),
  block: true,
  lang: "c",
)

The contents of `vec_dyn-example.c`:
#raw(
  read("../_code/src/vec_dyn-example.c"),
  block: true,
  lang: "c",
)

The contents of `ratio.h`:
#raw(
  read("../_code/src/lib/math/ratio.h"),
  block: true,
  lang: "c",
)

The contents of `ratio.c`:
#raw(
  read("../_code/src/lib/math/ratio.c"),
  block: true,
  lang: "c",
)

The contents of `complex.h`:
#raw(
  read("../_code/src/lib/math/complex.h"),
  block: true,
  lang: "c",
)

The contents of `complex.c`:
#raw(
  read("../_code/src/lib/math/complex.c"),
  block: true,
  lang: "c",
)
