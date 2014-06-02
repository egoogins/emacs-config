;;; package -- Summary
;;; Language specifc plugin configurations

;;; Commentary:

;;; Code:

;; ---- Python Configurations ---- ;;
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

;; ---- C++ Configurations ---- ;;
(eval-after-load 'flycheck
  '(progn
     (require 'flycheck-google-cpplint)
     ;; Add Google C++ Style checker.
     ;; In default, syntax checked by Clang and Cppcheck.
     (flycheck-add-next-checker 'c/c++-cppcheck
                                ' c/c++-googlelint)))
(custom-set-variables
 '(flycheck-googlelint-verbose "3")
 '(flycheck-googlelint-root "~/fmvot")
 '(flycheck-googlelint-linelength "80")
 '(flycheck-c/c++-googlelint-executable "~/.emacs.d/plugins/cpplint.py"))

(provide 'my-languages)
