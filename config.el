(defun load-config ()
  (interactive)
  (load "~/.spacemacs.d/config.el"))

(defun myfunc/web-mode-launch ()
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))

(defun myfunc/toggle-tab-mode ()
  (interactive)
  (if indent-tabs-mode
      (setq indent-tabs-mode nil)
    (setq indent-tabs-mode t)))

(defun myfunc/set-gui ()
  ;;Transparent
  (set-frame-parameter (selected-frame) 'alpha '(90 90))
  (add-to-list 'default-frame-alist '(alpha 90 90))

  (setq powerline-default-separator 'arrow
        ns-use-srgb-colorspace nil)
  (linum-relative-global-mode)
  (global-hl-line-mode -1)

  ;;Theme stuff
  (setq bgnd "#0a0a19")
  (set-face-attribute 'default nil
                      :foreground "#eebbee"
                      :background bgnd)
  (set-face-attribute 'fringe nil
                      :background bgnd)
  (set-face-attribute 'linum nil
                      :background bgnd)
  ;(add-to-list '(default nil
  ;                :foreground "#eebbee"
  ;                :background bgnd))
  ;(add-to-list '(fringe nil
  ;                      :background bgnd))
  ;(add-to-list '(linum nil
  ;                     :background bgnd))

  )

(setq-default
 evil-escape-excluded-states '(visual normal transient)
 evil-escape-key-sequence "jk"
 evil-escape-delay 0.3
 spacemacs-show-trailing-whitespace nil
 )

(global-set-key (kbd "<s-right>") 'end-of-line)
(global-set-key (kbd "<s-left>") 'beginning-of-line)

(spacemacs/set-leader-keys "tt" 'myfunc/toggle-tab-mode)

(add-hook 'python-mode-hook
          '(lambda ()
             (python-indent-guess-indent-offset)
             (dtrt-indent-mode)
             (dtrt-indent-adapt)) t)

(add-hook 'web-mode-hook 'myfunc/web-mode-launch)

;;for some reason tuareg doesn't have this defined but still calls it
(defun tuareg-abbrev-hook ())

(global-set-key (kbd "C-c C-SPC") 'company-yasnippet)

(myfunc/set-gui)
