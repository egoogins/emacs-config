;;; Define editing settings non specific to a language or filetype

;; Pressing backspace during an Isearch will delete the previous
;; character typed (or do a reverse isearch if something matches the
;; current word).  Without this, it will delete the highlighted text.
(define-key isearch-mode-map [backspace] 'isearch-delete-char)

(setq indent-tabs-mode nil)

(global-unset-key "\C-c\C-c")
(global-set-key "\C-c\C-c" 'comment-or-uncomment-region)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'my-editing)
