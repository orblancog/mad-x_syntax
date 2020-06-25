mad-x\_syntax
=============

### MAD-X syntax highlighting for emacs.  
The main file is called 'madx.el' and is found in the 'emacs' folder. Download it, open it in emacs and type the expression
```lisp
 M+X package-install-file RET madx.el RET
```
[where `M+X` means to to press the **META** key (i.e. **ALT** for most systems) and the `x` key at the same time, and `RET` means to press the **RETURN** key]. Otherwise, check the
file header for installation instructions.


### FEATURES (v 1.9)

* Edited to be compatible with emacs ELPA repository
* Highlights commands, parameters and special operators in MAD-X 5.05.02
* If the file extension is '.madx' or '.seq' then the buffer is automatically 
  highlighted, but any buffer can be highlighted by doing :  
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
* v 1.6 Adding automatic highlighting for .seq files
* v 1.7 Editing source accourding to GNU suggestions
* v 1.8 Editing source accourding to GNU suggestions and adding info about
        the command package-install-file
* v 1.9 Adding few ptc words to the highlighting list

### TODO

I think a semicolon detection at the end of the line might be useful in madx. 
Maybe autocompletion?? 


### EXTRA

You can find this and other MAD-X highlighting implementations, e.g. 
   emacs, KATE+KWRITE, VIM, ATOM
inside the syntax folder in the madx sources.

Do not forget to visit 
[http://madx.web.cern.ch/madx](http://madx.web.cern.ch/madx)

### LICENCE, COPYRIGHT
Copyright (C) 2013, 2016 Oscar BLANCO
              2017, 2018 FSF
              2019, 2020 Oscar BLANCO

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

ø
