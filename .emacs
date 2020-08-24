;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Third-Party packages
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-bbdb company-eclim company-semantic company-xcode company-cmake company-capf company-files
		  (company-dabbrev-code company-gtags company-etags company-keywords)
		  company-oddmuse company-dabbrev)))
 '(company-idle-delay 0.3)
 '(custom-enabled-themes (quote (leuven)))
 '(flycheck-c/c++-gcc-executable "C:\\MinGW\\bin\\gcc.exe")
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(highlight-indent-guides-method (quote character))
 '(highlight-symbol-idle-delay 3.0)
 '(package-selected-packages (quote (highlight-indent-guides flycheck eglot company)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'after-init-hook 'global-company-mode)

;; Backend for company mode
(semantic-mode 1)

;; Activate ido-mode
(require 'ido)
(ido-mode t)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; Activate highlight-symbol mode
(require 'highlight-symbol)
(defun highlight-symbol-mode-on () (highlight-symbol-mode 1))

(define-globalized-minor-mode
global-highlight-symbol-mode
highlight-symbol-mode
highlight-symbol-mode-on)

(global-highlight-symbol-mode 1)


;; General Settings

;; Creates matching brackets
(electric-pair-mode 1)

;; Changes scroll speed for the mouse wheel
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; Silences the bell sound
(setq visible-bell t)

;; Displays the current function
(which-function-mode 1)

;; Highlight current line
(global-hl-line-mode t)

;; Display line numbers
(global-linum-mode 1)

;; Indentation for c-code
(setq c-basic-offset 4)

;; Automatically reload buffer if it is changed on disk
(global-auto-revert-mode)
