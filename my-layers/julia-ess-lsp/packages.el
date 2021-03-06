;;; packages.el --- julia-ess-lsp layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
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
;; added to `julia-ess-lsp-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `julia-ess-lsp/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `julia-ess-lsp/pre-init-PACKAGE' and/or
;;   `julia-ess-lsp/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst julia-ess-lsp-packages
  '(ess
    lsp-mode
    ))

(defun julia-ess-lsp/init-lsp-mode ()
  (use-package ess
    :defer t
    :init
    (progn
      (message "ess init")))



;;; packages.el ends here
