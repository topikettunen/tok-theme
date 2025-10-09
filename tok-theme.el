;;; tok-theme.el --- Minimal monochromatic theme with restrained color highlights. -*- lexical-binding: t; -*-

;; Author: Topi Kettunen <topi@topikettunen.com>
;; URL: https://github.com/topikettunen/tok-theme
;; Version: 0.3
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

;; tok-theme is a minimal monochromatic theme with restrained color highlights.

;;; Code:

(defgroup tok-theme nil
  "Options for tok-theme."
  :group 'faces)

(deftheme tok
  "Minimal monochromatic theme for Emacs in the spirit of Zmacs and
Smalltalk-80"
  :kind 'color-scheme)

(let* ((class '((class color) (min-colors 89)))
       ;; TOK color palette
       (bg    "white")
       (fg    "black")
       (dim-0 "grey95")
       (dim-1 "grey90")
       (dim-2 "grey80")
       (dim-3 "grey70")
       (dim-4 "grey60")
       (dim-5 "grey50"))
  (custom-theme-set-faces
   'tok
   `(button ((,class (:box 1))))
   `(completions-common-part ((,class (:weight bold))))
   `(completions-first-difference ((t nil)))
   `(corfu-bar ((,class (:background ,fg))))
   `(corfu-border ((,class (:background ,fg))))
   `(corfu-current ((,class (:inherit highlight))))
   `(corfu-default ((,class (:background ,bg))))
   `(cursor ((,class (:background ,fg))))
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(dired-broken-symlink ((,class (:inherit error))))
   `(dired-directory ((,class (:weight bold))))
   `(erc-timestamp-face ((t nil)))
   `(error ((,class (:weight bold :foreground "red"))))
   `(font-lock-builtin-face ((t nil)))
   `(font-lock-comment-delimiter-face ((t nil)))
   `(font-lock-comment-face ((t nil)))
   `(font-lock-constant-face ((t nil)))
   `(font-lock-doc-face ((t nil)))
   `(font-lock-doc-markup-face ((t nil)))
   `(font-lock-function-name-face ((t nil)))
   `(font-lock-keyword-face ((t nil)))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-preprocessor-face ((t nil)))
   `(font-lock-regexp-grouping-backslash ((t nil)))
   `(font-lock-regexp-grouping-construct ((t nil)))
   `(font-lock-string-face ((t nil)))
   `(font-lock-type-face ((t nil)))
   `(font-lock-variable-name-face ((t nil)))
   `(font-lock-warning-face ((t nil)))
   `(fringe ((t nil)))
   `(highlight ((,class (:background ,dim-0))))
   `(isearch ((,class (:foreground ,bg :background ,fg))))
   `(isearch-group-1 ((,class (:background ,dim-5))))
   `(isearch-group-2 ((,class (:background ,dim-4))))
   `(lazy-highlight ((,class (:background ,dim-1))))
   `(line-number ((,class (:foreground ,dim-2))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,dim-1))))
   `(link ((,class (:underline t))))
   `(magit-diff-file-heading ((t nil)))
   `(magit-section-heading ((,class (:weight bold))))
   `(markdown-blockquote-face ((t nil)))
   `(markdown-header-delimiter-face ((t nil)))
   `(markdown-header-face ((,class (:inherit outline-1))))
   `(markdown-metadata-key-face ((,class (:inherit font-lock-comment-face))))
   `(markdown-metadata-value-face ((,class (:inherit font-lock-comment-face))))
   `(markdown-pre-face ((t nil)))
   `(minibuffer-prompt ((t nil)))
   `(mode-line ((,class (:foreground ,fg :background ,bg :box (:line-width -1 :style released-button)))))
   `(mode-line-active ((,class (:inherit mode-line))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-highlight ((t nil)))
   `(mode-line-inactive ((,class (:weight light :foreground ,dim-5 :background ,dim-0 :box (:line-width -1 :color ,dim-1 :style nil)))))
   `(org-agenda-structure ((t nil)))
   `(org-block ((t nil)))
   `(org-headline-done ((t nil)))
   `(org-special-keyword ((,class (:foreground ,dim-5))))
   `(outline-1 ((,class (:weight bold))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))
   `(region ((,class (:extend t :background "lightgoldenrod1"))))
   `(secondary-selection ((,class (:inherit region))))
   `(sh-heredoc ((t nil)))
   `(sh-quoted-exec ((t nil)))
   `(success ((,class (:weight bold :foreground "green"))))
   `(terraform--resource-name-face ((t nil)))
   `(terraform--resource-type-face ((t nil)))
   `(trailing-whitespace ((,class (:underline t))))
   `(vertical-border ((,class (:foreground ,dim-2))))
   `(warning ((,class (:weight bold :foreground "orange"))))))

;;;###autoload
   (when (and (boundp 'custom-theme-load-path) load-file-name)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory (file-name-directory load-file-name))))

   (provide-theme 'tok)

;;; tok-theme.el ends here
