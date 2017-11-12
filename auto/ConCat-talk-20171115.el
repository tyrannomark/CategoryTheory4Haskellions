(TeX-add-style-hook
 "ConCat-talk-20171115"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("ccicons" "scale=2")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "appendixnumberbeamer"
    "booktabs"
    "ccicons"
    "pgfplots"
    "xspace"
    "graphicx"
    "tikz-cd"
    "listings"
    "color")
   (TeX-add-symbols
    '("blankbox" 2)
    '("abs" 1)
    '("thref" 1)
    '("thlabel" 1)
    '("defref" 1)
    '("deflabel" 1)
    '("eqnref" 1)
    '("eqnlabel" 1)
    '("strong" 1)
    '("term" 1)
    '("FuncIm" 1)
    '("FProj" 2)
    '("IrPaths" 1)
    '("PkCat" 1)
    '("FkCat" 1)
    '("FSCat" 1)
    '("SCat" 1)
    '("Com" 3)
    '("Comm" 1)
    '("CompCat" 1)
    '("Codomain" 1)
    '("Domain" 1)
    '("Hom" 3)
    '("Obj" 1)
    '("Cat" 1)
    "MDL")
   (LaTeX-add-labels
    "eq:#1"
    "def:#1"
    "th:#1")
   (LaTeX-add-bibliographies
    "CatTh4Haskell-talk-20170419")
   (LaTeX-add-amsthm-newtheorems
    "xca"
    "remark")
   (LaTeX-add-xcolor-definecolors
    "identifierColor"))
 :latex)

