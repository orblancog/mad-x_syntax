;; oblancog
;; This is the list of keywords to highlight in madx
;; They have been splitted by cathegory
;;
;; The reg. expression obtained from evaluating each regexp optimization
;;   is included in the madx.el file to speed up highlighting
;; Now, some useful commands
;; M+X : ielm ; to open the interactive lisp module
;; 
;;
;; Changes
;; 2016.08 Cross checking with MAD-X 5.02.10 manual

(regexp-opt '(;; font-lock-keyword-face
;; madx-font-lock-keywords-programflow
        "IF"
        "ELSEIF"
        "ELSE"
        "WHILE"
        "MACRO"
) 'words)

(regexp-opt '(;; font-lock-builtin-face
;; madx-font-lock-keywords-controlstm              
        "EXIT"
        "QUIT"
        "STOP"
        "HELP"
        "SHOW"
        "VALUE"
        "OPTION"
        "EXEC"
        "SET"
        "SYSTEM"
        "TITLE"
        "USE"
        "SELECT"
;;  madx-font-lock-keywords-filehandstm
        "ASSIGN"
        "CALL"
        "RETURN"
        "PRINT"
        "PRINTF"
        "RENAMEFILE"
        "COPYFILE"
        "REMOVEFILE"
;;  madx-font-lock-keywords-tablehandstm
        "CREATE"
        "DELETE"
        "READTABLE"
        "READMYTABLE"
        "WRITE"
        "SETVARS"
        "SETVARS_LIN"
        "FILL"
        "SHRINK"
;;  madx-font-lock-keywords-beamhandstm
        "BEAM"
        "RESBEAM"
;; madx-font-lock-keywords-seqediting
        "SEQEDIT"
        "FLATTEN"
        "CYCLE"
        "REFLECT"
        "INSTALL"
        "MOVE"
        "REMOVE"
        "REPLACE"
        "EXTRACT"
        "ENDEDIT"
        "SAVE"        
        "DUMPSEQU"
;; madx-font-lock-keywords-othrcmds
        "SAVEBETA"
        "COGUESS"
        "CONST"
        "EOPTION"
        "ESAVE"
        "REAL"
;; madx-font-lock-keywords-matchingmet
        "LMDIF"
        "MIGRAD"
        "SIMPLEX"
        "JACOBIAN"
        "USE_MACRO"
;; madx-font-lock-keywords-orbit_corr
        "CORRECT "
        "USEMONITOR"
        "USEKICK"
        "CSAVE"
        "SETCORR"
        "COPTION"
        "SODD"
        "SURVEY"
        "SXFREAD"
        "SXFWRITE"
        "TOUSCHEK"
        "TRACK"
        "ENDTRACK"
;; madx-font-lock-keywords-plot
        "PLOT"
        "RPLOT"
        "RVIEWER"
        "RTRACKSTORE"
        "RESPLOT"
        "SETPLOT"
        "EPRINT"
;; madx-font-lock-keywords-stringatt
        "TITLE"
        "system"
) 'words)

(regexp-opt '(; font-lock-type-face
;; madx-font-lock-keywords-elements
    	"DRIFT"
        "QUADRUPOLE"
        "SEXTUPOLE"
        "OCTUPOLE"
        "SOLENOID"
        "CRABCAVITY"
        "RFCAVITY"
        "DIPEDGE"
        "MULTIPOLE"
        "COLLIMATOR"
        "ECOLLIMATOR"
        "RCOLLIMATOR"
        "YROTATION"
        "SROTATION"
        "TRANSLATION"
        "CHANGEREF"
        "MARKER"
        "RBEND"
        "SBEND"
        "DIPEDGE"
        "HKICKER"
        "VKICKER"
        "KICKER"
        "TKICKER"
        "ELSEPARATOR"
        "HMONITOR"
        "VMONITOR"
        "MONITOR"
        "INSTRUMENT"
        "PLACEHOLDER"
        "BEAMBEAM"
        "MATRIX"
        "NLLENS"
        "RFMULTIPOLE"
) 'words)

(regexp-opt '(; font-lock-warning-face
;; madx-font-lock-special_operators
       ":="
       "->"
       ) t)

(regexp-opt '(; font-lock-warning-face
;; madx-font-lock-keywords-errordef
       "ERROR"
       "EALIGN"
       "EFCOMP"
       "SETERR"
) 'words)

(regexp-opt '(; font-lock-constant-face
;; madx-font-lock-special_constants
       "#e"
       "#s"
) t)

