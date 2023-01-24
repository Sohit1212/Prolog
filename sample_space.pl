 
all_arrangements(0, List, _, List) :- !.
all_arrangements(1, List, _, List) :- !.
all_arrangements(N, CurrentList, SingleOutComeList, SampleSpace) :-
    length(CurrentList, Length),
    LeftN is N - 1,
    c_repeat(Length, CurrentList, SingleOutComeList, TempList1),
    flatten(TempList1, TempList),
    all_arrangements(LeftN, TempList, SingleOutComeList, SampleSpace), !.

c_repeat2(0, _, _, []).
c_repeat2(Length, X, [H|T], [Z|Tail]) :-
    string_concat(X, H, Z1),
    atom_string(Z, Z1),
    ShortLength is Length - 1,
    c_repeat2(ShortLength, X, T, Tail), !.

c_repeat(0, _, _, []).
c_repeat(Length, [X|Y], [H|T], [Z|Tail]) :-
    length([H|T], Length2),
    c_repeat2(Length2, X, [H|T], Z),
    ShortLength is Length - 1,
    c_repeat(ShortLength, Y, [H|T], Tail), !.
