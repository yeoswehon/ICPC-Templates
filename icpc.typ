#import "@preview/boxed-sheet:0.1.1": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *

#show: codly-init.with()
#codly(
  languages: codly-languages,
  aliases: ("katcl": "cpp", "cpp": "cpp"),
  // header-cell-args: (align: center),
  // header-transform: x => {
  //   set text(fill: rgb(0, 0, 139))
  //   strong(x)
  // },
  // zebra-fill: none,
  display-icon: false,
  zebra-fill: rgb(248, 248, 248),
  range: (2, none),
)

#let cb(code, lang: "katcl", range: (2, none)) = {
  // hide #include line and offset back to 1
  codly(range: range, offset: -1)
  raw(code, block: true, lang: lang)
}

#let homepage = ""
#let author = ""
#let title = "Camelion ICPC"

#show: boxedsheet.with(
  title: title,
  homepage: homepage,
  authors: author,
  write-title: false,
  title-align: center,
  title-number: false,
  title-delta: 1pt,
  scaling-size: false,
  font-size: 5.5pt,
  line-skip: 2pt,
  x-margin: 10pt,
  y-margin: 12pt,
  num-columns: 4,
  column-gutter: 4pt,
  numbered-units: false,
)



// --------------- Code imports -----------------
#let template = read("content/template.cpp")
#let dsu = read("content/dsu.cpp")
#let dinic = read("content/dinic.cpp")

// --------------- Code imports -----------------


= Template
#concept-block(body: [
  #cb(template)
])

= DSU
#concept-block(body: [
  #cb(dsu)
])

= Dinic
#concept-block(body: [
  #cb(dinic)
])


// = References
// + #link("https://htmlboxedsheet.com/js/")[JS Cheat Sheet: https://htmlboxedsheet.com/js/]
// + #link("https://htmlboxedsheet.com/")[HTML Cheat Sheet: https://htmlboxedsheet.com/]
//
