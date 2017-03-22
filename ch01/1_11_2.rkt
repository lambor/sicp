#! /usr/bin/env racket
#lang racket/base
(define	(f-iter	n fn-1 fn-2 fn-3 counter)
		(cond	((= counter (+ n 1))	fn-1)
				((or (< counter 3))		(f-iter n counter fn-1 fn-2 (+ counter 1)))
				(else (f-iter n (f1 fn-1 fn-2 fn-3) fn-1 fn-2 (+ counter 1)))))

(define (f1	fn-1 fn-2 fn-3) (+	fn-1
								(*	2 fn-2)
								(*	3 fn-3)))

(define	(f n)
		(f-iter n 0 0 0 0))

(f 4)