(regexp-opt '(; font-lock-constant-face
;; madx-font-lock-keywords-constants
        "POSITRON"
        "ELECTRON"
        "PROTON"
        "ANTIPROTON"
        "POSMUON"
        "NEGMUON"
        "PI"
        "TWOPI"
        "DEGRAD"
        "RADDEG"
        "E"
        "EMASS"
        "PMASS"
        "NMASS"
        "MUMASS"
        "CLIGHT"
        "QELECT"
        "HBAR"
        "ERAD"
        "PRAD"
        "TRUE"
        "FALSE"
        "SIMPLE"
        "COLLIM"
        "TEAPOT"
        "ENTRY"
        "CENTRE"
        "EXIT"
        "CIRCLE"
        "RECTANGLE"
        "ELLIPSE"
        "LHCSCREEN"
        "MARGUERITE"
        "RECTELLIPSE"
        "RACETRACK"
) 'words)

(regexp-opt '(;; font-lock-doc-face
;;  madx-font-lock-keywords-tableaccs
        "TABLE"
        "TABINDEX"
        "TABSTRING"
;; madx-font-lock-keywords-simul
        "TWISS"
        "LINE"
        "MAKETHIN"
        "APERTURE"
        "SIXTRACK"
        "DYNAP"
        "EMIT"
        "MATCH"
        "ENDMATCH"
        "VARY"
        "CONSTRAINT"
        "WEIGHT"
        "GLOBAL"
        "GWEIGHT"
        "PTC_TWISS"
        "PTC_NORMAL"
        "SELECT_PTC_NORMAL"
        "PTC_TRACK"
        "PTC_TRACK_LINE"
        "PTC_CREATE_UNIVERSE"
        "PTC_CREATE_LAYOUT"
        "PTC_READ_ERRORS"
        "PTC_MOVE_TO_LAYOUT"
        "PTC_ALIGN"
        "PTC_END"
        "PTC_TRACK_END"
        "START"
        "RUN"
        "PTC_OBSERVE"
        "OBSERVE"
        "PTC_START"
        "PTC_SETSWITCH"
        "PTC_KNOB"
        "PTC_SETKNOBVALUE"
        "PTC_PRINTFRAMES"
        "PTC_SELECT"
        "PTC_SELECT_MOMENT"
        "PTC_DUMPMAPS"
        "PTC_EPLACEMENT"
        "PTC_VARYKNOB"
        "END_MATCH"
        "PTC_MOMENTS"
        "PTC_SETDEBUGLEVEL"
        "PTC_SETACCEL_METHOD"
        "PTC_SETEXACTMIS"
        "PTC_SETRADIATION"
        "PTC_SETTOTALPATH"
        "PTC_SETTIME"
        "PTC_SETFRINGE "
;; madx-font-lock-keywords-parameters
        "KNLL" ;2016.08
        "CNLL" ;2016.08
        "SINKICK"
        "SINPEAK"
        "SINTUNE"
        "SINPHASE"
        "L"
        "K1"
        "K1S"
        "TILT"
        "K2"
        "K2S"
        "K3"
        "K3S"
        "KS"
        "K3S"
        "KSI"
        "VOLT"
        "LAG"
        "FREQ"
        "HARMON"
        "rv1"
        "rv2"
        "rv3"
        "rv4"
        "rph1"
        "rph2"
        "lagf"
        "PARTICLE"
        "MASS"
        "CHARGE"
        "PC"
        "GAMMA"
        "BETA"
        "EX"
        "EXN"
        "EY"
        "EYN"
        "ET"
        "SIGT"
        "SIGE"
        "KBUNCH"
        "NPART"
        "PLANE"
        "BCURRENT"
        "CURRENT"
        "BUNCHED"
        "RADIATE"
        "NORM_NO"
        "BV"
        "SEQUENCE"
        "ENDSEQUENCE"
        "REFER"
        "MAD8"
        "GNFU"
        "KICK"
        "HKICK"
        "VKICK"
        "ANGLE"
        "K0"
        "K0S"
        "RESPLIT"
        "DAMP"
        "QUANTUM"
        "RECLOSS"
        "ELEMENT_BY_ELEMENT"
        "NORM"
        "NORM_OUT"
        "RADIATION_MODEL1"
        "RADIATION_ENERGY_LOSS"
        "RADIATION_QUADr"
        "BEAM_ENVELOPE"
        "SPACE_CHARGE"
        "FX"
        "FY"
        "FT"
        "FFILE"
        "E1"
        "E2"
        "FINT"
        "FINTX"
        "HGAP"
        "H1"
        "H2"
        "FLAG"
        "RANGE"
        "PLACE"
        "PARENT"
        "KEYWORD"
        "FROM"
        "AT"
        "REFPOS"
        "LENGTH"
        "EXACT_MIS"
        "CLASS"
        "PATTERN"
        "FILE"
        "FORMAT"
        "RBARC"
        "TWISS_PRINT"
        "THREADER"
        "THIN_FOC"
        "NO_FATAL_STOP"
        "TEXT"
        "BARE"
        "SLICE"
        "COMMAND"
        "TO"
        "NEWNAME"
        "BY"
        "SELECTED"
        "H"
        "LRAD"
        "KNL"
        "KSL"
        "TYPE"
        "SIGX"
        "SIGY"
        "XMA"
        "YMA"
        "BBSHAPE"
        "WIDTH"
        "BBDIR"
        "ECHO"
        "ECHOMACRO"
        "TRACE"
        "VERIFY"
        "PERIOD"
        "SECTORMAP"
        "SECTORFILE"
        "KEEPORBIT"
        "USEORBIT"
        "COUPLE"
        "FULL"
        "COLUMN"
        "MOMENTS"
        "PARAMETRIC"
        "CLEAR"
        "POS"
        "COLUMN"
        "POLYNOMIAL"
        "MONOMIAL"
        "PARAMETRIC"
        "QUANTITY"
        "ROW"
        "SEED"
        "ADD"
        "INFO"
        "DEBUG"
        "VERBOSE"
        "TELL"
        "RESET"
        "WARN"
        "LABEL"
        "APERTYPE"
        "HAXIS"
        "HMIN"
        "HMAX"
        "VAXIS"
        "VAXIS1"
        "VAXIS2"
        "VAXIS3"
        "VAXIS4"
        "VMIN"
        "VMAX"
        "BARS"
        "SYMBOL"
        "NOVERSION"
        "NO_FATAL_ERROR"
        "NO_FATAL_STOP"
        "INTERPOLATE"
        "NOLINE"
        "NOTITLE"
        "MARKER_PLOT"
        "RANGE_PLOT"
        "MULTIPLE"
        "PTC"
        "PTC_TABLE"
        "TRACKFILE"
        "CAVALL"
        "MULT_AUTO_OFF"
        "MAX_MULT_ORD"
        "SPLIT"
        "RADIUS"
        "WARNING"
        "STYLE"
        "COLOUR"
        "TURNS"
        "EVERYSTEP"
        "ONETABLE"
        "TABLEALLSTEPS"
        "GCS"
        "ROOTNTUPLE"
        "EXTENSION"
        "FASTUNE"
        "MAXAPER"
        "LYAPUNOV"
        "ORBIT"
        "TOL"
        "DS"
        "DPHI"
        "DTHETA"
        "DPSI"
        "MREX"
        "MREY"
        "MSCALX"
        "MSCALY"
        "AREX"
        "AREY"
        "ORDER"
        "DKN"
        "DKS"
        "DKNR"
        "DKSR"
        "HYSTER"
        "HCOEFFN"
        "HCOEFFS"
        "BETA0"
        "RMATRIX"
        "STEP"
        "CHROM"
        "LOWER"
        "UPPER"
        "SLOPE"
        "OPT"
        "CALLS"
        "NO"
        "XDISTR"
        "YDISTR"
        "ZDISTR"
        "TOLERANCE"
        "STRATEGY"
        "REPEAT"
        "BISEC"
        "COOL"
        "BALANCE"
        "RANDOM"
        "MODEL"
        "TARGET"
        "MODE"
        "MONERROR"
        "MONON"
        "MONSCALE"
        "PLANEX"
        "COND"
        "RESOUT"
        "CLIST"
        "MLIST"
        "STATUS"
        "POST"
        "FONT"
        "LWIDTH"
        "APER_TOL"
        "HALOFILE"
        "PIPEFILE"
        "DQF"
        "BETAQFX"
        "DP"
        "DPARX"
        "DPARY"
        "COR"
        "BBEAT"
        "NCO"
        "HALO"
        "INTERVAL"
        "SPEC"
        "NOTSIMPLE"
        "TRUEPROFILE"
        "OFFSETELEM"
        "XSIZE"
        "YSIZE"
        "ASCALE"
        "LSCALE"
        "SSCALE"
        "RSCALE"
        "DETUNE"
        "DISTORT1"
        "DISTORT2"
        "START_STOP"
        "MULTIPOLE_ORDER_RANGE"
        "NOPRINT"
        "PRINT_ALL"
        "PRINT_AT_END"
        "NOSIXTRACK"
        "X0"
        "Y0"
        "Z0"
        "THETA0"
        "PHI0"
        "PSI0"
        "SUMM"
        "CENTRE"
        "SECTOR_NMUL_MAX"
        "SECTOR_nMUL"
        "NTPSA"
        "SYMPRINT"
        "TIME"
        "METHOD"
        "NST"
        "EXACT"
        "OFFSET_DELTAP"
        "ERRORS_OUT"
        "MAGNET_NAME"
        "RSPLIT"
        "THIN"
        "XBEND"
        "EVEN"
        "OVERWRITE"
        "INDEX"
        "ONEPASS"
        "DUMP"
        "DEBUGLEVEL"
        "LEVEL"
        "BBORBIT"
        "SYMPL"
        "MAXACCELERATION"
        "EXACT_MISS"
        "TOTALPATH"
        "RADIATION"
        "FRINGE"
        "ICASE"
        "CLOSED_ORBIT"
        "SLICE_MAGNETS"
        "INITIAL_MATRIX_TABLE"
        "MATRIX_MANUAL"
        "INITIAL_MAP_MANUAL"
        "INITIAL"
        "ELEMENT"
        "TRUSTRANGE"
        "ANHX"
        "ANHY"
        "GNUF"
        "HAML"
        "EIGN"
        "INITIAL_MATRIX_MANUAL"
        "ELEMENTNAME"
        "KN"
        "KS"
        "EXACTMATCH"
        "ONLYPOSITION"
        "ONLYORIENTATION"
        "AUTOPLACEDOWNSTREAM"
        "REFFRAME"
        "USE_PTCKNOBS"
) 'words)

