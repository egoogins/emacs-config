;;; package -- Summary
;;; Responsible for interacting with version control systems

;;; Commentary:

;;; Code:

(require 'magit)
(global-set-key "\C-x\C-i" 'magit-status)
(setq magit-status-buffer-switch-funtion 'switch-to-buffer)

(provide 'my-vcs)
;;; my-vcs.el ends here
