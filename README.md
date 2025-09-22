## About

[![MELPA](https://melpa.org/packages/tok-theme-badge.svg)](https://melpa.org/#/tok-theme)

Minimal light monochromatic theme for Emacs in the spirit of Zmacs and
Smalltalk-80. Simple syntax highlighting and minimal colouring for things such
as `diff/magit` patches.

![Screenshot of the light theme](/tok-theme-light.png)

## Installation

### MELPA

``` elisp
(use-package tok-theme
  :config
  (load-theme 'tok t))
```

### Local

You can also install this theme by copying it to your `.emacs.d`. I
use `themes` directory for holding this so I can load it with:

``` elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tok-theme")
(load-theme 'tok t)
```

Or with `use-package`:

``` elisp
(use-package tok-theme
  :load-path "themes/tok-theme"
  :config
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tok-theme")
  (load-theme 'tok t))
```

## Contributing

I like to keep my own `.emacs.d` relatively clean so there might be
some "ugly" coloring in some of the modes, since I have most likely
just missed that because I don't use it. If you happen to find some of
these, feel free to drop a PR to clean it.
