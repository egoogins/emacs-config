;;; package --- Summary:
;;; Commentary:

;;; Code:

(defun ej-python-mode ()
  (interactive)
  (python-mode)
  (subword-mode)
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (which-function-mode 1)
  (setq indent-tabs-mode nil)
  (whitespace-mode 1)
  (projectile-global-mode)
)

;;; Set the modes as default for the appropriate files
(add-to-list 'auto-mode-alist '("\\.py\\'" . ej-python-mode))
(add-to-list 'interpreter-mode-alist '("python" . ej-python-mode))

(setq whitespace-style (quote (face tabs trailing space-before-tab tab-mark lines)))
(setq windmove-wrap-around t)

(provide 'my-modes)
;;; my-modes.el ends here
