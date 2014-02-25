;;; package -- Summary
;;; The initial emacs lisp script for launching EJ's Emacs config

;;; Commentary:

;;; Code:

;; Include all subdirs of .emacs
(let ((default-directory "~/.emacs.d/"))
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
(require 'my-projects)
(require 'my-moving)
(require 'my-modes)
(require 'my-editing)
(require 'my-languages)
;;; init.el ends here
