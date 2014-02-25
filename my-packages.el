;;; package -- Summary
;;; Commentary:

;;; Code:


;; Require cl-lib to allow for latest emacs features
(require 'cl-lib)
(defvar my-packages '(
		      autopair
		      color-theme
		      color-theme-solarized
		      flycheck
		      jedi
		      python
		      )
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (cl-loop for p in my-packages
        when (not (package-installed-p p)) do (cl-return nil)
        finally (cl-return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'my-packages)
;;; my-packages.el ends here
