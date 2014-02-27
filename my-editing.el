;;; package -- Summary
;;; Define editing settings non specific to a language or filetype

;;; Commentary:

;;; Code:

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; Pressing backspace during an Isearch will delete the previous
;; character typed (or do a reverse isearch if something matches the
;; current word).  Without this, it will delete the highlighted text.
(define-key isearch-mode-map [backspace] 'isearch-delete-char)

;; Do not indent tabs
(setq indent-tabs-mode nil)

;; Comment blocks easily
(global-unset-key "\C-c\C-c")
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)

;; Use flycheck throughout all supported filetypes
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Use autopair in all supported files
(require 'autopair)
(autopair-global-mode)

(provide 'my-editing)
;;; my-editing.el ends here
