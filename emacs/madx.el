;;; madx-mode -- Major mode for editing MAD-X files in Emacs
;;; FEATURES (v 1.2)
;;; -Highlights special variable names and commands
;;; -Automatically highlights '.madx' files,
;;;  any other buffer can be highlighted with this major mode doing :
;;;      M+X madx-mode
;;;  where M is the META character in Emacs (M seems to be ALT ???)
;;; - Update to MAD-X 5.2.XX command list

;;; LICENCE
;;    Copyright (C) 2016  Oscar BLANCO
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;;INSTALLATION
;; 1. Depending on your emacs version, copy this file (madx.el) to the
;;    highlighting definition folder, e.g.
;;      a)  ~/.emacs.d/lisp/  ---> (Emacs v24.5.X)
;;      b)  ~/.emacs.d/       ---> (Emacs v23.X.X)
;;      c)  ~/                ---> (Emacs v21.X.X)
;;    i.e.
;;      $ cp madx.el ~/.emacs.d/lisp/ 
;; 2. Edit/create your .emacs file, typically in ~/, adding
;;    the following block :
;;      ;;;; START OF BLOCK TO COPY AND UNCOMMENT 
;;      ;; Enable syntax highlighting
;;      (global-font-lock-mode t)
;;      (setq font-lock-maximum-decoration t)
;;      ;; add madx highlighting
;;      (add-to-list 'load-path "~/.emacs.d")
;;      (autoload 'madx-mode "madx" "MADX-mode" t)
;;      (setq auto-mode-alist (append '(("\\.madx$" . madx-mode))
;;        auto-mode-alist))
;;      ;;;; END OF BLOCK TO COPY AND UNCOMMENT 
;; 3. You should now restart emacs in order to reload the environment variables.

;;;INFO
;; Author: Oscar Roberto BLANCO GARCIA
;; email : oscar.blancogarcia@lnf.infn.it
;; version: 1.2
;; Created: XX052016 (ddmmyyyy)
;; Keywords: MAD-X major-mode
;;-New code available at
;; https://github.com/orblancog/mad-x_syntax.git
;;-For mad instructions, visit
;; mad.web.cern.ch/mad/
;;-Other syntax highlightings could be found inside the
;; mad sources. Check the 'syntax' folder in the madx dir !
;; Write me to the email address above about any bug including an example.
;;-One good example to modify this mode :
;; http://renormalist.net/Renormalist/EmacsLanguageModeCreationTutorial

;;;HISTORY
;; v 1.0 First release at CERN. File is also available in the 
;;       MAD-X sources "syntax" folder.
;; v 1.1 Adding comments and changing some verbosed names
;; v 1.2 email update oscar.roberto.blanco.garcia@cern.ch deprecated
;; v 1.2 Adding some variables from MAD-X 5.02.10 manual
;;       Cleaning up faces 8D
;;       when exceeding 80 chars->extra chars in red

;;; ... Finally the Code :

(defgroup madx nil
 "Major mode to edit MAD-X files scripts in emacs"
 :group 'languages
)

(defvar madx-mode-hook nil)

(add-to-list 'auto-mode-alist '("\\.madx\\'" . madx-mode))

;; add  80 characters line
;;(global-whitespace-mode +1)
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'madx-mode-hook 'whitespace-mode)

(defconst madx-font-lock-keywords-face-all
  ;; madx-font-lock-keywords-programflow
  (list
  '("\\<\\(ELSE\\(?:IF\\)?\\|IF\\|MACRO\\|WHILE\\)\\>"
   .  font-lock-keyword-face)
  )
  "Highlighting expressions for MAD-X mode (keywords-all).")

