;;; halcyon-light-theme.el --- halcyon light theme for GNU Emacs 24

;; Copyright (C) 2013 Luke Gaudreau

;; Author: Luke Gaudreau <luke@infosoph.org>
;; URL: http://github.com/infosoph/halcyon-theme
;; Version: 0.0.1

;; This file is not a part of GNU Emacs.

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

(deftheme halcyon-light "halcyon-light-theme for Emacs 24")

(let    ((halcyon-black        "#4b5050")
         (halcyon-red          "#FE7F7F")
         (halcyon-green        "#66CCAA")
         (halcyon-yellow       "#FFEA80")
         (halcyon-blue         "#80BFFF")
         (halcyon-magenta      "#8080FF")
         (halcyon-cyan         "#5CB8B8")
         (halcyon-white        "#FFFFFF")
         (halcyon-gray         "#F2F2F2")
         (halcyon-dark-black   "#303030")
         (halcyon-dark-red     "#E47272")
         (halcyon-dark-green   "#5CB899")
         (halcyon-dark-yellow  "#E3D071")
         (halcyon-dark-blue    "#73ACE5")
         (halcyon-dark-magenta "#6666CC")
         (halcyon-dark-cyan    "#4B9696")
         (halcyon-dark-white   "#E3E3E3")
         (halcyon-dark-gray    "#B8B8B8"))

  (custom-theme-set-faces
   'halcyon-light
   `(default ((t (:stipple nil :background ,halcyon-white :foreground ,halcyon-black :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
   `(variable-pitch ((t (:family "Quattrocento" :height 1.2))))
   `(italic ((t (:slant italic))))
   `(cursor ((t (:background ,halcyon-red))))
   `(button ((t (:underline t))))
   `(fringe ((t (:foreground ,halcyon-dark-gray :background ,halcyon-white))))
   `(linum ((t (:foreground ,halcyon-black))))
   `(region ((t (:background ,halcyon-dark-white :inherit t))))
   `(hl-line ((t (:background ,halcyon-gray :inherit t))))
   `(secondary-selection ((t (:background ,halcyon-dark-white))))
   `(idle-highlight ((t :weight bold :inherit t)))
   `(highlight ((t (:background ,halcyon-dark-white))))
   `(link ((t (:foreground ,halcyon-dark-blue :underline t))))
   `(link-visited ((t (:underline t :foreground ,halcyon-dark-magenta))))
   `(minibuffer-prompt ((t (:foreground ,halcyon-dark-blue :weight bold))))
   `(header-line ((t (:background ,halcyon-dark-white :foreground ,halcyon-black))))
   `(mode-line ((t (:background ,halcyon-dark-white :foreground ,halcyon-black :style none :box ))))
   `(mode-line-inactive ((t (:background ,halcyon-gray :foreground ,halcyon-dark-gray  :style none :box ))))
   `(mouse ((t (:background ,halcyon-blue))))
   `(escape-glyph ((t (:background ,halcyon-dark-white))))
   `(shadow ((t (:foreground ,halcyon-dark-gray))))
   `(trailing-whitespace ((t (:background ,halcyon-red :foreground ,halcyon-red))))
   `(error ((t (:foreground ,halcyon-dark-red :weight bold))))
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,halcyon-magenta :bold t :weight bold))))
   `(font-lock-comment-delimiter-face ((t (:slant italic :foreground ,halcyon-dark-gray))))
   `(font-lock-comment-face ((t (:slant italic :foreground ,halcyon-dark-gray :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,halcyon-dark-cyan))))
   `(font-lock-doc-face ((t (:foreground ,halcyon-cyan))))
   `(font-lock-doc-string-face ((t (:foreground ,halcyon-dark-cyan))))
   `(font-lock-function-name-face ((t (:foreground ,halcyon-dark-blue))))
   `(font-lock-keyword-face ((t (:foreground ,halcyon-black :bold t :weight bold))))
   `(font-lock-negation-char-face ((t (nil))))
   `(font-lock-preprocessor-face ((t (:foreground ,halcyon-dark-black))))
   `(font-lock-reference-face ((t (nil))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,halcyon-dark-green))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,halcyon-dark-green))))
   `(font-lock-string-face ((t (:foreground ,halcyon-dark-green))))
   `(font-lock-type-face ((t (:foreground ,halcyon-dark-magenta :bold nil :weight normal))))
   `(font-lock-variable-name-face ((t (:foreground ,halcyon-dark-blue))))

   ;; css
   `(css-property ((t (:foreground ,halcyon-dark-blue))))
   `(css-selector ((t (:foreground ,halcyon-black))))

   ;; erb
   `(erb-face ((t (:background ,halcyon-dark-black))))
   `(erb-out-delim-face ((t (:foreground ,halcyon-cyan))))

   ;; eshell
   `(eshell-ls-archive ((t (:foreground ,halcyon-magenta))))
   `(eshell-ls-backup ((t (:slant italic :foreground ,halcyon-dark-white :slant italic))))
   `(eshell-ls-executable ((t (:foreground ,halcyon-dark-green))))
   `(eshell-ls-directory ((t (:foreground ,halcyon-dark-blue))))
   `(eshell-ls-symlink ((t (:foreground ,halcyon-dark-cyan))))
   `(eshell-ls-missing ((t (:foreground ,halcyon-red))))
   `(eshell-ls-special ((t (:foreground ,halcyon-dark-magenta))))
   `(eshell-prompt ((t (:foreground ,halcyon-green))))

   ;; flyspell
   `(flyspell-incorrect ((t (:bold nil :foreground ,halcyon-dark-red :underline t))))
   `(flyspell-duplicate ((t (:bold nil :foreground ,halcyon-dark-red :underline t))))

   ;; ido
   `(ido-only-match ((t (:foreground ,halcyon-dark-green :weight bold))))
   `(ido-subdir ((t (:inherit eshell-ls-directory :foreground ,halcyon-dark-blue))))
   ;; isearch
   `(isearch ((t (:foreground ,halcyon-black :background ,halcyon-yellow))))
   `(match ((t (:foreground ,halcyon-black :background ,halcyon-yellow))))
   `(isearch-fail ((t (:background ,halcyon-magenta :foreground ,halcyon-white))))
   `(lazy-highlight ((t (:background ,halcyon-dark-white))))

   ;; mmm
   `(mmm-code-submode-face ((t (:background ,halcyon-white))))
   ;; org-mode
   `(org-document-title ((t (:foreground ,halcyon-dark-blue :weight normal :underline nil :height 1.4))))
   `(org-level-1 ((t (:foreground ,halcyon-dark-black :weight normal))))
   `(org-level-2 ((t (:foreground ,halcyon-dark-black :weight normal))))
   `(org-level-3 ((t (:foreground ,halcyon-dark-black :weight normal))))
   `(org-level-4 ((t (:foreground ,halcyon-black :weight normal :slant normal))))
   `(org-level-5 ((t (:foreground ,halcyon-black :weight normal))))
   `(org-level-6 ((t (:foreground ,halcyon-dark-gray :weight normal))))
   `(org-level-7 ((t (:foreground ,halcyon-dark-gray :weight normal))))
   `(org-date ((t (:foreground ,halcyon-blue))))
   `(org-agenda-date ((t (:foreground ,halcyon-black))))
   `(org-agenda-date-today ((t (:weight bold))))
   `(org-agenda-date-weekend ((t (:foreground ,halcyon-dark-gray :weight normal))))
   `(org-agenda-structure ((t (:foreground ,halcyon-black :weight normal :height 1.4))))
   `(org-time-grid ((t (:foreground ,halcyon-black))))
   `(org-table ((t (:foreground ,halcyon-black))))
   `(org-todo ((t (:foreground ,halcyon-dark-green))))
   `(org-warning ((t (:foreground ,halcyon-dark-red))))
   `(org-upcoming-deadline ((t (:foreground ,halcyon-dark-gray))))
   `(org-done ((t (:foreground ,halcyon-dark-blue))))
   `(org-agenda-done ((t (:inherit org-done))))
   `(org-agenda-current-time ((t (:foreground ,halcyon-dark-red))))
   `(org-tag ((t (:foreground ,halcyon-dark-gray :height 1.0 :weight normal))))
   `(org-special-keyword ((t (:foreground ,halcyon-dark-gray))))

   ;; diff
   `(diff-added ((t :foreground ,halcyon-dark-green)))
   `(diff-removed ((t :foreground ,halcyon-dark-red)))
   `(diff-file-header ((t :foreground ,halcyon-black :background ,halcyon-blue)))
   `(diff-header ((t :background ,halcyon-dark-white)))
   `(diff-header ((t :background ,halcyon-dark-white)))

   ;; magit
   `(magit-item-highlight ((t :background, halcyon-dark-white)))
   `(magit-log-head-label-bisect-bad ((t :foreground ,halcyon-red :background ,halcyon-red)))
   `(magit-log-head-label-bisect-good ((t :foreground ,halcyon-dark-white :background ,halcyon-dark-green)))
   `(magit-log-head-label-default ((t :foreground ,halcyon-black :background ,halcyon-dark-white)))
   `(magit-log-head-label-local ((t :foreground ,halcyon-dark-blue :background ,halcyon-blue)))
   `(magit-log-head-label-patches ((t :foreground ,halcyon-dark-magenta :background ,halcyon-blue)))
   `(magit-log-head-label-bisect-patches ((t :foreground ,halcyon-dark-magenta :background ,halcyon-blue)))
   `(magit-log-head-label-bisect-patches ((t :foreground ,halcyon-magenta :background ,halcyon-dark-white)))
   `(magit-log-head-label-tags ((t :foreground ,halcyon-dark-white :background ,halcyon-yellow)))
   `(magit-log-sha1 ((t :foreground ,halcyon-dark-red :weight bold)))

   ;; Markdown
   `(markdown-blockquote-face ((t (:inherit ,font-lock-comment-face))))
   `(markdown-header-face ((t (:foreground ,halcyon-black :weight bold))))
   `(markdown-header-rule-face ((t (:foreground ,halcyon-black))))
   `(markdown-header-delimiter-face ((t (:inherit ,font-lock-comment-face))))
   `(markdown-list-face ((t (:inherit ,font-lock-comment-face))))
   `(markdown-italic-face ((t (:foreground ,halcyon-black :slant italic))))
   `(markdown-link-face ((t (:foreground ,halcyon-magenta))))
   `(markdown-missing-link-face ((t (:foreground ,halcyon-dark-red))))
   `(markdown-reference-face ((t (:foreground ,halcyon-blue))))
   `(markdown-url-face ((t (:foreground ,halcyon-dark-green :underline t))))
   `(markdown-bold-face ((t (:foreground ,halcyon-dark-black :bold t))))

   ;; Message
   `(message-cited-text ((t (:foreground ,halcyon-dark-white))))
   `(message-header-name ((t (:foreground ,halcyon-dark-yellow))))
   `(message-header-to ((t (:foreground ,halcyon-dark-cyan))))
   `(message-header-subject ((t (:foreground ,halcyon-dark-cyan))))
   `(message-header-other ((t (:foreground ,halcyon-dark-cyan))))

   ;; Gnus
   `(gnus-header-name ((t (:foreground ,halcyon-dark-gray))))
   `(gnus-header-content ((t (:foreground ,halcyon-dark-green))))
   `(gnus-header-subject ((t (:foreground ,halcyon-dark-green))))
   `(gnus-header-from ((t (:foreground ,halcyon-dark-green))))
   `(gnus-summary-normal-ancient ((t (:foreground ,halcyon-black))))
   `(gnus-summary-normal-read ((t (:foreground ,halcyon-black))))
   `(gnus-summary-normal-ticked ((t (:foreground ,halcyon-dark-red))))
   `(gnus-summary-selected ((t :background ,halcyon-dark-white :underline nil)))
   `(gnus-group-mail-3-empty ((t :foreground ,halcyon-dark-gray)))
   `(gnus-group-news-3-empty ((t :foreground ,halcyon-dark-gray)))
   `(gnus-group-mail-3 ((t :foreground ,halcyon-black :bold t)))
   `(gnus-group-news-3 ((t :foreground ,halcyon-black :bold t)))
   `(gnus-cite-1 ((t :foreground ,halcyon-dark-gray)))
   `(gnus-cite-2 ((t :foreground ,halcyon-dark-gray)))
   `(gnus-cite-3 ((t :foreground ,halcyon-dark-gray)))
   `(gnus-cite-4 ((t :foreground ,halcyon-dark-gray)))
   `(gnus-cite-5 ((t :foreground ,halcyon-dark-gray)))

   ;; Mu4e
   `(mu4e-header-highlight-face ((t (:background ,halcyon-dark-white))))
   `(mu4e-header-key-face ((t (:foreground, halcyon-dark-gray))))
   `(mu4e-header-value-face ((t (:foreground ,halcyon-dark-green))))
   `(mu4e-special-header-value-face ((t (:foreground ,halcyon-dark-green))))
   `(mu4e-header-key-face ((t (:foreground ,halcyon-dark-white))))
   `(mu4e-contact-face ((t (:foreground ,halcyon-green))))
   `(mu4e-replied-face ((t (:foreground ,halcyon-black))))
   `(mu4e-unread-face ((t (:foreground ,halcyon-black :bold t))))
   `(mu4e-cited-1-face ((t (:foreground ,halcyon-dark-white))))
   `(mu4e-cited-2-face ((t (:foreground ,halcyon-dark-white))))
   `(mu4e-cited-3-face ((t (:foreground ,halcyon-gray))))
   `(mu4e-cited-4-face ((t (:foreground ,halcyon-gray))))
   `(mu4e-cited-5-face ((t (:foreground ,halcyon-dark-gray))))
   `(mu4e-cited-6-face ((t (:foreground ,halcyon-dark-gray))))
   ;; Deft
   `(deft-header-face ((t (:foreground ,halcyon-dark-blue :bold t))))
   `(deft-title-face ((t (:foreground ,halcyon-dark-black :bold t))))
   `(deft-time-face ((t (:foreground ,halcyon-dark-green :bold nil))))
   ;; Notmuch
   `(notmuch-search-matching-authors ((t (:foreground ,halcyon-dark-gray :slant italic))))
   ;; ERC
   `(erc-notice-face ((t (:inherit ,font-lock-comment-face))))

   ;; paredit
   `(show-paren-match ((t (:foreground ,halcyon-cyan :background ,halcyon-dark-black))))
   `(show-paren-mismatch ((t (:foreground ,halcyon-red))))

   ;; helm
   `(helm-source-header ((t (:height 1.3))))
   `(helm-selection ((t (:background ,halcyon-gray))))

   ;; powerline
   `(powerline-active1 ((t (:background ,halcyon-gray :foreground ,halcyon-black))))
   `(powerline-inactive1 ((t (:background ,halcyon-dark-white :foreground ,halcyon-dark-gray))))
   `(powerline-active2 ((t (:background ,halcyon-gray :foreground ,halcyon-black))))
   `(powerline-inactive2 ((t (:background ,halcyon-gray :foreground ,halcyon-dark-gray))))

   ;; smartparens
   `(sp-show-pair-match-face ((t (:background ,halcyon-dark-white))))

   ;; Term
   `(term ((t (:foreground ,halcyon-black :background ,halcyon-white))))
   `(term-color-black ((t (:foreground ,halcyon-black :background ,halcyon-black))))
   `(term-color-blue ((t (:foreground ,halcyon-blue :background ,halcyon-blue))))
   `(term-color-cyan ((t (:foreground ,halcyon-cyan :background ,halcyon-cyan))))
   `(term-color-green ((t (:foreground ,halcyon-green :background ,halcyon-green))))
   `(term-color-magenta ((t (:foreground ,halcyon-magenta :background ,halcyon-magenta))))
   `(term-color-red ((t (:foreground ,halcyon-red :background ,halcyon-red))))
   `(term-color-white ((t (:foreground ,halcyon-white :background ,halcyon-white))))
   `(term-color-yellow ((t (:foreground ,halcyon-yellow :background ,halcyon-yellow))))
   ;; Company
   `(company-preview ((t (:foreground ,halcyon-black :background ,halcyon-black))))
   `(company-tooltip ((t (:foreground ,halcyon-white :background ,halcyon-black))))
   `(company-tooltip-common ((t :foreground ,halcyon-dark-blue :background ,halcyon-black)))
   `(company-preview-common ((t (:foreground ,halcyon-dark-blue :background ,halcyon-black))))
   `(company-tooltip-selection ((t (:background ,halcyon-dark-blue :foreground ,halcyon-dark-black))))
   `(company-tooltip-common-selection ((t (:background ,halcyon-dark-blue :foreground ,halcyon-dark-black))))
   `(company-scrollbar-bg ((t (:background ,halcyon-dark-white))))
   `(company-scrollbar-fg ((t (:background ,halcyon-dark-gray))))))
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'halcyon-light)

;;; halcyon-light-theme.el ends here
