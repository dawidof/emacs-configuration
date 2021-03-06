;;; sunflower-css.el --- Emacs Sunflower: css support
;;
;; Copyright @ 2017 Dmytro Koval
;;
;; Author: Dmytro Koval <dawidof@mail.ru>
;; URL: https://github.com/dawidof/sunflower
;; Version: 0.0.1
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for css-mode.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(eval-after-load 'css-mode
  '(progn
     (sunflower-require-packages '(rainbow-mode))

     (setq css-indent-offset 2)

     (defun sunflower-css-mode-defaults ()
       (rainbow-mode +1)
       (run-hooks 'sunflower-prog-mode-hook))

     (setq sunflower-css-mode-hook 'sunflower-css-mode-defaults)

     (add-hook 'css-mode-hook (lambda ()
                                (run-hooks 'sunflower-css-mode-hook)))))

(provide 'sunflower-css)
;;; sunflower-css.el ends here
