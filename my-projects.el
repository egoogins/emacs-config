(global-set-key (kbd "C-c p c") 'project-compile)
(global-set-key (kbd "C-c p l") 'project-load)
(global-set-key (kbd "C-c p g") 'project-grep)
(global-set-key (kbd "C-c p a") 'project-ack)
(global-set-key (kbd "C-c p u") 'project-unload)
(global-set-key (kbd "C-c p f") 'project-find-file-ido)
(global-set-key (kbd "C-c p i") 'project-index)
(global-set-key (kbd "C-c p s") 'project-status)
(global-set-key (kbd "C-c p h") 'project-home)
(global-set-key (kbd "C-c p d") 'project-dired)
(global-set-key (kbd "C-c p t") 'project-tags)

(require 'mk-project)

(project-def "fmvot"
      '((basedir          "~/fmvot/")
        (src-patterns     ("*.h" "*.cc" "*.xml" "*.cmake"))
        (ignore-patterns  ("*.o"))
        (tags-file        "~/.fmvot/TAGS")
        (file-list-cache  "~/.fmvot/files")
        (open-files-cache "~/.fmvot/open-files")
        (vcs              git)
        (compile-cmd      "make")
        (startup-hook     nil)
        (shutdown-hook    nil)))

(defun switch-between-h-and-cc ()
  "Switch between a header (.h) and a C++ implementation (.cc/.cpp) file using mk-project support"
  (interactive)
  (let* ((file (file-name-base))
	 (ext (file-name-extension (buffer-file-name)))
	 (header-regex "[h|hpp]")
	 (impl-regex "[cc|cpp|c]")
	 (newfile (concat file (if (string-match "h" ext)
				   (concat "\." impl-regex)
				 (concat "\." header-regex)))))
    (project-find-file newfile)))

(global-set-key (kbd "M-s") 'switch-between-h-and-cc)

;; (project-load "fmvot")

(provide 'my-projects)
;;; my-projects.el ends here
