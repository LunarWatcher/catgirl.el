;;; catgirl-theme.el --- Another emacs theme -*- lexical-binding: t; -*-

;; Copyright 2026 Olivia
;;
;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:
;;
;; The above copyright notice and this permission notice shall be included
;; in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
;; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
;; CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;; TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
;; SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;; Maintainer: Olivia <oliviawolfie@pm.me>
;; Author: Olivia <oliviawolfie@pm.me>
;; Version: 1.0.0
;; Package-Requires: ((emacs "30.2"))
;; URL: https://codeberg.org/LunarWatcher/catgirl.el

;;; Commentary:

;;

;;; Code:

(deftheme catgirl)

(eval-and-compile
  (defvar catgirl-colours-alist
    '(;; Base colours
      ("catgirl-abswhite"               . "#ffffff")
      ("catgirl-white"                  . "#eeeeee") ;; base background colour
      ("catgirl-grey"                   . "#e4e4e4")
      ("catgirl-comment-grey"           . "#878787")
      ("catgirl-grey-dark"              . "#333333")
      ("catgirl-black"                  . "#000000")

      ;; Functional colours colours
      ("catgirl-orange"                 . "#d75f00")
      ("catgirl-red"                    . "#d70000")
      ("catgirl-green"                  . "#008700")
      ("catgirl-green-light"            . "#5f8700")
      ("catgirl-yellow-highlight"       . "#ffffaf")
      ;; Tint-ish colours meant for diffs
      ("catgirl-negative"               . "#ffd7ff")
      ("catgirl-positive"               . "#afffaf")
      ("catgirl-attention"              . "#ffd787")

      ;; Primary theme colours
      ("catgirl-pink"                   . "#d70087")
      ("catgirl-pink-light"             . "#ea76cb")
      ("catgirl-purple"                 . "#3b2685")
      ("catgirl-purple-light"           . "#8700af")
      ("catgirl-purple-dull"            . "#b19cd9")
      ("catgirl-blue"                   . "#005faf")
      ("catgirl-teal"                   . "#179299")

      ;; secondary for dark backgrounds
      ("catgirl-dark-teal"              . "#00d4ff")
      ("catgirl-dark-red"               . "#fe8383")
    )
    "The main palette"
))

(defmacro catgirl-scoped-colours(&rest body)
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   catgirl-colours-alist))
     ,@body))


