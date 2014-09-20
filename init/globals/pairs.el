;; Enable Autopairs globally
(require 'autopair)
(autopair-global-mode)
;; Paredit hooks
(require 'paredit)
(mapc
 (lambda (language-hook)
   (add-hook language-hook 'enable-paredit-mode))
 '(emacs-lisp-mode-hook
   eval-expression-minibuffer-setup-hook
   ielm-mode-hook
   lisp-mode-hook
   lisp-interaction-mode-hook
   scheme-mode-hook))
;; Disable autopairs when paredit on
(defadvice paredit-mode
  (around disable-autopairs-around (arg))
  ad-do-it
  (if (null ad-return-value)
      (autopair-mode 1)
    (autopair-mode 0)))
(ad-activate 'paredit-mode)
(provide 'pairs)
