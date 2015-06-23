(add-to-list 'load-path "/home/sb/.emacs.d/")


;; Theme using Solarized.  Logic is in case I switch to Emacs 24.
;; From http://www.xorcode.com/2011/04/11/solarized-vim-eclipse-ubuntu/
(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(if
    (equal 0 (string-match "^24" emacs-version))
    ;; it's emacs24, so use built-in theme
    (require 'solarized-dark-theme)
  ;; it's NOT emacs24, so use color-theme
  (progn
    (require 'color-theme)
    (color-theme-initialize)
    (require 'color-theme-solarized)
    (color-theme-solarized-dark)))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; never insert tabs ... always spaces
(setq-default indent-tabs-mode nil)

(load-file "~/.emacs.d/graphviz-dot-mode.el")

(add-to-list 'load-path "~/.emacs.d/scala-emacs")
(add-to-list 'load-path "~/.emacs.d/ensime_2.10.0-0.9.8.5")
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(require 'scala-mode-auto)

(add-hook 'scala-mode-hook
            '(lambda ()
           (scala-mode-feature-electric-mode)
               ))
