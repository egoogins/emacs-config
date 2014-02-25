;; ----Moving Around ;;
;; Scroll one line at a time
(setq scroll-step 1)

;; Set C-c, g to goto-line
(global-set-key "\C-cg" 'goto-line)

;; Scroll through buffers with Ctrl + Tab
(global-set-key [C-tab] 'previous-buffer)
(global-set-key [C-S-iso-lefttab] 'next-buffer)

;; Scroll faster
(setq lazy-lock-defer-on-scrolling t)
(setq lazy-lock-continuity-time 0.3)

;; Use ido-mode to navigate files
(ido-mode t)

(provide 'my-moving)
;;; my-moving.el ends here
