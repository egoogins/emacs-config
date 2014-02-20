(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))


;; Maintain single emacs instance
(server-start)

;; Use packages from melpa or marmalade
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