(regexp-opt '(;;  font-lock-function-name-face
;; madx-font-lock-keywords-functions
        "SQRT"
        "LOG"
        "LOG10"
        "EXP"
        "SIN"
        "COS"
        "TAN"
        "ASIN"
        "ACOS"
        "ATAN"
        "SINH"
        "COSH"
        "TANH"
        "SINC"
        "ABS"
        "ERF"
        "ERFC"
        "FLOOR"
        "CEIL"
        "ROUND"
        "RANF"
        "GAUSS"
        "TGAUSS"
) 'words)


(regexp-opt '(;; font-lock-variable-name-face
;; madx-font-lock-keywords-variables_madx
        "Z"
        "PHI"
        "PSI"
        "X"
        "Y"
        "BETX"
        "BETY"
        "NAME"
        "S"
        "R"
        "R[1-6][1-6]"
        "RM[1-6][1-6]"
        "K[1-6]"
        "K[1-6]L"
        "KICK[1-6]"
        "BETA[1-3][1-3]"
        "BETA[1-3][1-3]P"
        "ALFA"
        "ALFA[1-3][1-3]"
        "ALFA[1-3][1-3]P"
        "GAMMATR"
        "GAMA[1-3][1-3]"
        "GAMA[1-3][1-3]P"
        "DISP[1-4]"
        "DISP[1-4]P[1-3]"
        "EIGN[1-6][1-6]"
        "MU[1-3]"
        "MUX"
        "MUY"
        "PX"
        "PY"
        "T"
        "T[1-6][1-6][1-6]"
        "TM[1-6][1-6][1-6]"
        "PT"
        "DELTAP"
        "XN"
        "PXN"
        "WX"
        "PHI"
        "THETA"
        "PHIX"
        "YN"
        "PYN"
        "WY"
        "PHIY"
        "TN"
        "PTN"
        "WT"
        "PHIT"
        "ALFX"
        "DX"
        "DPX"
        "ALFY"
        "DY"
        "DPY"
        "ENERGY"
        "DMUX"
        "DDX"
        "DDPX"
        "DMUY"
        "DDY"
        "DDPY"
        "RE"
        "RE[1-6][1-6]"
        "Q1"
        "Q2"
        "DQ1"
        "DQ2"
        "DDQ1"
        "DDQ2"
        "N1"
        "N1X_M"
        "N1Y_M"
        "APER_1"
        "APER_2"
        "APER_3"
        "APER_4"
        "RTOL"
        "XTOL"
        "YTOL"
        "ON_AP"
        "ON_ELEM"
        "LENGTH"
        "ORBIT5"
        "BETXMAX"
        "DXMAX"
        "DXRMS"
        "XCOMAX"
        "XRMS"
        "BETYMAX"
        "DYMAX"
        "DYRMS"
        "YCOMAX"
        "YCORMS"
        "SYNCH_1"
        "SYNCH_2"
        "SYNCH_3"
        "SYNCH_4"
        "SYNCH_5"
        "DISTANCE"
        "LYAPUNOV"
        "LOGDIST"
        "LOGTURNS"
        
) 'words)
