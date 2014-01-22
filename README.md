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
