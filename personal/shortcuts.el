;;====================================================================
;;================= Fichier d'initialisation d'EMACS =================
;;====================================================================

;; Auteur : Théophane MARTIN
;; Date de création : 15/01/2015

;;======================== Début du fichier ==========================


(global-set-key (kbd "C-z") 'undo)

;; Fonction replace-string
(global-set-key (kbd "C-c h") 'replace-string)

;; Fonction replace regexp
(global-set-key (kbd "C-c S-h") 'replace-regexp)

;; Fonction bury-buffer (navigation circulaire dans les buffers
(global-set-key (kbd "C-c b") 'bury-buffer) 

;; Sauter à la définition d'une fonction ou délaration d'une variable
(add-hook 'c-mode-common-hook 'semantic-mode)
(add-hook 'lisp-mode-hook 'semantic-mode)
(add-hook 'emacs-lisp-mode-hook 'semantic-mode)
(add-hook 'python-mode-hook 'semantic-mode)
(global-set-key (kbd "C-c C-j") 'semantic-ia-fast-jump)

(global-set-key "\M-s" 'term)

;; Passer d'une fenêtre à l'aute avec Ctrl-Tab et Ctrl-Shift-Tab
(global-set-key [C-tab] 'other-window)
(global-set-key [C-S-iso-lefttab] 
		(lambda ()
		  (interactive)
		  (other-window -1)))

;; Afficher la liste des buffers ouverts
;(global-set-key "\C-x\C-b" 'bs-show-sorted)

;; Passer d'un buffer à l'autre dans une fenêtre
(global-set-key [(meta right)] 'bs-cycle-next)
(global-set-key [(meta left)] 'bs-cycle-previous)

;; F9 -> compiler
(setq compilation-window-height 10)
(setq compilation-window-width 10)
(global-set-key [f9] `compile)
;(global-set-key [f9] `projectile-compile-project)

;; F7 -> GDB
(setq-default gdb-many-windows t)
(global-set-key [f7] `gdb)

;; F8 -> aller a la prochaine erreur de compilation
(global-set-key [f8] 'next-error)

;; Completion si les fichier TAG sont utilisés
(global-set-key [(shift iso-lefttab)]'complete-tag)

;; Reduit la fontion sur elle meme
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
;; Cacher/Montrer un bloc
(global-set-key [f2] 'hs-toggle-hiding)
 
;; F5 : lance le man sur le mot ou se trouve le curseur
(global-set-key [f5] 'vectra-man-on-word)

(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<down>") 'shrink-window)
(global-set-key (kbd "M-s-<up>") 'enlarge-window)

;;========================= Fin du fichier ===========================
