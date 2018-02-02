;;; madx-autoloads.el --- loads madx-mode


;; Copyright (C) 2013, 2016 Oscar BLANCO
;;               2017, 2018 Oscar BLANCO, Istituto Nazionale di Fisica Nucleare

;; Maintainer : orblancog
;; Created    : 18 Nov 2017
;; Keywords   : languages
;; Homepage   : https://github.com/orblancog/mad-x_syntax
;; Version    : 1.5

;; This file is not part of GNU Emacs

;; Licensed under the EUPL, Version 1.1 or - as soon they will be
;; approved by the European Commission - subsequent versions of the EUPL
;; (the "Licence"). You may not use this work except in compliance with
;; the Licence. You may obtain a copy of the Licence at:
;;
;; https://joinup.ec.europa.eu/software/page/eupl
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the Licence is distributed on an "AS IS" basis,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
;; implied.
;;
;; See the Licence for the specific language governing permissions and
;; limitations under the Licence.

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
