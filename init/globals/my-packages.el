(setq my-packages
      '(;; el-get boilerplate
	el-get
	fuzzy
	popup
	;; General
	monokai-theme
	;; Programming Language Specific
	;; haskell
	haskell-mode
	;; lisps
	paredit
	;; nix
	nix-mode
	;; Text Formatting
	;; markdown
	markdown-mode
	;; Programming Tools
	;; 80 character marker
	fill-column-indicator
	;; git
	magit
	;; better electric-pair
	autopair
	;; better terminal
	;multi-term
	;; Package Tools
	use-package
	;; Productivity
	;; fuzzy matching
	flx
	))
(el-get 'sync my-packages)
(provide 'my-packages)