(defconst madx-font-lock-builtin-face-all
  ;; madx-font-lock-keywords-controlstm
  ;;  madx-font-lock-keywords-filehandstm
  ;;  madx-font-lock-keywords-tablehandstm
  ;;  madx-font-lock-keywords-beamhandstm
  ;; madx-font-lock-keywords-seqediting
  ;; madx-font-lock-keywords-othrcmds
  ;; madx-font-lock-keywords-matchingmet
  ;; madx-font-lock-keywords-orbit_corr
  ;; madx-font-lock-keywords-plot
  ;; madx-font-lock-keywords-stringatt
  (list 
  '("\\<\\(ASSIGN\\|BEAM\\|C\\(?:ALL\\|O\\(?:GUESS\\|NST\\|P\\(?:TION\\|YFILE\\)\\|RRECT \\)\\|\\(?:REAT\\|SAV\\|YCL\\)E\\)\\|D\\(?:ELETE\\|UMPSEQU\\)\\|E\\(?:ND\\(?:EDIT\\|TRACK\\)\\|OPTION\\|PRINT\\|SAVE\\|X\\(?:EC\\|\\(?:I\\|TRAC\\)T\\)\\)\\|F\\(?:ILL\\|LATTEN\\)\\|HELP\\|INSTALL\\|JACOBIAN\\|LMDIF\\|M\\(?:IGRAD\\|OVE\\)\\|OPTION\\|P\\(?:LOT\\|RINTF?\\)\\|QUIT\\|R\\(?:E\\(?:A\\(?:D\\(?:\\(?:MY\\)?TABLE\\)\\|L\\)\\|FLECT\\|MOVE\\(?:FILE\\)?\\|NAMEFILE\\|PLACE\\|S\\(?:BEAM\\|PLOT\\)\\|TURN\\)\\|PLOT\\|TRACKSTORE\\|VIEWER\\)\\|S\\(?:AVE\\(?:BETA\\)?\\|E\\(?:LECT\\|QEDIT\\|T\\(?:CORR\\|PLOT\\|VARS\\(?:_LIN\\)?\\)?\\)\\|H\\(?:OW\\|RINK\\)\\|IMPLEX\\|ODD\\|TOP\\|URVEY\\|XF\\(?:READ\\|WRITE\\)\\|YSTEM\\)\\|T\\(?:ITLE\\|\\(?:OUSCHE\\|RAC\\)K\\)\\|USE\\(?:KICK\\|MONITOR\\|_MACRO\\)?\\|VALUE\\|WRITE\\|system\\)\\>"
   . font-lock-builtin-face)
  )
  "Highlighting expressions for MAD-X mode (builtin-all).")

(defconst madx-font-lock-type-face-all
  ;; madx-font-lock-keywords-elements
  (list
   '("\\<\\(BEAMBEAM\\|C\\(?:HANGEREF\\|OLLIMATOR\\|RABCAVITY\\)\\|D\\(?:IPEDGE\\|RIFT\\)\\|E\\(?:\\(?:COLLIM\\|LSEPAR\\)ATOR\\)\\|H\\(?:\\(?:KICKE\\|MONITO\\)R\\)\\|INSTRUMENT\\|KICKER\\|M\\(?:A\\(?:RKER\\|TRIX\\)\\|ONITOR\\|ULTIPOLE\\)\\|NLLENS\\|OCTUPOLE\\|PLACEHOLDER\\|QUADRUPOLE\\|R\\(?:BEND\\|COLLIMATOR\\|F\\(?:CAVITY\\|MULTIPOLE\\)\\)\\|S\\(?:BEND\\|EXTUPOLE\\|OLENOID\\|ROTATION\\)\\|T\\(?:KICKER\\|RANSLATION\\)\\|V\\(?:\\(?:KICKE\\|MONITO\\)R\\)\\|YROTATION\\)\\>"
     . font-lock-type-face)
   )
  "Highlighting expressions for MAD-X mode (type-all).")

(defconst madx-font-lock-warning-face-all
  ;; madx-font-lock-keywords-errordef
  (list
   '("\\<\\(E\\(?:ALIGN\\|FCOMP\\|RROR\\)\\|SETERR\\)\\>"
     . font-lock-warning-face)
   )
  "Highlighting expressions for MAD-X mode (warning-all).")

(defconst madx-font-lock-special_operators
  ;; madx-font-lock-special_operators
  (list
   '("\\(->\\|:=\\)"
  . font-lock-warning-face)
  )
  "Highlighting expressions for MAD-X mode (special-operators).")

