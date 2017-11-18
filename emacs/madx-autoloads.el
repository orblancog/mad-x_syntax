;;; madx-autoloads.el --- loads madx-mode
(global-font-lock-mode t);; Enable syntax highlighting
(setq font-lock-maximum-decoration t)
;(add-to-list 'load-path "~/.emacs.d");; <--- edit according to 1.
(autoload 'madx-mode "madx" "MADX-mode" t)
(setq auto-mode-alist (append '(("\\.madx$" . madx-mode))
   auto-mode-alist))
