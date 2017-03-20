#! /usr/bin/env racket
#lang racket/base
(define (p) (p))

(define (test x y)
	(cond	((= x 0) 0)
			(else y)))

(test 0 (p))