(defconst madx-font-lock-constant-face-all
  ;; madx-font-lock-special_constants
  ;; madx-font-lock-keywords-constants
  (list
   '("\\<\\(ANTIPROTON\\|C\\(?:ENTRE\\|IRCLE\\|LIGHT\\|OLLIM\\)\\|DEGRAD\\|E\\(?:L\\(?:ECTRON\\|LIPSE\\)\\|MASS\\|NTRY\\|RAD\\|XIT\\)?\\|FALSE\\|HBAR\\|LHCSCREEN\\|M\\(?:ARGUERITE\\|UMASS\\)\\|N\\(?:EGMUON\\|MASS\\)\\|P\\(?:I\\|MASS\\|OS\\(?:\\(?:ITR\\|MU\\)ON\\)\\|R\\(?:AD\\|OTON\\)\\)\\|QELECT\\|R\\(?:A\\(?:CETRACK\\|DDEG\\)\\|ECT\\(?:\\(?:ANGL\\|ELLIPS\\)E\\)\\)\\|SIMPLE\\|T\\(?:EAPOT\\|RUE\\|WOPI\\)\\)\\>"
     . font-lock-constant-face)
   )
  "Highlighting expressions for MAD-X mode (constant-all).")

(defconst madx-font-lock-special_constants
  (list
   '("\\(#[es]\\)"
  . font-lock-constant-face)
  )
  "Highlighting expressions for MAD-X mode (special_constants).")

