;; hide tool bar
(tool-bar-mode -1)
;; hide scroll bar
(scroll-bar-mode -1)

;; skip startup page
(setq inhibit-splash-screen t)

;; cursor style
(setq-default cursor-type 'bar)

;; fullscreen startup
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; highlight current line
(global-hl-line-mode t)

(provide 'init-ui)