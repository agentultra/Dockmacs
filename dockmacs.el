;;; dockmacs.el -- Emacs web-server in a docker container

;;; Commentary:

;;; Code:

;; Initialization
(require 'package)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(package-refresh-contents)

(defvar dockmacs-required-packages
  '(simple-httpd f))

(mapc (lambda (p)
        (package-install p))
      dockmacs-required-packages)

;; Main
(require 'simple-httpd)

(defservlet hello-world text/plain (path)
  (insert "Hello, " (file-name-nondirectory path)))

(httpd-start)

;;; dockmacs.el ends here
