;;; overcast-theme.el --- A dark but vibrant color theme for Emacs

;; This file is not part of Emacs

;; Author: Mohammed Ismail Ansari <team.terminal@gmail.com>
;; Keywords: theme
;; Maintainer: Mohammed Ismail Ansari <team.terminal@gmail.com>
;; Created: 2018/02/15
;; Package-Requires: ((emacs "24"))
;; Description: A dark but vibrant color theme for Emacs
;; URL: http://ismail.teamfluxion.com
;; Compatibility: Emacs24
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.

;; COPYRIGHT NOTICE
;;
;; This program is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2 of the License, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
;; or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
;; for more details.
;;

;;; Install:

;; Put this file on your Emacs-Lisp load path and add the following to your
;; ~/.emacs startup file
;;
;;     (require 'overcast-theme)
;;
;; Enable the theme with
;;
;;     (load-theme 'overcast)
;;

;;; Commentary:

;;     A dark but vibrant color theme for Emacs.
;;
;;  Overview of features:
;;
;;     o   Dark, vibrant
;;

;;; Code:

(deftheme overcast)
(let ((class '((class color) (min-colors 89)))

      (color-primary "#d9ffff")
      (fg2 "#c8ebeb")
      (fg3 "#b6d6d6")
      (fg4 "#a5c2c2")

      (bgcolor-primary "#001c1c")
      (bg2 "#142e2e")
      (bg3 "#294040")
      (bg4 "#3d5252")

      (color-black "black")
      (color-blue "blue")
      (color-red "red")
      (color-green "green")
      (color-yellow "yellow")
      (color-magenta "magenta")
      (color-cyan "cyan")
      (color-white "white")

      (color-cursor "white")

      (color-builtin "#9dff9d")
      (color-keyword "#c7c7c7")
      (color-const   "#ffffb0")
      (color-comment "#005353")
      (color-func    "#9dff9d")
      (color-str     "#ffbc79")
      (color-type    "#e4a6ff")
      (color-var     "#00eaea")
      (color-warning "#ff0000")
      (color-warning2 "#ff8000"))
  (custom-theme-set-faces
   'overcast

   ;; Default
   `(default ((,class (:background ,bgcolor-primary :foreground ,color-primary))))
   `(font-lock-builtin-face ((,class (:foreground ,color-builtin))))
   `(font-lock-comment-face ((,class (:foreground ,color-comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,color-const))))
   `(font-lock-reference-face ((,class (:foreground ,color-const))))
   `(font-lock-constant-face ((,class (:foreground ,color-const))))
   `(font-lock-doc-face ((,class (:foreground ,color-comment))))
   `(font-lock-function-name-face ((,class (:foreground ,color-func ))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,color-keyword))))
   `(font-lock-string-face ((,class (:foreground ,color-str))))
   `(font-lock-type-face ((,class (:foreground ,color-type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,color-var))))
   `(font-lock-warning-face ((,class (:foreground ,color-warning :background ,bg2))))

   ;; Editing
   `(region ((,class (:background ,color-primary :foreground ,bgcolor-primary))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background  ,bg2))))
   `(fringe ((,class (:background ,bg2 :foreground ,fg4))))
   `(cursor ((,class (:background ,bg3))))
   `(show-paren-match-face ((,class (:background ,color-warning))))
   `(isearch ((,class (:bold t :foreground ,color-warning :background ,bg3))))

   ;; Modeline
   `(mode-line ((,class (:box (:line-width 1 :color nil) :bold t :foreground ,fg4 :background ,bg2))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button) :foreground ,color-var :background ,bgcolor-primary :weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,color-func :background nil))))
   `(mode-line-highlight ((,class (:foreground ,color-keyword :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,color-primary))))

   ;; Misc
   `(vertical-border ((,class (:foreground ,fg3))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,color-keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,color-const :underline t))))

   ;; Org
   `(org-code ((,class (:foreground ,fg2))))
   `(org-hide ((,class (:foreground ,fg4))))
   `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,fg3))))
   `(org-level-3 ((,class (:bold t :foreground ,fg4))))
   `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
   `(org-date ((,class (:underline t :foreground ,color-var) )))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-link ((,class (:underline t :foreground ,color-type ))))
   `(org-special-keyword ((,class (:foreground ,color-func))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,color-keyword :bold t))))
   `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
   `(org-warning ((,class (:underline t :foreground ,color-warning))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,color-var :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,color-keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,color-type))))
   `(org-scheduled-today ((,class (:foreground ,color-func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,color-builtin))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-document-info-keyword ((,class (:foreground ,color-func))))
   `(org-sexp-date ((,class (:foreground ,fg4))))

   ;; LaTex
   `(font-latex-bold-face ((,class (:foreground ,color-type))))
   `(font-latex-italic-face ((,class (:foreground ,color-var :italic t))))
   `(font-latex-string-face ((,class (:foreground ,color-str))))
   `(font-latex-match-reference-color-keywords ((,class (:foreground ,color-const))))
   `(font-latex-match-variable-color-keywords ((,class (:foreground ,color-var))))

   ;; Ido
   `(ido-only-match ((,class (:foreground ,color-warning))))
   `(ido-first-match ((,class (:foreground ,color-keyword :bold t))))

   ;; gnus
   `(gnus-header-content ((,class (:foreground ,color-keyword))))
   `(gnus-header-from ((,class (:foreground ,color-var))))
   `(gnus-header-name ((,class (:foreground ,color-type))))
   `(gnus-header-subject ((,class (:foreground ,color-func :bold t))))

   ;; mu4e
   `(mu4e-view-url-number-face ((,class (:foreground ,color-type))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,color-type))))

   ;; ffap
   `(ffap ((,class (:foreground ,fg4))))

   ;; js2
   `(js2-private-function-call ((,class (:foreground ,color-const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,color-str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,color-var))))
   `(js2-external-variable ((,class (:foreground ,color-type  ))))
   `(js2-function-param ((,class (:foreground ,color-const))))
   `(js2-jsdoc-value ((,class (:foreground ,color-str))))
   `(js2-private-member ((,class (:foreground ,fg3))))

   ;; js3
   `(js3-warning-face ((,class (:underline ,color-keyword))))
   `(js3-error-face ((,class (:underline ,color-warning))))
   `(js3-external-variable-face ((,class (:foreground ,color-var))))
   `(js3-function-param-face ((,class (:foreground ,fg2))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,color-keyword))))
   `(js3-instance-member-face ((,class (:foreground ,color-const))))

   ;; Warning
   `(warning ((,class (:foreground ,color-warning))))

   ;; ac
   `(ac-completion-face ((,class (:underline t :foreground ,color-keyword))))
   `(info-quoted-name ((,class (:foreground ,color-builtin))))
   `(info-string ((,class (:foreground ,color-str))))
   `(icompletep-determined ((,class :foreground ,color-builtin)))

   ;; Undo tree
   `(undo-tree-visualizer-current-face ((,class :foreground ,color-builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,color-var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,color-type)))

   ;; Slime
   `(slime-repl-inputed-output-face ((,class (:foreground ,color-type))))

   ;; Trailing whitespaces
   `(trailing-whitespace ((,class :foreground nil :background ,color-warning)))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,color-primary)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,color-type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,color-var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,color-const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,color-keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,color-primary)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,color-type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,color-var)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,color-warning)))

   ;; Magit
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-section-heading        ((,class (:foreground ,color-keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-section-highlight      ((,class (:background ,bg2))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diffstat-added   ((,class (:foreground ,color-type))))
   `(magit-diffstat-removed ((,class (:foreground ,color-var))))
   `(magit-process-ok ((,class (:foreground ,color-func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,color-warning :weight bold))))
   `(magit-branch ((,class (:foreground ,color-const :weight bold))))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))

   ;; Lazy highlight
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   ;; Term
   `(term ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,color-func :background ,color-func))))
   `(term-color-red ((,class (:foreground ,color-keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,color-type :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,color-var :background ,color-var))))
   `(term-color-magenta ((,class (:foreground ,color-builtin :background ,color-builtin))))
   `(term-color-cyan ((,class (:foreground ,color-str :background ,color-str))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))

   ;; Helm
   `(helm-header ((,class (:foreground ,fg2 :background ,bgcolor-primary :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,color-keyword :background ,bgcolor-primary :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground ,bgcolor-primary :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,bgcolor-primary :background ,color-primary))))
   `(helm-separator ((,class (:foreground ,color-type :background ,bgcolor-primary))))
   `(helm-time-zone-current ((,class (:foreground ,color-builtin :background ,bgcolor-primary))))
   `(helm-time-zone-home ((,class (:foreground ,color-type :background ,bgcolor-primary))))
   `(helm-buffer-not-saved ((,class (:foreground ,color-type :background ,bgcolor-primary))))
   `(helm-buffer-process ((,class (:foreground ,color-builtin :background ,bgcolor-primary))))
   `(helm-buffer-saved-out ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(helm-buffer-size ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(helm-ff-directory ((,class (:foreground ,color-func :background ,bgcolor-primary :weight bold))))
   `(helm-ff-file ((,class (:foreground ,color-primary :background ,bgcolor-primary :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,color-var :background ,bgcolor-primary :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,color-warning2 :background ,bgcolor-primary :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,color-keyword :background ,bgcolor-primary :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bgcolor-primary :background ,color-keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(helm-grep-file ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bgcolor-primary))))
   `(helm-grep-lineno ((,class (:foreground ,color-primary :background ,bgcolor-primary))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,color-func :background ,bgcolor-primary))))
   `(helm-moccur-buffer ((,class (:foreground ,color-func :background ,bgcolor-primary))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,color-str))))
   `(helm-bookmark-w3m ((,class (:foreground ,color-type))))

   ;; Company
   `(company-echo-common ((,class (:foreground ,bgcolor-primary :background ,color-primary))))
   `(company-preview ((,class (:background ,bgcolor-primary :foreground ,color-var))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,color-type :background ,bgcolor-primary))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,color-keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bgcolor-primary :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,color-const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,color-str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))

   ;; Web-mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,color-keyword))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,color-str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,color-func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,color-keyword))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,color-builtin))))

   ;; jde
   `(jde-java-font-lock-package-face ((t (:foreground ,color-var))))
   `(jde-java-font-lock-public-face ((t (:foreground ,color-keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,color-keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,color-const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,fg2))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,color-keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,color-var))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'overcast)

;; Local Variables:
;; no-byte-compile: t
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; End:

;;; overcast-theme.el ends here
