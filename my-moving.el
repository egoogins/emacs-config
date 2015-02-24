;;; package -- Summary
;;; Describe movement and selection in Emacs

;;; Commentary:

;;; Code:

;; Scroll one line at a time
(setq scroll-step 1)

;; Set C-c, g to goto-line
(global-set-key "\C-cg" 'goto-line)

;; Scroll through buffers with Ctrl + Tab
(global-set-key (kbd "C-`") 'previous-buffer)
(global-set-key (kbd "C-~") 'next-buffer)

;; Scroll faster
(setq lazy-lock-defer-on-scrolling t)
(setq lazy-lock-continuity-time 0.3)

;; Use ido-mode to navigate files (but the fixed version!)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights
(setq ido-use-faces nil)

;; Disable toolbar and scrollbar (not used in moving)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(provide 'my-moving)
;;; my-moving.el ends here
