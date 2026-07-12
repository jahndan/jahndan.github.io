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
├── .gitignore  # snippet below
├── Makefile  # snippet below
├── build/
│   └── **/*  # build artifacts
└── src/
    ├── lib/
    │   ├── math/
    │   │   ├── vec.c
    │   │   └── vec.h
    │   └── **/
    │       ├── *.c
    │       └── *.h
    ├── hello-world.c
    └── *.c  # executables
```

The contents of `.gitignore`:
#raw(
  read("../_code/.gitignore"),
  block: true,
  lang: "gitignore",
)

The contents of `Makefile`:
#raw(
  read("../_code/Makefile"),
  block: true,
  lang: "make",
)
