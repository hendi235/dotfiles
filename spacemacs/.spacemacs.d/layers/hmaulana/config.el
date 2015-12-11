;;; config.el --- hmaulana layer configuration      -*- lexical-binding: t; -*-

;; Copyright (C) 2015

;; Author:
;;
;; This file is not part of GNU Emacs.
;;
;;; license: gplv3

;;; Code:

(require 'dash)
(require 'time-date)

;; Never load outdated bytecode
(setq load-prefer-newer t)

;; compile without asking
(setq compilation-ask-about-save nil)
