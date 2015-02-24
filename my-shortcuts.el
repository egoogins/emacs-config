;;; package -- Summary
;;; Shortcut definitions for common commands/setup

;;; Commentary:

;;; Code:

(require 'erc)

(defun erc-fmv-connect ()
  (interactive)
  (erc :server "sketch.mitre.org" :port 6667 :nick "ej")
  (setq server-name "erc")
  (server-start)
  (erc-notifications-mode)
  )

(provide 'my-shortcuts)
