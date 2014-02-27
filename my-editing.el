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

;; -- Cite: http://www.emacswiki.org/emacs/AutoIndentation#toc2 --

;; Autoindent newlines
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'lisp-mode-hook 'set-newline-and-indent)

;; Indent on 'electric' keys
(electric-indent-mode 1)

;; Auto-indent pasted/yanked code
(dolist (command '(yank yank-pop))
   (eval `(defadvice ,command (after indent-region activate)
            (and (not current-prefix-arg)
                 (member major-mode '(emacs-lisp-mode lisp-mode
                                                      clojure-mode    scheme-mode
                                                      haskell-mode    ruby-mode
                                                      rspec-mode      python-mode
                                                      c-mode          c++-mode
                                                      objc-mode       latex-mode
                                                      plain-tex-mode))
                 (let ((mark-even-if-inactive transient-mark-mode))
                   (indent-region (region-beginning) (region-end) nil))))))

;; -- End Cite

;; Delete any trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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