(defconst madx-font-lock-doc-face-all
  ;;  madx-font-lock-keywords-tableaccs
  ;; madx-font-lock-keywords-simul
  ;; madx-font-lock-keywords-parameters
  (list
   '("\\<\\(A\\(?:DD\\|N\\(?:GLE\\|H[XY]\\)\\|PER\\(?:T\\(?:\\(?:UR\\|YP\\)E\\)\\|_TOL\\)\\|RE[XY]\\|SCALE\\|T\\|UTOPLACEDOWNSTREAM\\)\\|B\\(?:A\\(?:LANCE\\|R[ES]\\)\\|B\\(?:DIR\\|EAT\\|ORBIT\\|SHAPE\\)\\|CURRENT\\|E\\(?:AM_ENVELOPE\\|TA\\(?:0\\|QFX\\)?\\)\\|ISEC\\|UNCHED\\|[VY]\\)\\|C\\(?:A\\(?:LLS\\|VALL\\)\\|ENTRE\\|H\\(?:ARGE\\|ROM\\)\\|L\\(?:ASS\\|EAR\\|\\(?:IS\\|OSED_ORBI\\)T\\)\\|NLL\\|O\\(?:L\\(?:OUR\\|UMN\\)\\|MMAND\\|N\\(?:D\\|STRAINT\\)\\|OL\\|R\\|UPLE\\)\\|URRENT\\)\\|D\\(?:AMP\\|E\\(?:BUG\\(?:LEVEL\\)?\\|TUNE\\)\\|ISTORT[12]\\|K\\(?:[NS]R\\|[NS]\\)\\|P\\(?:AR[XY]\\|[HS]I\\)\\|QF\\|THETA\\|\\(?:UM\\|YNA\\)P\\|[PS]\\)\\|E\\(?:CHO\\(?:MACRO\\)?\\|IGN\\|LEMENT\\(?:NAME\\|_BY_ELEMENT\\)?\\|MIT\\|ND\\(?:MATCH\\|SEQUENCE\\|_MATCH\\)\\|RRORS_OUT\\|VE\\(?:N\\|RYSTEP\\)\\|X\\(?:ACT\\(?:MATCH\\|_MISS?\\)?\\|\\(?:TENSIO\\)?N\\)\\|YN\\|[12TXY]\\)\\|F\\(?:ASTUNE\\|FILE\\|I\\(?:LE\\|NTX?\\)\\|LAG\\|O\\(?:\\(?:N\\|RMA\\)T\\)\\|R\\(?:EQ\\|INGE\\|OM\\)\\|ULL\\|[TXY]\\)\\|G\\(?:AMMA\\|CS\\|LOBAL\\|N\\(?:FU\\|UF\\)\\|WEIGHT\\)\\|H\\(?:A\\(?:LO\\(?:FILE\\)?\\|ML\\|RMON\\|XIS\\)\\|COEFF[NS]\\|GAP\\|KICK\\|M\\(?:AX\\|IN\\)\\|YSTER\\|[12]\\)\\|I\\(?:CASE\\|N\\(?:DEX\\|FO\\|ITIAL\\(?:_MA\\(?:P_MANUAL\\|TRIX_\\(?:MANUAL\\|TABLE\\)\\)\\)?\\|TER\\(?:POLATE\\|VAL\\)\\)\\)\\|K\\(?:0S\\|1S\\|2S\\|3S\\|BUNCH\\|E\\(?:EPORBIT\\|YWORD\\)\\|ICK\\|NLL?\\|S[IL]\\|[0-3NS]\\)\\|L\\(?:A\\(?:BEL\\|G\\)\\|E\\(?:NGTH\\|VEL\\)\\|INE\\|OWER\\|RAD\\|SCALE\\|WIDTH\\|YAPUNOV\\)\\|M\\(?:A\\(?:D8\\|GNET_NAME\\|KE\\(?:DIPEDGE\\|THIN\\)\\|RKER_PLOT\\|SS\\|T\\(?:CH\\|RIX_MANUAL\\)\\|X\\(?:A\\(?:CCELERATION\\|PER\\)\\|_MULT_ORD\\)\\)\\|ETHOD\\|LIST\\|O\\(?:DEL?\\|MENTS\\|N\\(?:ERROR\\|O\\(?:MIAL\\|N\\)\\|SCALE\\)\\)\\|RE[XY]\\|SCAL[XY]\\|ULT\\(?:IP\\(?:\\(?:L\\|OLE_ORDER_RANG\\)E\\)\\|_AUTO_OFF\\)\\)\\|N\\(?:CO\\|EWNAME\\|O\\(?:LINE\\|PRINT\\|RM\\(?:_\\(?:NO\\|OUT\\)\\)?\\|SIXTRACK\\|T\\(?:\\(?:IT\\|SIMP\\)LE\\)\\|VERSION\\|_FATAL_\\(?:ERROR\\|STOP\\)\\)?\\|PART\\|ST\\|TPSA\\)\\|O\\(?:BSERVE\\|FFSET\\(?:ELEM\\|_DELTAP\\)\\|N\\(?:E\\(?:PASS\\|TABLE\\)\\|LY\\(?:\\(?:ORIENTA\\|POSI\\)TION\\)\\)\\|PT\\|R\\(?:BIT\\|DER\\)\\|VERWRITE\\)\\|P\\(?:A\\(?:R\\(?:AMETRIC\\|ENT\\|TICLE\\)\\|TTERN\\)\\|C\\|ERIOD\\|HI0\\|IPEFILE\\|LA\\(?:CE\\|NEX?\\)\\|O\\(?:LYNOMIAL\\|ST?\\)\\|RINT_A\\(?:LL\\|T_END\\)\\|SI0\\|TC\\(?:_\\(?:ALIGN\\|CREATE_\\(?:LAYOUT\\|UNIVERSE\\)\\|DUMPMAPS\\|E\\(?:ND\\|PLACEMENT\\)\\|KNOB\\|MO\\(?:MENTS\\|VE_TO_LAYOUT\\)\\|NORMAL\\|OBSERVE\\|PRINTFRAMES\\|READ_ERRORS\\|S\\(?:E\\(?:LECT\\(?:_MOMENT\\)?\\|T\\(?:ACCEL_METHOD\\|DEBUGLEVEL\\|EXACTMIS\\|FRINGE \\|KNOBVALUE\\|RADIATION\\|SWITCH\\|T\\(?:IME\\|OTALPATH\\)\\)\\)\\|TART\\)\\|T\\(?:ABLE\\|RACK\\(?:_\\(?:END\\|LINE\\)\\)?\\|WISS\\)\\|VARYKNOB\\)\\)?\\)\\|QUANT\\(?:ITY\\|UM\\)\\|R\\(?:A\\(?:DI\\(?:AT\\(?:E\\|ION\\(?:_\\(?:ENERGY_LOSS\\|MODEL1\\|QUADr\\)\\)?\\)\\|US\\)\\|N\\(?:DOM\\|GE\\(?:_PLOT\\)?\\)\\)\\|BARC\\|E\\(?:CLOSS\\|F\\(?:ER\\|FRAME\\|POS\\)\\|\\(?:PEA\\|S\\(?:E\\|OU\\|PLI\\)\\)T\\)\\|MATRIX\\|O\\(?:OTNTUPLE\\|W\\)\\|S\\(?:CALE\\|PLIT\\)\\|UN\\)\\|S\\(?:E\\(?:CTOR\\(?:FILE\\|MAP\\|_\\(?:NMUL_MAX\\|nMUL\\)\\)\\|ED\\|LECT\\(?:ED\\|_PTC_NORMAL\\)\\|QUENCE\\)\\|I\\(?:G[ETXY]\\|N\\(?:KICK\\|P\\(?:EAK\\|HASE\\)\\|TUNE\\)\\|XTRACK\\)\\|L\\(?:ICE\\(?:_MAGNETS\\)?\\|OPE\\)\\|P\\(?:ACE_CHARGE\\|EC\\|LIT\\)\\|SCALE\\|T\\(?:A\\(?:RT\\(?:_STOP\\)?\\|TUS\\)\\|EP\\|RATEGY\\|YLE\\)\\|UMM\\|YM\\(?:BOL\\|P\\(?:L\\|RINT\\)\\)\\)\\|T\\(?:A\\(?:B\\(?:INDEX\\|LE\\(?:ALLSTEPS\\)?\\|STRING\\)\\|RGET\\)\\|E\\(?:LL\\|XT\\)\\|H\\(?:ETA0\\|IN\\(?:_FOC\\)?\\|READER\\)\\|I\\(?:LT\\|ME\\)\\|O\\(?:L\\(?:ERANCE\\)?\\|TALPATH\\)?\\|R\\(?:\\(?:AC\\(?:KFIL\\)?\\|U\\(?:EPROFIL\\|STRANG\\)\\)E\\)\\|URNS\\|WISS\\(?:_PRINT\\)?\\|YPE\\)\\|U\\(?:PPER\\|SE\\(?:ORBIT\\|_PTCKNOBS\\)\\)\\|V\\(?:A\\(?:RY\\|XIS[1-4]?\\)\\|ER\\(?:BOSE\\|IFY\\)\\|KICK\\|M\\(?:AX\\|IN\\)\\|OLT\\)\\|W\\(?:ARN\\(?:ING\\)?\\|EIGHT\\|IDTH\\)\\|X\\(?:0\\|BEND\\|DISTR\\|MA\\|SIZE\\)\\|Y\\(?:0\\|DISTR\\|MA\\|SIZE\\)\\|Z\\(?:0\\|DISTR\\)\\|lagf\\|r\\(?:ph[12]\\|v[1-4]\\)\\|[HL]\\)\\>"
    . font-lock-doc-face)
   )
  "Highlighting expressions for MAD-X mode (doc-all).")

