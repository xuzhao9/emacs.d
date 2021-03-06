;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(defconst IS-MAC (eq system-type 'darwin))
(defconst IS-LINUX (eq system-type 'gnu/linux))

;; clipboard
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)
      ;; Use a shared clipboard
      select-enable-clipboard t
      select-enable-primary t)

(cond (IS-MAC
         (setq-default mac-option-modifier 'meta
		       mac-command-modifier 'control
		       mac-control-modifier 'super))
      (IS-LINUX
       ;; native tooltips are ugly!
       (setq-default x-gtk-use-system-tooltips nil)))

(cond (IS-MAC
       (global-set-key (kbd "<C-left>") 'beginning-of-line)
       (global-set-key (kbd "<C-right>") 'end-of-line)))

(provide 'init-os)

;;; init-os.el ends here
