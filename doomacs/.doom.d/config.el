;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Joshua Baillie"
      user-mail-address "joshthepathfinder@protonmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-shades-of-purple)
;;(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-sourcerer)
;;(setq doom-theme 'doom-ir-black)
(setq doom-theme 'doom-laserwave)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The except ions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented

;; yungj configs



(setq fancy-splash-image "~/Resources/theme/scaryemac.png")
(menu-bar--display-line-numbers-mode-relative)

;;zettelkasten setup
(vertico-mode)
;;(setq completion-styles '(orderless)')
(require 'zk)
(setq zk-id-time-string-format "%Y%m%d%H%M%S"
      zk-link-and-title-format "( [[%i]] %t )"
      zk-id-regexp "\\([0-9]\\{14\\}\\)"
      zk-link-regexp "\\([0-9]\\{14\\}\\)"
      zk-link-format "[[%s]]"
      )

(use-package zk
  :custom
  (zk-directory "~/yungjbrain/")
  (zk-file-extension "org" )
  (zk-id-regexp "\\([0-9]\\{14\\}\\)")
  :config
  (zk-setup-auto-link-buttons)
  (zk-setup-embark)
(defun zk-org-try-to-follow-link (fn &optional arg)
  "When 'org-open-at-point' FN fails, try 'zk-follow-link-at-point'.
Optional ARG."
  (let ((org-link-search-must-match-exact-headline t))
    (condition-case nil
	(apply fn arg)
      (error (zk-follow-link-at-point)))))
(add-hook 'completion-at-point-functions #'zk-completion-at-point 'append)
(advice-add 'org-open-at-point :around #'zk-org-try-to-follow-link))
(setq org-directory "~/yungjbrain/")
;; org mode config
;; Show images when opening a file.
(setq org-startup-with-inline-images t)
;; Show images after evaluating code blocks.
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
;; render latex preview after evaluating code blocks
;; (add-hook 'org-babel-after-execute-hook 'org-latex-preview)
;; disable prompt when executing code block in org mode
(setq org-confirm-babel-evaluate nil)
;; enable more code block languages for org mode
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (js . t)
   (lisp . t)
   (java . t)
   (latex . t)
   (C . t)
   (shell . t)
   (lua . t)))
;; require org-tempo to enable <s expansion
(require 'org-tempo)
;; make org babel default to python3
(setq org-babel-python-command "python3")
;; increase org table max lines
(setq org-table-convert-region-max-lines 10000)

(defun run-command-show-output (cmd)
  "run shell command and show continuous output in new buffer"
  (interactive)
  (progn
    (start-process-shell-command cmd cmd cmd)
    (display-buffer cmd)
    (end-of-buffer-other-window nil)))
;; harpoon


;; sage math

(use-package ob-sagemath
  :config
  ;; Ob-sagemath supports only evaluating with a session.
  (setq org-babel-default-header-args:sage '((:session . t)
                                             (:results . "drawer")))
  (setq sage-shell:input-history-cache-file "~/Archive/cache/sage_history")
  (add-hook 'sage-shell-after-prompt-hook #'sage-shell-view-mode))


(defun current-filename ()
  (file-name-sans-extension
   (file-name-nondirectory (buffer-file-name))))

(defun get-latex-cache-dir-path ()
  "return the path for the directory that contains the compiled pdf latex documents"
  (interactive)
  (setq dir-path (concat (expand-file-name user-emacs-directory) "latex/"))
  (ignore-errors (make-directory dir-path))
  dir-path)

(defun compile-latex-file (path)
  (start-process-shell-command "latex" "latex" (format "pdflatex -shell-escape -output-directory=%s %s" (get-latex-cache-dir-path) path)))
  ;; the minted library annoyingly creates directories named _minted-something, get rid of those
  ;;(run-at-time "4 sec" nil #'call-process-shell-command "rmdir _minted-*"))

(defun compile-current-document ()
  "compile the current latex document being edited"
  (interactive)
  (compile-latex-file (buffer-file-name)))

(defun open-current-document ()
  "open the pdf of the current latex document that was generated"
  (interactive)
  (find-file-other-window (concat (get-latex-cache-dir-path) (concat (current-filename) ".pdf"))))
(defun open-current-document-this-window ()
  (interactive)
  (find-file (concat (get-latex-cache-dir-path) (concat (current-filename) ".pdf"))))

(evil-define-key 'normal 'TeX-mode-map (kbd "SPC v") 'open-current-document)
(evil-define-key 'normal 'TeX-mode-map (kbd "SPC V") 'open-current-document-this-window)

(defun compile-sagetex-command ()
  "return the command needed to compile sagetex"
  (interactive)
  (setq first-pdflatex-command (concat "(" (concat (concat (concat "pdflatex --synctex=1 -output-directory=" (concat (get-latex-cache-dir-path) " ")) (buffer-file-name)) ";")))
  (setq last-pdflatex-command (concat (concat (concat "pdflatex --synctex=1 -output-directory=" (concat (get-latex-cache-dir-path) " ")) (buffer-file-name)) ")"))
  (concat first-pdflatex-command (concat (concat "(cd " (concat (get-latex-cache-dir-path) (concat "; sage " (concat (current-filename) ".sagetex.sage);")))) last-pdflatex-command)))
(defun compile-sagetex ()
  "compile the current latex document with support for sagetex"
  (interactive)
  (start-process-shell-command "latex" "latex" (compile-sagetex-command)))

;; theme
;;(require 'xresources-theme)
;; (require 'doom-themes)

;; dmenu like functions
(defun search-open-file (directory-path regex)
  "search for a file recursively in a directory and open it"
  "search for file and open it similar to dmenu"
  (interactive)
  (let ((my-file (ivy-completing-read "select file: " (directory-files-recursively directory-path regex))))
    (browse-url (expand-file-name my-file))))

(defun search-open-file-in-emacs (directory-path regex)
  "search for a file recursively in a directory and open it in emacs"
  (let ((my-file (ivy-completing-read "select file: " (directory-files-recursively directory-path regex))))
    (find-file (expand-file-name my-file) "'")))

;; keybinds
;; keys to search for files
(define-key evil-normal-state-map (kbd "SPC e c")
            (lambda () (interactive) (search-open-file "~/Files/CSC1016S/" ".*\\(pdf\\|tex\\|doc\\|mp4\\|png\\)")))
(define-key evil-normal-state-map (kbd "SPC E c")
            (lambda () (interactive)
              (search-open-file-in-emacs "~/Files/CSC1016S/" ".*\\(pdf\\|tex\\|doc\\|org\\)")))
(define-key evil-normal-state-map (kbd "SPC e p")
            (lambda () (interactive) (search-open-file "~/Projects/" "")))
(define-key evil-normal-state-map (kbd "SPC e b")
            (lambda () (interactive) (search-open-file "~/Calibre Library/" "")))
(define-key evil-normal-state-map (kbd "SPC e d")
            (lambda () (interactive) (search-open-file "~/Resources/" "")))
(define-key evil-normal-state-map (kbd "SPC E d")
            (lambda () (interactive)
              (search-open-file-in-emacs "~/data" "")))

(general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d w" (lambda () (interactive) (dired "~/Downloads/")))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d a" (lambda () (interactive) (dired "~/Resources/")))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d c" (lambda () (interactive) (dired "~/yungjbrain/")))
      ;; (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d l" (lambda () (interactive) (dired (get-latex-cache-dir-path))))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d r" (lambda () (interactive) (dired "~/Files/")))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d h" (lambda () (interactive) (dired "~/")))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC d d" 'dired)

      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC n e" (lambda () (interactive) (zk-new-note)))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC n f" (lambda () (interactive) (zk-find-file)))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC n i" (lambda () (interactive) (zk-insert-link)))
      (general-define-key :states '(normal motion emacs) :keymaps 'override "SPC n p" (lambda () (interactive) (zk-copy-link-and-title)))
;; Global settings (defaults)
;; (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      ;; doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.

;; Enable flashing mode-line on errors
;; (doom-themes-visual-bell-config)

;; Enable custom neotree theme
;; (doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
;; (doom-themes-org-config)

;; (setq doom-theme 'xresources-theme)
;; (custom-set-faces!
;;  '(doom-dashboard-banner :foreground "red" :background "#141022" :weight bold)
;;  '(doom-dashboard-footer :inherit font-lock-constant-face)
;;  '(doom-dashboard-footer-icon :inherit all-the-icons-red)
;;  '(doom-dashboard-loaded :inherit font-lock-warning-face)
;;  '(doom-dashboard-menu-desc :inherit font-lock-string-face)
;;  '(doom-dashboard-menu-title :inherit font-lock-function-name-face))
;; (custom-set-faces   '(default ((t (:background "#141022")))))
;;(face-spec-set 'doom-dashboard-banner '((t (:inherit doom-dashboard-banner :background "#141022"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
;;(face-spec-set 'tree-sitter-hl-face:function.call '((t (:inherit tree-sitter-hl-face:function.call :foreground "#"))))
