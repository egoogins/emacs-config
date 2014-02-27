;;; package -- Summary
;;; Language specifc plugin configurations

;;; Commentary:

;;; Code:

;; ---- Python Configurations ---- ;;
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

(provide 'my-languages)
