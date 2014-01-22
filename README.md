# hoplon.reveal

This library let's you create slide decks/presentations with
[Reveal.js][3] and [Hoplon][7], using Clojure + ClojureScript.


## Dependencies

- java 1.7+
- [boot][1]
- [leiningen][2]

If you want to build your own themes, you'll also need:

- [Node.js][4]
- [Grunt][5]
- [sass][6]


## Usage

The latest version is: ``[hoplon.reveal "0.1.0"]``

```clojure

(defproject your-project "1.2.3"
  ...
  :dependencies [[hoplon.reveal "0.1.0"]
                  ...]
  ...)
```

You can then use it in your project like so:

```clojure

(ns your-project.some-module
  (:require [hoplon.reveal :refer
              [intro chapter slide notes highlight bullet]]))
...
```

For instance, here is a complete slide deck defined in a file called
``example_deck.cljs.hl`` (but compiled to ``example-deck.html``):
```clojure
(page "example-deck.html"
      (:require [hoplon.reveal :refer
                  [slideshow deck chapter slide bullet notes highlight
                   quicklist]]
                [hoplon.util :as util]
                [example-deck.chapter1 :as ch1]
                [example-deck.chapter2 :as ch2]
                [example-deck.chapter3 :as ch3]
                [example-deck.chapter4 :as ch4]
                [example-deck.chapter5 :as ch5]
                [example-deck.chapter6 :as ch6]
                [example-deck.chapter7 :as ch7]))


(html
  (head)
  (body
    (slideshow :theme "moon"
      (ch1/slides)
      (ch2/slides)
      (ch3/slides)
      (ch4/slides)
      (ch5/slides)
      (ch6/slides)
      (ch7/slides))))
```

And here's what ``chapter`` (set of slides) looks like from that deck:
```clojure
  (chapter :title "HTTP Kit"
    (slide :title "A Clojure web server"
     (quicklist
      "Supports WebSockets and long polling"
      "Supports HTTP streaming"
      "Compatible with Ring"
      "So fast"
      "Also a HTTP client"))
    (slide :title "Streaming example"
      (sample-code/get-http-streaming))
    (slide :title "Streaming an OutputStream (part 1)"
      (sample-code/get-http-outstream-p1))
    (slide :title "Streaming an OutputStream (part 2)"
      (sample-code/get-http-outstream-p2))
    (slide :title "WebSocket example"
      (sample-code/get-http-websocket)
      (notes "Note the unified API, allowing us to degrade to long polling")))
```

## Dev Environment

You'll probably want to have two terminals open in your project's
directory.

1. Start the auto-compiler:

    ```bash
    $ make watch
    ```

1. Run a dev HTTP server:

    ```bash
    $ make dev
    ```

1. Open the example side deck:
   * http:localhost:9999/example-deck.html

1. Create your own slide deck, after seeing how wonderfully clean the example
   code is!


## Themeing

You can give your slide deck a feel all your own by following these steps:

1. TBD
2. TBD


## License

Copyright © 2014, Clinton N. Dreisbach

[1]: https://github.com/tailrecursion/boot
[2]: https://github.com/technomancy/leiningen
[3]: http://lab.hakim.se/reveal-js/#/
[4]: http://nodejs.org/
[5]: http://gruntjs.com/
[6]: http://sass-lang.com/
[7]: http://hoplon.io/
