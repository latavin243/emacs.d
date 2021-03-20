;;; init-swiper.el --- swiper -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; swiper config
(require-package 'counsel)

(require-package 'ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "C-c C-r") 'ivy-resume)

(require-package 'ivy-xref)
(require-package 'ivy-hydra)

(require-package 'swiper)

(provide 'init-swiper)
;;; init-swiper.el ends here
