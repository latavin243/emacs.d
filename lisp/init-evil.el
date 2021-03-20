;;; init-evil.el --- evil editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; evil package
(require-package 'evil)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)

;; leader
(require-package 'evil-leader
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "sf" 'counsel-rg
  "rg" 'counsel-rg
  "ff" 'counsel-git
  "bb" 'switch-to-buffer
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wM" 'delete-other-windows
  "nn" 'narrow-to-region
  "nw" 'widen
  "nf" 'narrow-to-defun
  "lf" 'imenu
)

;; surround
(require-package 'evil-surround
(global-evil-surround-mode 1)

;; evil nerd commenter
(require-package 'evil-nerd-commenter
(evil-leader/set-key
  "cc" 'evilnc-comment-or-uncomment-lines
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  ;; "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  ;; "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator
)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)

(provide 'init-evil)
;;; init-evil.el ends here
