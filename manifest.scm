(use-modules (gnu packages lisp-check)
             (guix profiles))

(packages->manifest
 (list sbcl-fiveam))
