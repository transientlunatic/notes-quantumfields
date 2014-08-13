(TeX-add-style-hook "project"
 (lambda ()
    (LaTeX-add-labels
     "cha:introduction")
    (TeX-run-style-hooks
     "danielphysics"
     "latex2e"
     "dwnotes10"
     "dwnotes"
     ""
     "chapters/chapter-0")))

