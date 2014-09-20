(require 'tramp)
;; So tramp can find ls and ld on nixos
(add-to-list 'tramp-remote-path "/run/current-system/sw/bin")
(provide 'my-tramp)
