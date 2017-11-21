;;; madx-autoloads.el --- loads madx-mode

;; Copyright (C) 2017 Oscar BLANCO

;; Author     : orblancog <orblancog@gmail.com>
;; Maintainer : orblancog
;; Created    : 18 Nov 2017
;; Keywords   : languages
;; Homepage   : https://github.com/orblancog/mad-x_syntax
;; Version    : 1.4

;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; madx-mode autoload

;;; Code:
(global-font-lock-mode t); Enable syntax highlighting
(setq font-lock-maximum-decoration t)
;; edit accordingly to madx.el location
;(add-to-list 'load-path "~/.emacs.d")
(autoload 'madx-mode "madx" "madx-mode" t)
(setq auto-mode-alist (append '(("\\.madx$" . madx-mode))
   auto-mode-alist))

(provide 'madx-autoloads)
;;; madx-autoloads.el ends here
