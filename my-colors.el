;; Turn on pretty font colors
(global-font-lock-mode t)
(setq font-lock-maximum-decoration 3)

;; require color-theme-solarized
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; Provide this file to feature
(provide 'my-colors)
;;; my-colors.el ends here
