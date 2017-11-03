/* * * * * * * * * * * * * * * * * * * PARENTS * * * * * * * * * * * * * * * * * * * * * * * * */
parent(X, Y) :- 
		child(Y, X).  /* parent(Y, X) means Y is a parent of X */
			      /* child(X, Y) means Y is a child of X   */

/* * * * * * * * * * * * * * * * * * * * SIBLING * * * * * * * * * * * * * * * * * * * * * * * */
sibling(X, Y) :- 
		male(D), parent(D, X), parent(D, Y), 	/* The male parent of X and Y and the    */
		female(F), parent(F, X), parent(F, Y),  /* female parent of X and Y where X != Y */
		X \= Y.					/* means that X and Y are siblings.      */

/* * * * * * * * * * * * * * * * * * * * Nth COUSIN * * * * * * * * * * * * * * * * * * * * * */
nthcousin(X, Y, 1) :-							/* Base case is 1st cousin, which is */
		parent(A, X), parent(B, Y), sibling(A, B).		/* your parents siblings child.      */


nthcousin(X, Y, N) :-
		parent(A, X), parent(B, Y), 	/* Find the parents of X and Y, then increment   */
		C is N - 1, 			/* towards the base case by subtracting one.     */
		nthcousin(A, B, C).		/* Find the Nth cousin of the parents of X and Y */

/* * * * * * * * * * * * * * * Nth COUSIN K-TIMES REMOVED * * * * * * * * * * * * * * * * * * */
nthcousinkremoved(X, Y, N, 0) :-		/* Base case for nth cousin k removed is just the */
		nthcousin(X, Y, N).		/* nth cousin since it is 0 times removed.        */


nthcousinkremoved(X, Y, N, K) :-			/* To find a nth cousin k times removed, recursivley */
		parent(A, Y),				/* Find the parent of who you want, remove from k    */
		C is K - 1,				/* then check the predicate again.                   */
		nthcousinkremoved(X, A, N, C).

/* * * * * * * * * * * * * * * * * * Kth CHILD * * * * * * * * * * * * * * * * * * * * * * * */
kthchild(K, X, Y) :-
		setof(Y, getchild(X, Y), L),	/* To find the Kth child, I got the set of   */
		sort(L, P),			/* all the ages of each child of a person.   */
		reverse(P, Q),			/* These ages are then sorted and reversed   */
		N is K - 1,			/* since the oldest child is the first child */
		nth0(N, Q, A), 			/* nth0 finds the K index of the ages array  */
		age(Y, A).			/* and then age is used to find which child  */
						/* is that age.                              */

getchild(X, Y) :-						
		child(C, X), age(C, Y).		/* Get child finds the age of a child given */

/* * * * * * * * * * * * * * * * * * GRANDPARENT * * * * * * * * * * * * * * * * * * * * * * */
grandparent(X, Y) :-		/* To find the grandparent of someone, find */
		parent(A, Y),	/* their parents parent.                    */
		parent(X, A).
