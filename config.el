(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)
(setq org-directory "~/org/")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(unless (display-graphic-p)
  (load-theme 'doom-one t))

(map! :nv "C-n" #'consult-lsp-symbols)

(setq lsp-completion-enable-additional-text-edit t)

(map! :map java-mode-map
      :localleader
      "i" #'lsp-java-organize-imports)

(defvar my/emacs-theme-link (expand-file-name "~/.config/doom/current-theme.el")

(defun my/load-current-theme ()
  (interactive)
  (when (file-exists-p my/emacs-theme-link)
    (load my/emacs-theme-link)))

(add-hook 'doom-init-ui-hook #'my/load-current-theme)

(setq doom-font (font-spec :family "JetBrains Mono" :size 14))
