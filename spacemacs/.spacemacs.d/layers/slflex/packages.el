(setq slflex-packages
      '(
        ;; A local package
        (slflex-mode :location local)
        )
)
(defun slflex/init-slflex-mode ()
  (use-package slflex-mode
    :init
    :config (add-to-list 'auto-mode-alist 
                         '("\\.sl\\>" . slflex-mode)))
)

