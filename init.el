;;; package -- Summary
;;; The initial emacs lisp script for launching EJ's Emacs config

;;; Commentary:

;;; Code:

;; Include all subdirs of .emacs
(let ((default-directory "~/.emacs.d/emacs-config"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

;; Use packages from melpa and marmalade
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Disable automatic package loading
(setq package-enable-at-startup nil)
;; Initialize melpa and marmalade
(package-initialize)

(require 'my-packages)
(require 'my-colors)
(require 'my-vcs)
(require 'my-editing)
(require 'my-languages)
(require 'my-moving)
(require 'my-modes)
(require 'my-optimization)
(require 'my-shortcuts)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/home/ej/fmvot"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
