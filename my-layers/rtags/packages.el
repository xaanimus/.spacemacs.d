;;; packages.el --- rtags layer packages file for Spacemacs.
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
;; added to `rtags-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `rtags/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `rtags/pre-init-PACKAGE' and/or
;;   `rtags/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst rtags-packages
  '(helm
    (rtags :toggle (configuration-layer/package-usedp 'company))
    copmany))

(defun rtags/init-helm
    (use-package helm
      :if helm-enabled))


(defun rtags/init-rtags ()
  (use-package rtags
    :defer t
    :init
    (progn
      (setq rtags-autostart-diagnostics t)
      (setq rtags-completions-enabled t)
      (push 'company-rtags company-backends-c-mode-common)
      (spacemacs/set-leader-keys-for-major-mode 'c++-mode
        "gg" 'rtags-find-symbol-at-point
        "gG" 'rtags-find-symbol
        "go" 'rtags-find-references-at-point/Users/serge-olivieramega/.spacemacs.d/my-layers/rtags/
        "gO" 'rtags-find-references
        "ga" 'ff-find-other-file
        "gA" 'ff-find-other-file
        "cc" 'compile
        "rr" 'rtags-rename-symbol
        "hh" 'rtags-display-summary
        "ht" 'rtags-symbol-type
        )
      )
    ))

(defun rtags/post-init-company ()
  (spacemacs|add-company-hook c-mode-common-hook))

;;; packages.el ends here
