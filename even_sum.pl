get_probability_sum_even_helper([],_,_,_).
get_probability_sum_even_helper(_,[],_,_).
get_probability_sum_even_helper([],[],A,A).

get_probability_sum_even_helper([H1|T1],[H2|T2],A,X):-
	((H1+H2) mod 2 =:= 0 -> get_probability_sum_even_helper([H1|T1],T2,[[H1,H2]|A],X),
	get_probability_sum_even_helper(T1,[H2|T2],[[H1,H2]|A],X),
	get_probability_sum_even_helper(T1,T2,[[H1,H2]|A],X);
	get_probability_sum_even_helper([H1|T1],T2,A,X),
	get_probability_sum_even_helper(T1,[H2|T2],A,X),
	get_probability_sum_even_helper(T1,T2,A,X)
	).
	
get_probability_sum_even(Bag1, Bag2, N, D):-
	get_probability_sum_even_helper(Bag1, Bag2, [], X),
	length(X,N),
	length(Bag1,N1),
	length(Bag2,N2),
	D is N1*N2.
	% fraction_simplify(Nr, Dr, N, D).
