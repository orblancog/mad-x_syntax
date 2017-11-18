;;; madx-autoloads.el --- loads madx-mode
(global-font-lock-mode t);; Enable syntax highlighting
(setq font-lock-maximum-decoration t)
;(add-to-list 'load-path "~/.emacs.d"); edit accordingly to madx.el location
(autoload 'madx-mode "madx" "madx-mode" t)
(setq auto-mode-alist (append '(("\\.madx$" . madx-mode))
   auto-mode-alist))
