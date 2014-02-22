;; ----Moving Around ;;
;; Scroll one line at a time
(setq scroll-step 1)

;; Set C-c, g to goto-line
(global-set-key "\C-cg" 'goto-line)

;; Scroll faster
(setq lazy-lock-defer-on-scrolling t)
(setq lazy-lock-continuity-time 0.3)

;; Don't insert new lines when scrolling???
;; (setq next-line-add-newlines nil)

(provide 'my-moving)
;;; my-moving.el ends here