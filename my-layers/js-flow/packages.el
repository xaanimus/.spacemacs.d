;;; packages.el --- js-flow layer packages file for Spacemacs.
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
;; added to `js-flow-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `js-flow/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `js-flow/pre-init-PACKAGE' and/or
;;   `js-flow/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst js-flow-packages
  '(flycheck-flow
    company
    (company-flow :toggle (configuration-layer/package-usedp 'company))
    ))

(defun js-flow/post-init-company ()
  (spacemacs|add-company-hook js-mode))

(defun js-flow/init-flycheck-flow ()
  (use-package flycheck-flow
    :init
    (progn
      (add-hook 'js-mode-hook (lambda () (flycheck-mode))))
    ))

(defun js-flow/init-company-flow ()
  (use-package company-flow
    :init
    (progn
      (push 'company-flow company-backends-js-mode))
    ))

;;; packages.el ends here

