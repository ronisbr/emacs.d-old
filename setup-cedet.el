;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup CEDET
;;
;; Thanks to Anthony Truchet.
;; Reference: http://www.logilab.org/blogentry/173886
;;

(require 'minimal-cedet-config)

(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)

(provide 'setup-cedet)