(catgirl-scoped-colours
  (custom-theme-set-faces
   'catgirl

   ;; font-lock
   `(font-lock-builtin-face                 ((t (:foreground ,catgirl-teal))))
   `(font-lock-comment-face                 ((t (:foreground ,catgirl-comment-grey :slant italic))))
   `(font-lock-comment-delimiter-face       ((t (:foreground ,catgirl-comment-grey :slant italic))))
   `(font-lock-doc-face                     ((t (:foreground ,catgirl-comment-grey :slant italic))))
   `(font-lock-constant-face                ((t (:foreground ,catgirl-blue))))
   `(font-lock-function-name-face           ((t (:foreground ,catgirl-teal))))
   `(font-lock-keyword-face                 ((t (:foreground ,catgirl-pink))))
   `(font-lock-preprocessor-face            ((t (:foreground ,catgirl-pink))))
   `(font-lock-negation-char-face           ((t (:foreground ,catgirl-black))))
   `(font-lock-regexp-grouping-construct    ((t (:foreground ,catgirl-purple :weight bold))))
   `(font-lock-regexp-grouping-backslash    ((t (:foreground ,catgirl-black))))
   `(font-lock-string-face                  ((t (:foreground ,catgirl-green))))
   `(font-lock-type-face                    ((t (:foreground ,catgirl-pink))))
   `(font-lock-variable-name-face           ((t (:foreground ,catgirl-black))))
   `(font-lock-warning-face                 ((t (:foreground ,catgirl-orange))))
   `(font-lock-number-face                  ((t (:foreground ,catgirl-orange))))

   ;; basic
   `(italic                                 ((t (:slant italic))))
   `(bold                                   ((t (:weight bold))))
   `(default                                ((t (:foreground ,catgirl-black :background ,catgirl-white))))
   `(link                                   ((t (:foreground ,catgirl-blue :underline t))))
   `(link-visited                           ((t (:foreground ,catgirl-blue :underline nil))))
   '(button                                 ((t (:inherit link))))
   `(cursor                                 ((t (:background ,catgirl-purple-light :foreground ,catgirl-black))))
   `(escape-glyph                           ((t (:foreground ,catgirl-teal))))
   `(shadow                                 ((t (:foreground ,catgirl-black))))
   `(file-name-shadow                       ((t (:foreground ,catgirl-black))))
   `(fringe                                 ((t (:foreground ,catgirl-purple :background ,catgirl-white))))
   `(popup-tip-face                         ((t (:foreground ,catgirl-purple :background ,catgirl-pink))))
   `(header-line                            ((t (:foreground ,catgirl-purple))))
   `(highlight                              ((t (:background ,catgirl-grey))))
   `(success                                ((t (:foreground ,catgirl-green :weight bold))))
   `(warning                                ((t (:foreground ,catgirl-orange :weight bold))))
   `(error                                  ((t (:foreground ,catgirl-red :weight bold))))
   `(tooltip                                ((t (:foreground ,catgirl-purple :background ,catgirl-white))))
   `(menu                                   ((t (:foreground ,catgirl-purple :background ,catgirl-white))))
   `(minibuffer-prompt                      ((t (:foreground ,catgirl-purple :background ,catgirl-white))))
   `(region                                 ((t (:background ,catgirl-purple-dull :foreground ,catgirl-abswhite))))
   `(secondary-selection                    ((t (:background ,catgirl-red))))
   `(trailing-whitespace                    ((t (:background ,catgirl-red))))
   `(vertical-border                        ((t (:foreground ,catgirl-grey))))

   ;; show-paren
   `(show-paren-match                       ((t (:foreground ,catgirl-abswhite :background ,catgirl-pink-light))))
   `(show-paren-match-expression            ((t (:inherit 'show-paren-match))))
   `(show-paren-mismatch                    ((t (:background ,catgirl-orange :foreground ,catgirl-white))))

   ;; diff
   `(diff-added                             ((t (:background ,catgirl-positive :foreground ,catgirl-black))))
   `(diff-removed                           ((t (:background ,catgirl-negative :foreground ,catgirl-black))))
   `(diff-changed                           ((t (:background ,catgirl-attention :foreground ,catgirl-black))))
   ;; `(diff-refine-added                       ((t (:background ,catgirl-diff-added-refine :foreground ,catgirl-black))))
   ;; `(diff-refine-change                      ((t (:background ,catgirl-diff-changed-highlight :foreground ,catgirl-black))))
   ;; `(diff-refine-removed                     ((t (:background ,catgirl-diff-removed-refine :foreground ,catgirl-black))))
   ;; `(diff-header                             ((,class (:background ,catgirl-white)) (t (:background ,catgirl-purple :foreground ,catgirl-white))))
   ;; `(diff-file-header                        ((,class (:background ,catgirl-white :foreground ,catgirl-purple :bold t)) (t (:background ,catgirl-purple :foreground ,catgirl-white :bold t))))

   ;; mode-line
   `(mode-line                              ((t (
                                                :background ,catgirl-grey-dark
                                                :foreground ,catgirl-abswhite
                                                :box (
                                                    :line-width 2
                                                    :color ,catgirl-grey-dark
                                                    :style nil
                                                )
                                            ))))
   `(mode-line-buffer-id                    ((t (:foreground ,catgirl-teal))))
   `(mode-line-inactive                     ((t (
                                                :inherit 'mode-line
                                                :background ,catgirl-comment-grey
                                                :box (
                                                    :line-width 2
                                                    :color ,catgirl-comment-grey
                                                    :style nil
                                                )
                                            ))))

   ;; evil search
   `(evil-search-highlight-persist-highlight-face    ((t (:inherit lazy-highlight))))
   `(evil-ex-lazy-highlight                          ((t (:inherit lazy-highlight))))
   `(evil-ex-substitute-matches                      ((t (:foreground ,catgirl-red :strike-through t))))
   `(evil-ex-substitute-replacement                  ((t (:foreground ,catgirl-green :underline t))))

   ;; doom-modeline
   `(doom-modeline-buffer-path              ((t (:foreground ,catgirl-pink-light))))
   `(doom-modeline-project-dir              ((t (:foreground ,catgirl-purple-dull :weight bold))))
   `(doom-modeline-buffer-file              ((t (:foreground ,catgirl-pink-light))))
   `(doom-modeline-buffer-major-mode        ((t (:foreground ,catgirl-pink-light))))
   ;; Not happy about this, but doom-modeline-info is used for the success status, so this is necessary
   ;; for LSP diagnostics to
   `(doom-modeline-info                     ((t (:foreground ,catgirl-dark-teal :weight bold))))
   `(doom-modeline-success                  ((t (:foreground ,catgirl-positive :weight bold))))
   ;; 4.2 contrast; not great, but it isn't critical info either, so it works. The bold should help compensate
   `(doom-modeline-warning                  ((t (:foreground ,catgirl-orange :weight bold))))
   `(doom-modeline-error                    ((t (:foreground ,catgirl-dark-red :weight bold))))

   ;; flymake
   `(flymake-info                           ((t (:underline (:style wave :color ,catgirl-teal)))))
   `(flymake-warning                        ((t (:underline (:style wave :color ,catgirl-orange)))))
   `(flymake-error                          ((t (:underline (:style wave :color ,catgirl-red)))))

   ;; hl-line
   `(hl-line-face                           ((t (:background ,catgirl-grey)) (t :weight bold)))
   `(hl-line                                ((t (:background ,catgirl-grey)) (t :weight bold)))

   ;; ido
   `(ido-first-match                        ((t (:foreground ,catgirl-purple :background ,catgirl-teal :weight bold))))
   `(ido-only-match                         ((t (:foreground ,catgirl-purple :background ,catgirl-teal :weight bold))))
   `(ido-subdir                             ((t (:foreground ,catgirl-blue))))
   `(ido-indicator                          ((t (:foreground ,catgirl-teal :background ,catgirl-purple))))

   ;; isearch
   `(isearch                                ((t (:foreground ,catgirl-purple-dull :weight bold :background ,catgirl-abswhite))))
   `(isearch-fail                           ((t (:foreground ,catgirl-red :background ,catgirl-white))))
   `(lazy-highlight                         ((t (:foreground ,catgirl-black :weight bold :background ,catgirl-attention))))

   ;; line-number
   `(line-number                            ((t (:inherit fixed-pitch :foreground ,catgirl-grey-dark :background ,catgirl-grey))))
   `(line-number-current-line               ((t (:inherit fixed-pitch :foreground ,catgirl-pink :weight bold :background ,catgirl-grey))))

   ;; markdown
   `(markdown-header-face                   ((t (:foreground ,catgirl-teal :weight bold))))
   `(markdown-language-keyword-face         ((t (:inherit 'fixed-pitch :foreground ,catgirl-purple :weight bold))))
   `(markdown-inline-code-face              ((t (:inherit 'fixed-pitch :foreground ,catgirl-green-light :background ,catgirl-grey))))
   `(markdown-code-face                     ((t (:inherit 'fixed-pitch :foreground ,catgirl-green-light :background ,catgirl-grey :extend t))))
   `(markdown-link-url                      ((t (:inherit 'link))))
   `(markdown-header-face-1                 ((t (:inherit 'markdown-header-face :foreground ,catgirl-pink :height 2.0))))
   `(markdown-header-face-2                 ((t (:inherit 'markdown-header-face :foreground ,catgirl-purple :height 1.7))))
   `(markdown-header-face-3                 ((t (:inherit 'markdown-header-face :foreground ,catgirl-orange :height 1.5))))
   `(markdown-header-face-4                 ((t (:inherit 'markdown-header-face :foreground ,catgirl-teal :height 1.3))))

   ;; neotree
   `(neo-banner-face                        ((t (:foreground ,catgirl-teal :weight bold))))
   `(neo-header-face                        ((t (:foreground ,catgirl-purple))))
   `(neo-root-dir-face                      ((t (:foreground ,catgirl-teal :weight bold))))
   `(neo-dir-link-face                      ((t (:foreground ,catgirl-pink))))
   `(neo-file-link-face                     ((t (:foreground ,catgirl-black))))
   `(neo-expand-btn-face                    ((t (:foreground ,catgirl-purple))))

   ;; git gitter
   `(git-gutter:modified                    ((t (:foreground ,catgirl-orange))))
   `(git-gutter:deleted                     ((t (:foreground ,catgirl-red))))
   `(git-gutter:added                       ((t (:foreground ,catgirl-green))))
   `(git-gutter:seperator                   ((t (:inherit font-lock-comment-face))))

   ;; eglot
   `(eglot-diagnostic-tag-unnecessary-face  ((t (:foreground ,catgirl-comment-grey))))
   `(eglot-inlay-hint-face                  ((t (:foreground ,catgirl-pink-light :background ,catgirl-grey))))

   ;; tabline and tabbar
   `(tab-bar                                ((t (
                                                 :foreground ,catgirl-abswhite
                                                 :distant-foreground ,catgirl-abswhite
                                                 :background ,catgirl-grey-dark
                                                 :height 1.0
                                                 ;; :box (
                                                 ;;       :line-width 4
                                                 ;;       :color ,catgirl-grey-dark
                                                 ;;       :style nil
                                                 ;; )
                                                 ))))
   `(tab-bar-tab                            ((t (
                                                 :inherit 'tab-bar
                                                 :foreground ,catgirl-abswhite
                                                 :background ,catgirl-purple-light
                                                 :box (
                                                       :line-width 4
                                                       :color ,catgirl-purple-light
                                                       :style nil
                                                       )
                                                 ))))
   `(tab-bar-tab-inactive                   ((t (
                                                 :inherit 'tab-bar
                                                 :foreground ,catgirl-abswhite
                                                 :background ,catgirl-purple-dull
                                                 :box (
                                                       :line-width 4
                                                       :color ,catgirl-purple-dull
                                                       :style nil
                                                       )
                                                 ))))
   `(tab-line                               ((t (:inherit 'tab-bar))))
   `(tab-line-tab                           ((t (:inherit 'tab-bar-tab))))
   `(tab-line-tab-current                   ((t (:inherit 'tab-bar-tab))))
   `(tab-line-tab-inactive                  ((t (:inherit 'tab-bar-tab-inactive))))
   `(tab-line-highlight                     ((t (:inherit 'tab-line-tab-current))))
   `(tab-line-tab-modified                  ((t (:weight bold))))
))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'catgirl)
(provide 'catgirl-theme)

;;; catgirl-theme.el ends here
