#! /usr/bin/env racket
#lang racket/base

(define	(root3-iter	guess x guess0)
		(if	(good-enough?	guess guess0)
			guess
			(root3-iter	(improve	guess x) x guess)))

(define	(good-enough?	guess guess0)
		(<	(/	(abs	(-	guess guess0))
				guess)
			0.001))

(define	(improve	guess x)
		(/	(+	(/	x (*	guess guess))
				(*	2 guess))
			3))

(define (root3	x)
		(root3-iter 1.0 x 0.0))

(root3 27)
