;; Disable menu-bar, tool-bar, and scroll-bar modes
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
;; No startup screen
(setq inhibit-startup-screen t)
;; Auto-saves go to /tmp
(setq auto-save-file-name-transforms
      `((".*", temporary-file-directory t))
      backup-directory-alist
      `((".*" . , temporary-file-directory)))
;; el-get
(setq el-get-sources
      '((:name znc
               :type github
               :pkgname "sshirokov/ZNC.el"
               :description "ERC and ZNC interface")))
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path (locate-user-emacs-file "el-get-user/recipes"))
(el-get 'sync)
;; Make customizations save to custom.el instead of here
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror)
;; Load all my other init files
(add-to-list 'load-path (locate-user-emacs-file "init"))
(require 'globals)
(require 'progs)
;; Theme and font
(load-theme 'monokai t)
(set-frame-parameter nil 'font "Inconsolata-10")
