mad-x\_syntax
=============

### MAD-X syntax highlighting for emacs.  
Check the `madx.el' file header for installation instructions.


### FEATURES (v 1.5)

* Edited to be compatible with emacs ELPA repository
* Highlights commands, parameters and special operators in MAD-X 5.X.X
* If the file extension is '.madx' then the buffer is automatically highlighted,  
  but any buffer can be highlighted by doing :  
    `M+X madx-mode`  
  where `M` is the **META** character in Emacs (`M` seems to be **ALT** in Linux)
* If the limit of 80 characters is desired, they could be highlighted differently
  by uncomment the line in this (`madx.el') file.
  
```lisp
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'madx-mode-hook 'whitespace-mode)
```

### CONTENT OF THIS REPO

The main file is `madx.el'. 
All other files were created to test/optimize the performance.

### HISTORY

* v 1.0 First release at CERN. File is also available in the MAD-X sources syntax folder.
* v 1.1 Adding comments and changing some verbosed names.
* v 1.2 email update oscar.roberto.blanco.garcia@cern.ch deprecated.
        Adding some variables from MAD-X 5.02.10 manual.
        Cleaning up faces 8D.
        When exceeding 80 chars->extra chars in red
* v 1.3 Adding color to numbers and ;
* v 1.4 Changes to put this file in the emacs elpa repository.
        Changing email address to orblancog@gmail.com
* v 1.5 Changing Licence from GPLv3 to EUPL

### TODO

I think a semicolon detection at the end of the line might be useful in madx. 
Maybe autocompletion?? 


### EXTRA

You can find this and other MAD-X highlighting implementations, e.g. 
   emacs, KATE+KWRITE, VIM 
inside the syntax folder in the madx sources 
[http://svnweb.cern.ch/world/wsvn/madx](http://svnweb.cern.ch/world/wsvn/madx)

Do not forget to visit 
[http://madx.web.cern.ch/madx](http://madx.web.cern.ch/madx)

### LICENCE, COPYRIGHT
Copyright (C) 2013, 2016 Oscar BLANCO
              2017, 2018 Oscar BLANCO, Istituto Nazionale di Fisica Nucleare

Licensed under the EUPL, Version 1.1 or - as soon they will be
approved by the European Commission - subsequent versions of the EUPL
(the "Licence"). You may not use this work except in compliance with
the Licence. You may obtain a copy of the Licence at:

https://joinup.ec.europa.eu/software/page/eupl

Unless required by applicable law or agreed to in writing, software
distributed under the Licence is distributed on an "AS IS" basis,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied.

See the Licence for the specific language governing permissions and
limitations under the Licence.

ø
