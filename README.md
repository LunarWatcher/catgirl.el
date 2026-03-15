# catgirl.el

A light theme for emacs inspired by catppuccin and papercolor with high border contrast.

The design is focused around the ability to visually tell things apart, while still using nice colours[^1]. Buffer areas should be distinguishable from each other without needing to explicitly look for separators, blocks inside files should stand out, etc.

This is largely a colourscheme, and does not provide font defaults. It does change the style of certain elements, notably the modeline, to improve contrast.

## Screenshots

## Installation

With `use-package` and emacs 30+:
```elisp
(use-package catgirl
  :vc (:url "ssh://git@codeberg.org/LunarWatcher/catgirl.el.git"
            :rev :newest)
  :config
  (load-theme 'catgirl :no-confirm)
)
```

Unless the theme sees some amount of use, it is not going to be published to MELPA.

## Design

There are three primary sets of colours in the theme:

1. Theme colours: the colours that, shock, actually make up the theme. These colours are meant to look nice
2. Functional colours: secondary colours that aren't directly part of the main theme, but are still required. For example, there has to be a red to highlight errors, or removals in a diff. These serve a standard meaning, likely one that's a convention across multiple products. Red is danger, errors, or removals, green is preferred or an addition, etc.
3. Base colours: black, white, and greys used for neutral contexts.



[^1]: as defined by me.
