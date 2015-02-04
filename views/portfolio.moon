import Widget from require "lapis.html"

class Portfolio extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/portfolio/main.css"

    center ->
      h1 "Projects I've Made"

    div class: "row", ->
      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-4", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-code"

          div class: "info", ->
            h4 class: "text-center", "Elemental-IRCd"
            p "Elemental-IRCd is a fork of the (now defunct) ShadowIRCd project. It is also a fork of Atheme's Charybdis irc daemon with more user-friendly features. Most of these things are security patches, network staff usability features, patches that make centralized management simpler and extra status levels in channels; but the resulting core changes mean it needs to be its own project. I plan to replace this with something still in development called Scylla. On average there are right now over 800 people using this software to communicate."
            a href: "https://github.com/elemental-ircd/elemental-ircd", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-4", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-cogs"

          div class: "info", ->
            h4 class: "text-center", "Scylla"
            p "Scylla is a more experimental project in separating mechanism from policy in IRC networks. The overall idea is to make the flow of things similar to this:"
            code [[protocol line >>= mechanism >>= event >>= core >>= policy >>= action >>= mechanism >>= protocol line]]
            p "This would be implemented by the core being a minimal message bus that routes things to the appropriate component, allowing the components to be written in any language. It is still in the early planning stage but I hope to have something working by next year."
            a href: "https://github.com/Xe/scylla", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-4", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-server"

          div class: "info", ->
            h4 class: "text-center", "Scalable Deployment on Docker"
            p ->
              text "This site and a few others I host are deployed inside Docker containers and are updated using "
              code "git push"
              text ". The code for this site is available to the public at the link below. This is a simple Lapis application inside nginx and deployed using my docker-lapis image."
            a href: "http://git.xeserv.us/xena/site", class: "btn", "Learn More"
