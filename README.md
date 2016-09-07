mad-x_syntax
============

MAD-X syntax highlighting for emacs.  
Check the "madx.el" file header for installation instructions.


FEATURES (v 1.2)

* Highlights commands, parameters and special operators in MAD-X 5.2.XX
* If the file extension is '.madx' then the buffer is automatically highlighted,  
  but any buffer can be highlighted by doing :  
    `M+X madx-mode`  
  where `M` is the **META** character in Emacs (`M` seems to be **ALT** in Linux)
* If the line is more than 80 characters long, the extra characters are 
  highlighted differently. 
  If you dont want this limit, comment/delete the line 
      `(setq whitespace-line-column 80) ;; limit line length` 
  in 'madx.el'. 


CONTENT OF THIS REPO

The main file is 'madx.el'. 
All other files were created to test/optimize the performance.


TODO

I think a semicolon detection at the end of the line might be useful in madx. 
Maybe autocompletion?? 


EXTRA

You can find this and other MAD-X highlighting implementations, e.g. 
   emacs, KATE+KWRITE, VIM 
inside the syntax folder in the madx sources 
[http://svnweb.cern.ch/world/wsvn/madx](http://svnweb.cern.ch/world/wsvn/madx)

Do not forget to visit 
[http://madx.web.cern.ch/madx](http://madx.web.cern.ch/madx)

ø
    
