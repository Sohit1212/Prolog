
acc_rev([H1|T1],A,R):- acc_rev(T1,[H1|A],R).
acc_rev([],A,A).
	
