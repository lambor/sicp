#! /usr/bin/env racket
#lang racket/base

(define (min a b)
		(if	(< a b)
			a
			b))

(define	(max_sum a b c)
		(-	(+ a b c)
			(min	a
					(min b c))))

(max_sum 3 5 9)
