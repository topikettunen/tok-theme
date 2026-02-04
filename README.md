## About

[![MELPA](https://melpa.org/packages/tok-theme-badge.svg)](https://melpa.org/#/tok-theme)

Minimal monochromatic theme with restrained color highlights.

![Screenshot of the theme](/tok-theme.png)

![Screenshot of the dark theme](/tok-theme-dark.png)

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

### Dark mode

If you want to use dark variant of theme, you can set `tok-theme-dark` to true
before loading theme:

``` elisp
(setq tok-theme-dark t)
(load-theme 'tok)
```

## Contributing

I like to keep my own `.emacs.d` relatively clean so there might be
some "ugly" coloring in some of the modes, since I have most likely
just missed that because I don't use it. If you happen to find some of
these, feel free to drop a PR to clean it.
