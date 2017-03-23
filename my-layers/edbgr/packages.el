;;; packages.el --- edbgr layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Serge-Olivier Amega <serge-olivieramega@sergeoliviersmbp.home>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `edbgr-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `edbgr/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `edbgr/pre-init-PACKAGE' and/or
;;   `edbgr/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst edbgr-packages
  '(
    realgud
    )
  )

(defun edbgr/init-realgud ()
    (use-package realgud
      :defer t
      :init
      (progn
        (load-library "realgud")
        )
      )
  )


;;; packages.el ends here
