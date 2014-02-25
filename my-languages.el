;;; Con

;; ---- Python Configurations ---- ;;

(require 'autopair)
(add-hook 'python-mode-hook #'(lambda () (autopair-mode)))

(require 'jedi)
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:complete-on-dot t)

(provide 'my-languages)
