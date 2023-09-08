;;; tok-theme.el --- Minimal monochromatic theme for Emacs in the spirit of Zmacs and Smalltalk-80. -*- lexical-binding: t; -*-

;; Author: Topi Kettunen <topi@topikettunen.com>
;; URL: https://github.com/topikettunen/tok-theme
;; Version: 0.1
;; Package-Requires: ((emacs "27.0"))

;; This is free and unencumbered software released into the public domain.
;;
;; Anyone is free to copy, modify, publish, use, compile, sell, or
;; distribute this software, either in source code form or as a compiled
;; binary, for any purpose, commercial or non-commercial, and by any
;; means.
;;
;; In jurisdictions that recognize copyright laws, the author or authors
;; of this software dedicate any and all copyright interest in the
;; software to the public domain. We make this dedication for the benefit
;; of the public at large and to the detriment of our heirs and
;; successors. We intend this dedication to be an overt act of
;; relinquishment in perpetuity of all present and future rights to this
;; software under copyright law.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;; IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
;; OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
;; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;; OTHER DEALINGS IN THE SOFTWARE.
;;
;; For more information, please refer to <https://unlicense.org>

;; This file is not part of Emacs.

;;; Commentary:

;; Tok is a minimal monochromatic theme for Emacs in the spirit
;; of Zmacs and Smalltalk-80.

;;; Code:

(defgroup tok-theme nil
  "Options for tok-theme."
  :group 'faces)

(defcustom tok-theme-dark nil
  "If non-nil, make the theme dark."
  :group 'tok-theme
  :type 'boolean)

(deftheme tok
  "Minimal monochromatic theme for Emacs in the spirit of Zmacs and
Smalltalk-80"
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      (bg    (if tok-theme-dark "black" "white"))
      (fg    (if tok-theme-dark "white" "black"))
      (dim-1 (if tok-theme-dark "grey15" "grey90"))
      (dim-2 (if tok-theme-dark "grey25" "grey80"))
      (dim-3 (if tok-theme-dark "grey35" "grey70"))
      (dim-4 (if tok-theme-dark "grey45" "grey60"))
      (dim-5 (if tok-theme-dark "grey55" "grey50")))
  (custom-theme-set-faces
   'tok

   ;; Basic faces

   ;; Let terminal to define these.
   (when (display-graphic-p)
     `(default ((,class (:foreground ,fg :background ,bg)))))
   (when (display-graphic-p) ; Have to call `when' here due to reasons...
     `(cursor ((,class (:background ,fg)))))

   `(highlight ((,class (:background ,dim-1))))
   `(region ((,class (:extend t :background ,dim-2))))
   `(secondary-selection ((,class (:inherit region))))
   `(trailing-whitespace ((,class (:underline t))))
   `(error ((,class (:weight bold :foreground "red"))))
   `(warning ((,class (:weight bold :foreground "orange"))))
   `(success ((,class (:weight bold :foreground "green"))))
   `(fringe ((,class (nil))))
   `(button ((,class (:box 1))))
   `(vertical-border ((,class (:foreground ,fg))))
   `(minibuffer-prompt ((,class (nil))))
   `(link ((,class (:underline t))))

   ;; Line-numbes
   `(line-number ((,class (:foreground ,dim-2))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,dim-1))))

   ;; Mode-line
   `(mode-line ((,class (:foreground ,fg :background ,bg :box ,fg))))
   `(mode-line-active ((,class (:inherit mode-line))))
   `(mode-line-inactive ((,class (:weight light :foreground ,dim-5 :background ,dim-1 :box ,dim-5))))
   `(mode-line-highlight ((t (nil))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-buffer-id ((,class (:weight bold))))

   ;; Font-lock
   `(font-lock-comment-face ((,class (:foreground ,dim-4))))
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-string-face ((,class (:background ,dim-1))))
   `(font-lock-doc-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-doc-markup-face ((,class (nil))))
   `(font-lock-keyword-face ((,class (nil))))
   `(font-lock-builtin-face ((,class (nil))))
   `(font-lock-function-name-face ((,class (nil))))
   `(font-lock-variable-name-face ((,class (nil))))
   `(font-lock-type-face ((,class (nil))))
   `(font-lock-constant-face ((,class (nil))))
   `(font-lock-warning-face ((,class (nil))))
   `(font-lock-negation-char-face ((,class (nil))))
   `(font-lock-preprocessor-face ((,class (:weight bold))))
   `(font-lock-regexp-grouping-backslash ((,class (nil))))
   `(font-lock-regexp-grouping-construct ((,class (nil))))

   ;; isearch
   `(isearch ((,class (:foreground ,bg :background ,fg))))
   `(isearch-group-1 ((,class (:background ,dim-5))))
   `(isearch-group-2 ((,class (:background ,dim-4))))
   `(lazy-highlight ((,class (:background ,dim-1))))

   ;; Dired
   `(dired-directory ((,class (:weight bold))))
   `(dired-broken-symlink ((,class (:inherit error))))

   ;; ERC
   `(erc-timestamp-face ((,class (nil))))

   ;; sh
   `(sh-heredoc ((,class (nil))))
   `(sh-quoted-exec ((,class (nil))))

   ;; Org
   `(org-block ((,class (nil))))

   ;; Outline
   `(outline-1 ((,class (:weight bold))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))

   ;; Show paren
   `(show-paren-match ((,class (:weight bold :background ,dim-5))))
   `(show-paren-match-expression ((,class (:inherit show-paren-match))))
   `(show-paren-mismatch ((,class (:inherit error))))

   ;; Terraform
   `(terraform--resource-name-face ((,class (nil))))
   `(terraform--resource-type-face ((,class (nil))))

   ;; Markdown
   `(markdown-header-face ((,class (:inherit outline-1))))
   `(markdown-header-delimiter-face ((,class (nil))))
   `(markdown-metadata-key-face ((,class (:inherit font-lock-comment-face))))
   `(markdown-metadata-value-face ((,class (:inherit font-lock-comment-face))))
   `(markdown-blockquote-face ((,class (nil))))
   `(markdown-pre-face ((,class (nil))))

   ;; Magit
   `(magit-diff-file-heading ((,class (nil))))
   `(magit-section-heading ((,class (:weight bold))))


   ;; completions
   `(completions-common-part ((,class (:weight bold))))
   `(completions-first-difference ((,class (nil))))

   ;; Corfu
   `(corfu-default ((,class (:background ,bg))))
   `(corfu-bar ((,class (:background ,fg))))
   `(corfu-border ((,class (:background ,fg))))
   `(corfu-current ((,class (:inherit highlight))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tok)

;;; tok-theme.el ends here
