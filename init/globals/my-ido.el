(require 'ido)
;; Ido mode everywhere
(ido-mode 1)
(ido-everywhere 1)
;; Flx-ido - better fuzzy matching algorithm for ido
(require 'flx-ido)
(flx-ido-mode 1)
;; Disable ido faces to see flx highlights
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
;; Automatically edit write protected files with sudo
(defadvice ido-find-file (after find-file-sudo activate)
  "Find file as root if necessary."
  (unless (and buffer-file-name
	       (file-writable-p buffer-file-name))
    (find-alternate-file
     (concat "/sudo:root@localhost:" buffer-file-name))))
(provide 'my-ido)
