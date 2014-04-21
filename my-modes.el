;;; package --- Summary:
;;; Commentary:

;;; Code:

(defun ej-python-mode ()
  (interactive)
  (python-mode) ; Enabled key bindings here:
  (subword-mode)
  (setq tab-width 4)
  (which-function-mode 1)
  (setq indent-tabs-mode nil)
  (whitespace-mode 1)
  (projectile-global-mode)

  ;; Autocomplete
  (require 'jedi)
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:setup-keys t)
  (setq jedi:complete-on-dot t)
)

(defun ej-groovy-mode ()
  (global-font-lock-mode 1)
  (groovy-mode)
  (groovy-electric)
  (subword-mode)
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
)

(defun ej-c++-mode ()
  (interactive)
  (subword-mode)
  (setq tab-width 4)
  (which-function-mode 1)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (whitespace-mode 1)
  (projectile-global-mode)

)

;;; Set the modes as default for the appropriate files
(add-to-list 'auto-mode-alist '("\\.py\\'" . ej-python-mode))
(add-to-list 'interpreter-mode-alist '("python" . ej-python-mode))

(add-to-list 'auto-mode-alist '("\.groovy$" . ej-groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(add-to-list 'auto-mode-alist '("\\.cc\\'" . ej-c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . ej-c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . ej-c++-mode))


(setq whitespace-style (quote (face tabs trailing space-before-tab tab-mark lines)))
(setq windmove-wrap-around t)

(add-hook 'c-mode-common-hook '(lambda ()
				 ;; ac-omni-completion-sources is made buffer local so
				 ;; you need to add it to a mode hook to activate on
				 ;; whatever buffer you want to use it with.  This
				 ;; example uses C mode (as you probably surmised).

				 ;; auto-complete.el expects ac-omni-completion-sources to be
				 ;; a list of cons cells where each cell's car is a regex
				 ;; that describes the syntactical bits you want AutoComplete
				 ;; to be aware of. The cdr of each cell is the source that will
				 ;; supply the completion data.  The following tells autocomplete
				 ;; to begin completion when you type in a . or a ->

				 (add-to-list 'ac-omni-completion-sources
					      (cons "\\." '(ac-source-semantic)))
				 (add-to-list 'ac-omni-completion-sources
					      (cons "->" '(ac-source-semantic)))

				 ;; ac-sources was also made buffer local in new versions of
				 ;; autocomplete.  In my case, I want AutoComplete to use
				 ;; semantic and yasnippet (order matters, if reversed snippets
				 ;; will appear before semantic tag completions).

				 (setq ac-sources '(ac-source-semantic ac-source-yasnippet))
				 ))


(provide 'my-modes)
;;; my-modes.el ends here