(defconst madx-font-lock-function-name-face-all
  ;; madx-font-lock-keywords-functions
  (list
   '("\\<\\(A\\(?:BS\\|COS\\|\\(?:SI\\|TA\\)N\\)\\|C\\(?:EIL\\|OSH?\\)\\|E\\(?:RFC?\\|XP\\)\\|FLOOR\\|GAUSS\\|LOG\\(?:10\\)?\\|R\\(?:ANF\\|OUND\\)\\|S\\(?:IN[CH]?\\|QRT\\)\\|T\\(?:ANH?\\|GAUSS\\)\\)\\>"
     . font-lock-function-name-face)
   )
  "Highlighting expressions for MAD-X mode (name-all)" )

(defconst madx-font-lock-variable-name-face-all
  ;; madx-font-lock-keywords-variables_madx
  (list
   '("\\<\\(A\\(?:LF\\(?:A\\[1-3][1-3]P?\\|[AXY]\\)\\|PER_[1-4]\\)\\|BET\\(?:A\\[1-3][1-3]P?\\|[XY]MAX\\|[XY]\\)\\|D\\(?:D\\(?:P[XY]\\|Q[12]\\|[XY]\\)\\|ELTAP\\|IS\\(?:P[1-4]\\(?:P[1-3]\\)?\\|TANCE\\)\\|MU[XY]\\|P[XY]\\|Q[12]\\|X\\(?:MAX\\|RMS\\)\\|Y\\(?:MAX\\|RMS\\)\\|[XY]\\)\\|E\\(?:IGN[1-6]\\[1-6]\\|NERGY\\)\\|GAM\\(?:A[1-3][1-3]P?\\|MATR\\)\\|K\\(?:ICK[1-6]L?\\)\\|L\\(?:ENGTH\\|OG\\(?:DIST\\|TURNS\\)\\|YAPUNOV\\)\\|MU\\(?:[1-3]\\|[XY]\\)\\|N\\(?:1\\(?:[XY]_M\\)?\\|AME\\)\\|O\\(?:N_\\(?:AP\\|ELEM\\)\\|RBIT5\\)\\|P\\(?:HI[TXY]?\\|SI\\|[TXY]N\\|[TXY]\\)\\|Q[12]\\|R\\(?:E\\(?:[1-6][1-6]\\)?\\|M\\[1-6][1-6]\\|TOL\\|\\[1-6][1-6]\\)\\|SYNCH_[1-5]\\|T\\(?:HETA\\|M[1-6][1-6][1-6]\\|N[1-6][1-6][1-6]\\)\\|W[TXY]\\|X\\(?:COMAX\\|N\\|RMS\\|TOL\\)\\|Y\\(?:CO\\(?:MAX\\|RMS\\)\\|N\\|TOL\\)\\|k\\(?:[0-4]l\\)\\|[RSTXYZ]\\)\\>"
     . font-lock-variable-name-face)
   )
  "Highlighting expressions for MAD-X mode (variable-name-all).")

