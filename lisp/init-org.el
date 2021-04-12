;; org mode
;; org code blocks highlight
(use-package org
  :config
  (setq org-src-fontify-natively t)
  (setq org-agenda-files '("~/org"))
  (global-set-key (kbd "C-c a") 'org-agenda)
  (setq org-capture-templates
    '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Work Schedule")
	"* TODO [#B] %?\n  %i\n"
	:empty-lines 1))
  )
  ;; org capture kbd
  (global-set-key (kbd "C-c r") 'org-capture)
 )

(use-package org-pomodoro)

;; org-bullets
(use-package org-bullets
  :hook
  (org-mode . (lambda () (org-bullets-mode 1)))
  )

;; evil-org-mode
(use-package evil-org
  :after (org evil)
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  (setq evil-want-C-i-jump nil) ;; avoid conflicts with evil tab
  (evil-org-set-key-theme '(navigation insert textobjects additional))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(provide 'init-org)
