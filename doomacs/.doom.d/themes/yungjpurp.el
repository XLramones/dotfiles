
:config;Ioskvem


(defun stylize-Iosvkem ()
(interactive)
(progn
;(set-face-attribute 'tab-bar nil :background "#081530" :foreground "#808080" :box '(:line-width 4 :color "#373b49" :style pressed-button))
;(set-face-attribute 'tab-bar nil :background "#081530" :foreground "#808080" :box '(:line-width 1 :color "#808080" :style pressed-button))
;(set-face-attribute 'tab-bar-tab-inactive nil :background "#081530" :foreground "#808080" :underline nil :box '(:line-width 4 :color "#373b49" :style pressed-button))
;(set-face-attribute 'tab-bar-tab nil :background "#081530" :foreground "white" :width 'semi-expanded :box  '(:line-width 4 :color "#373b49" :style pressed-button))
;dired
(set-face-attribute 'all-the-icons-dired-dir-face nil :background "#1b1d1e" :foreground "#ff6fff")
(set-face-attribute 'dired-filetype-execute nil :background "#1b1d1e" :foreground "#bbfc20")
(set-face-attribute 'dired-filetype-xml nil :background "#1b1d1e" :foreground "#04d2f7")
(set-face-attribute 'dired-filetype-js nil :background "#1b1d1e" :foreground "#60aa00")
(set-face-attribute 'dired-filetype-common nil :background "#1b1d1e" :foreground "#d02b61")
(set-face-attribute 'dired-filetype-image nil :background "#1b1d1e" :foreground "#f546a6")
(set-face-attribute 'dired-filetype-source nil :background "#1b1d1e" :foreground "#a61fde")
(set-face-attribute 'dired-filetype-link nil :background "#1b1d1e" :foreground "#f2cf04")
(set-face-attribute 'dired-filetype-plain nil :background "#1b1d1e" :foreground "#20bbfc")
(set-face-attribute 'diredp-dir-name nil :background "#1b1d1e" :foreground "#20bbfc")
(set-face-attribute 'dired-filetype-mytype nil :background "#1b1d1e" :foreground "#b5006a")
;font-lock
(set-face-attribute 'font-lock-comment-face nil :background "#1b1d1e" :foreground "#5f6368")
;(set-face-attribute 'font-lock-function-name-face nil :background "#1b1d1e" :foreground "#5f6368")
(set-face-attribute 'font-lock-builtin-face nil :background "#1b1d1e" :foreground "#608fb1")
(set-face-attribute 'font-lock-string-face nil :background "#1b1d1e" :foreground "#bbfc20")
(set-face-attribute 'font-lock-keyword-face nil :background "#1b1d1e" :foreground "#06c6f5")
;org-block
(set-face-attribute 'default nil :background "#1b1d1e")

(set-face-attribute 'org-document-title nil :background "#1b1d1e" :foreground "#bbfc20")
(set-face-attribute 'org-block nil :background "#1b1d1e" :foreground "#dfe2f1")
(set-face-attribute 'org-block-end-line nil :background "#1b1d1e" :foreground "#808080")
(set-face-attribute 'org-block-begin-line t :background "#1b1d1e" :foreground "#808080")
(set-face-attribute 'org-level-1 nil :background "#1b1d1e" :foreground "#068fc4")
(set-face-attribute 'org-level-2 nil :background "#1b1d1e" :foreground "#99bf52")
(set-face-attribute 'org-level-3 nil :background "#1b1d1e" :foreground "#ff6fff")
(set-face-attribute 'org-level-4 nil :background "#1b1d1e" :foreground "#f2cf04")
;(set-face-attribute 'org-code nil :background "#e8f1d4" :foreground "#0b0b0b")
;(set-face-attribute 'org-meta-line nil :background "#fdf6e3" :foreground "#123555")
;(set-face-attribute 'org-ellipsis nil :background "#fdf6e3" )
(set-face-attribute 'org-date nil :foreground "#b5006a" )

;(set-face-attribute 'org-code nil :background "#e8f1d4" :foreground "#0b0b0b")
;(set-face-attribute 'org-meta-line nil :background "#1b1d1e" :foreground "#123555")
;default
(set-face-attribute 'region nil :background "#262829" :foreground "#dddddd")
;(set-face-attribute 'highlight-parentheses-highlight nil :background "#e8f1d4" :foreground "#061229")
(set-face-attribute 'show-paren-match-expression nil :background "#262829" :inherit nil)
(set-face-attribute 'show-paren-match nil :background "#1b1d1e" :foreground "#b5006a" :inherit nil)
;webmode
(set-face-attribute 'web-mode-html-attr-name-face nil :background "#1b1d1e" :foreground "#068fc4")
(set-face-attribute 'web-mode-html-attr-value-face nil :background "#1b1d1e" :foreground "#99bf52")
(set-face-attribute 'web-mode-html-attr-equal-face nil :background "#1b1d1e" :foreground "#f546a6")
(set-face-attribute 'web-mode-comment-face nil :background "#1b1d1e" :foreground "#608fb1")
(set-face-attribute 'web-mode-style-face nil :background "#1b1d1e" :foreground "#a61fde")
(set-face-attribute 'web-mode-variable-name-face nil :background "#1b1d1e" :foreground  "#3c5be9")
(set-face-attribute 'web-mode-script-face nil :background "#1b1d1e" :foreground "#b77fdb" )
(set-face-attribute 'web-mode-html-tag-face nil :background "#1b1d1e" :foreground "#79f1f7")
(set-face-attribute 'web-mode-current-element-highlight-face nil :background "#1b1d1e" :foreground "#fe3301")
(set-face-attribute 'web-mode-current-column-highlight-face nil :background "#262829" :foreground "#79f1f7")
(set-face-attribute 'web-mode-html-tag-bracket-face nil :background "#1b1d1e" :foreground "#79f1f7")
(set-face-attribute 'web-mode-folded-face nil :background "#1b1d1e" :foreground "#ff6fff")
(set-face-attribute 'web-mode-html-entity-face nil :background "#1b1d1e" :foreground "#f7a300")
;web-mode json
(set-face-attribute 'web-mode-part-face nil :background "#1b1d1e" :foreground "#b5006a")
(set-face-attribute 'web-mode-json-string-face nil :background "#1b1d1e" :foreground "#3c5be9")
(set-face-attribute 'web-mode-json-key-face nil :background "#1b1d1e" :foreground "#bbfc20")

;rainbow-delimeters
(set-face-attribute 'rainbow-delimiters-unmatched-face nil :background "#bbfc20"  :foreground "#1b1d1e" )
;(set-face-attribute 'rainbow-delimiters-mismatched-face nil :background "#061229"  :foreground "#2C942C")
;company (tooltip bacgkround and foreground need to be unique)
(set-face-attribute 'company-tooltip nil :background "#263146"  :foreground "#ddddde" :inherit nil)
(set-face-background 'company-tooltip "#263146")
(set-face-foreground 'company-tooltip "#ddddde")
(setq pbg-swap '(background-color . "#263146"))
(setq pfg-swap '(foreground-color . "#ddddde"))
(and (not (equal pbg-color pbg-swap)) (not (equal pfg-color pfg-swap))
(progn
(replace-element-in-list pbg-color pbg-swap  company-box-frame-parameters)
(replace-element-in-list pfg-color pfg-swap  company-box-frame-parameters)
));end check frame swap loop
(setq pbg-color '(background-color . "#263146"))
(setq pfg-color '(foreground-color . "#ddddde"))
;company
(set-face-attribute 'company-tooltip-common t :background "#263145"  :foreground "#6c9ef8" :inherit nil )
(set-face-attribute 'company-box-candidate t :background "#263145"  :foreground "#20bbfc" :inherit nil)
(set-face-attribute 'company-box-annotation t :background "#263145"  :foreground "#5699AF" :inherit nil)
;(set-face-attribute 'company-tooltip-common-selection t :background "#4d5666"  :foreground "#99bf52" :inherit nil)
(set-face-attribute 'company-box-selection t :background "#464f60"  :foreground "#dddddd" :inherit nil )
;(set-face-attribute 'company-box-scrollbar t :background "#263145" :foreground "#d02b61" :inherit nil)
;hydra-posframe
(set-face-attribute 'hydra-posframe-border-face nil :background "#ffffff"  :foreground "#ffffff" )
(set-face-attribute 'hydra-posframe-face nil :background "#1b1d1e"  :foreground "#dddddd" )
(set-face-attribute 'pretty-hydra-toggle-off-face nil :background "#1b1d1e" :foreground "#b77fdb")
(set-face-attribute 'pretty-hydra-toggle-on-face nil :background "#1b1d1e" :foreground "#b77fdb")
;popup
(set-face-attribute 'popup-scroll-bar-foreground-face nil :background "#464f60" :inherit nil)
(set-face-attribute 'popup-scroll-bar-background-face nil :background "#263146" :inherit nil )
(set-face-attribute 'popup-menu-selection-face nil :inherit nil :background "#464f60" :foreground "#ffffff" )
(set-face-attribute 'popup-face nil :inherit nil :background "#263146" :foreground "#ffffff" )
;neo
;(set-face-attribute 'neo-file-link-face nil :background "#fdf6e3" :foreground "#8D8D84")
;(set-face-attribute 'neo-dir-link-face nil :background "#fdf6e3" :foreground "#0000FF")
;(set-face-attribute 'neo-root-dir-face nil :background "#fdf6e3" :foreground "#BA36A5")
;(set-face-attribute 'neo-root-dir-face nil :background "#fdf6e3" :foreground "#fff")
;rainbow identifiers
(set-face-attribute 'rainbow-identifiers-identifier-1 nil  :background "#1b1d1e" :foreground "#ff6fff")
(set-face-attribute 'rainbow-identifiers-identifier-2 nil  :background "#1b1d1e" :foreground "#2C942C")
(set-face-attribute 'rainbow-identifiers-identifier-3 nil  :background "#1b1d1e" :foreground "#b5006a")
(set-face-attribute 'rainbow-identifiers-identifier-4 nil  :background "#1b1d1e" :foreground "#5B6268")
(set-face-attribute 'rainbow-identifiers-identifier-5 nil  :background "#1b1d1e" :foreground "#0C4EA0")
(set-face-attribute 'rainbow-identifiers-identifier-6 nil  :background "#1b1d1e" :foreground "#99bf52")
(set-face-attribute 'rainbow-identifiers-identifier-7 nil  :background "#1b1d1e" :foreground "#a61fde")
(set-face-attribute 'rainbow-identifiers-identifier-8 nil  :background "#1b1d1e" :foreground "#dddddd")
(set-face-attribute 'rainbow-identifiers-identifier-9 nil  :background "#1b1d1e" :foreground "#00aa80")
(set-face-attribute 'rainbow-identifiers-identifier-11 nil  :background "#1b1d1e" :foreground "#bbfc20")
(set-face-attribute 'rainbow-identifiers-identifier-12 nil  :background "#1b1d1e" :foreground "#6c9ef8")
(set-face-attribute 'rainbow-identifiers-identifier-13 nil  :background "#1b1d1e" :foreground "#dd8844")
(set-face-attribute 'rainbow-identifiers-identifier-14 nil  :background "#1b1d1e" :foreground "#991613")
(set-face-attribute 'rainbow-identifiers-identifier-15 nil  :background "#1b1d1e" :foreground "#dddddd")
;(set-face-attribute 'rainbow-identifiers-identifier-16 t  :background "#1b1d1e" :foreground "#a9a1e1")
(setq zoom-window-mode-line-color "#263146")
;calendar
;(set-face-attribute 'cfw:face-title nil :background "#081530" :foreground "#bbfc20" :height 3 :weight 'bold)
;(set-face-attribute 'cfw:face-header nil :background "#e5e5e5" :foreground "#d0bf8f" )
;(set-face-attribute 'cfw:face-sunday nil :background "#e5e5e5" :foreground "#991613" :weight 'bold)
;(set-face-attribute 'cfw:face-saturday nil :background "#e5e5e5" :foreground "#b5006a" :weight 'bold)
;(set-face-attribute 'cfw:face-holiday nil :background "#fdf6e3" :foreground "#06c6f5" :weight 'bold)
;(set-face-attribute 'cfw:face-grid nil :foreground "DarkGrey")
;(set-face-attribute 'cfw:face-default-content nil :foreground "#bfebbf")
;(set-face-attribute 'cfw:face-periods nil :foreground "cyan")
;(set-face-attribute 'cfw:face-day-title nil :background "#fdf6e3" )
;(set-face-attribute 'cfw:face-default-day nil :weight 'bold :inherit 'cfw:face-day-title)
;(set-face-attribute 'cfw:face-annotation nil :foreground "RosyBrown" :inherit  'cfw:face-day-title)
(set-face-attribute 'cfw:face-disable nil :foreground "DarkGray" :inherit 'cfw:face-day-title)
(set-face-attribute 'cfw:face-today-title nil :background "#464849" :weight 'bold)
(set-face-attribute 'cfw:face-today nil :background "#464849" :weight 'bold)
;(set-face-attribute 'cfw:face-select nil :background "#bbfc20")
;(set-face-attribute 'cfw:face-toolbar nil :background "#fdf6e3" :foreground "Steelblue4" )
;(set-face-attribute 'cfw:face-toolbar-button-off nil :background "#fdf6e3" :foreground "#5B6268" :weight 'bold)
;(set-face-attribute 'cfw:face-toolbar-button-on nil :background "#fdf6e3" :foreground "#608fb1" :weight 'bold)
);end progn
);end load-Iosvkem
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
doom-themes-enable-italic t) ; if nil, italics is universally disabled
;(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!
; Enable flashing mode-line on errors
;(doom-themes-visual-bell-config t)
);end-doom-themes

