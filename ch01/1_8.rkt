#! /usr/bin/env racket
#lang racket/base

(define	(good-enough?	guess guess0)
		(<	(/	(abs	(-	guess guess0))
				guess)
			0.001))

(define	(square	x) (*	x x))

(define (sqrt	x)
		(sqrt-iter2	1.0 x 0.0))

(define	(sqrt-iter2 guess x guess0)
		(if	(good-enough? guess guess0)
			guess
			(sqrt-iter2	(improve guess x)
						x
						guess)))

(define	(improve guess x)
		(average guess (/ x guess)))

(define	(average x y)
		(/	(+ x y) 2))

(sqrt 9)
