;;~/.emacs.d/init.el

(package-initialize)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("SC"  . "http://joseito.republika.pl/sunrise-commander/"))

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(font . "Menlo-14"))

(global-auto-revert-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (sunrise-commander))))

(menu-bar-mode -1)
(tool-bar-mode -1) 
(toggle-scroll-bar -1) 

;; No more typing the whole yes or no. Just y or n will do.
(fset 'yes-or-no-p 'y-or-n-p)

;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
    (if (get-buffer "*scratch*")
            (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
                '(lambda ()
                            (let ((buffer "*Completions*"))
                                         (and (get-buffer buffer)
                                                              (kill-buffer buffer)))))

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)

;;(add-to-list 'load-path "~/projects/dockerfile-mode/")
;;(require 'dockerfile-mode)
;;(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq backup-directory-alist
            `(("." . ,(expand-file-name
                                         (concat user-emacs-directory "backups")))))

(global-linum-mode t)

(global-set-key (kbd "M-`") 'other-frame)

(global-set-key (kbd "M-.") 'previous-buffer)

(global-set-key (kbd "M-,") 'next-buffer)


(defun switch-to-last-buffer ()
    (interactive)
      (switch-to-buffer nil))

(global-set-key (kbd "C-<backspace>") 'switch-to-last-buffer)

(global-set-key (kbd "C-.") 'other-window)

(global-set-key (kbd "C-,") 'prev-window)

(defun prev-window ()
    (interactive)
      (other-window -1))

(global-set-key [(control x) (k)] 'kill-this-buffer)

(global-set-key (kbd "s-w") 'kill-this-buffer)

(global-set-key (kbd "s-<right>") 'move-end-of-line)

(global-set-key [f1] '(lambda () (interactive) (ansi-term "/bin/bash")))

(set-register ?e (cons 'file "~/.emacs.d/init.el"))
