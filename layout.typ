#let layout(doc) = {
  html.link(rel: "preconnect", href: "https://fonts.googleapis.com")
  html.link(rel: "preconnect", href: "https://fonts.gstatic.com", crossorigin: "anonymous")
  html.link(rel: "stylesheet", href: "https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&family=Libertinus+Sans:ital,wght@0,400;0,700;1,400&family=Libertinus+Serif:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap")

  html.link(rel: "stylesheet", href: "/styles/global.css")
  html.link(rel: "stylesheet", href: "/styles/reset.css")
  html.link(rel: "stylesheet", href: "/styles/math.css")

  html.main(doc)
}
