;;; package --- Summary:
;;; Commentary:

;;; Code:

(defun ej-python-mode ()
  (interactive)
  (ido-mode)
  (python-mode)
  (subword-mode)
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (which-function-mode t)
  (setq indent-tabs-mode nil)
  (whitespace-mode t)
)

;;; Set the modes as default for the appropriate files
(setq auto-mode-alist (append '(("\\.py$" . jack-python-mode)
				) auto-mode-alist))


(setq whitespace-style (quote (face tabs trailing space-before-tab tab-mark lines)))
(setq windmove-wrap-around t)

(provide 'my-modes)
;;; my-modes.el ends here