(defconst madx-font-lock-keywords-4
  (append
   madx-font-lock-special_constants
   madx-font-lock-special_operators
   madx-font-lock-keywords-face-all
   madx-font-lock-constant-face-all
   madx-font-lock-function-name-face-all
   madx-font-lock-type-face-all
   madx-font-lock-variable-name-face-all
   madx-font-lock-builtin-face-all
   madx-font-lock-warning-face-all
   madx-font-lock-doc-face-all   
  )
 "Balls-out highlighting in MAD-X mode.")

(defvar madx-font-lock-keywords madx-font-lock-keywords-4
  "Default highlighting expressions for MAD-X mode.")

(defvar madx-mode-syntax-table
  (let ((madx-mode-syntax-table (make-syntax-table)))
	
    ; This is added so entity names with underscores can be more easily parsed
	(modify-syntax-entry ?_ "w" madx-mode-syntax-table)
	(modify-syntax-entry ?. "w" madx-mode-syntax-table)
	
	;  Comment styles are same as C++
	(modify-syntax-entry ?/ ". 124 b" madx-mode-syntax-table)
	(modify-syntax-entry ?* ". 23" madx-mode-syntax-table)
	(modify-syntax-entry ?\n "> b" madx-mode-syntax-table)
	(modify-syntax-entry ?! "< b" madx-mode-syntax-table)
	(modify-syntax-entry ?' "|" madx-mode-syntax-table)
	madx-mode-syntax-table)
  "Syntax table for madx-mode")

;;; ### autoload  
(defun madx-mode ()
  "Major mode for editing MAD-X script files"
  (interactive)
  (kill-all-local-variables)
  (setq mode-name "MAD-X")
  (setq major-mode 'madx-mode)
;  (setq comment-start "!")
;  (use-local-map madx-mode-map)
  (set-syntax-table madx-mode-syntax-table)
  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults '(madx-font-lock-keywords nil t))
;; Set up search
  (add-hook 'madx-mode-hook
     (lambda ()  (setq case-fold-search t)))
  (run-hooks 'madx-mode-hook)
)
(provide 'madx-mode)

;;; madx-mode.el ends here
