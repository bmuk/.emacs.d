(defun my-org-mode-hook ()
  (org-indent-mode t)
  (visual-line-mode t))
(add-hook 'org-mode-hook 'my-org-mode-hook)
(provide 'my-org)
