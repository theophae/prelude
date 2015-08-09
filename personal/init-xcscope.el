(require 'xcscope)

(cscope-setup)

;; change keybinding
(define-key cscope-minor-mode-keymap [mouse-3] nil)
(define-key cscope-minor-mode-keymap [C-M-mouse-3] 'cscope-mouse-popup-menu-or-search)
