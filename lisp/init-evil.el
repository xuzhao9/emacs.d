;;; package -- summary
;;; Commentary:
;;; Author: Xu Zhao (i@xuzhao.net)

;;; Code:

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-this-buffer
  "p" 'find-file-in-project
  "x" 'execute-extended-command
  "3" 'split-window-right
  "j" 'dired-jump
  "u" 'delete-other-windows
  "j" 'dired-jump
  "o" 'other-window)
(setq-default evil-leader/no-prefix-mode-rx
	      '("magit-*-mode"))
(global-evil-leader-mode)

(evil-mode 1)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(setq-default key-chord-two-keys-delay 0.1)
(key-chord-mode 1)

(provide 'init-evil)

;;; init-evil.el ends here
