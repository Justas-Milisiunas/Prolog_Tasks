% Task 5 solver
unique([], _, []).

unique([Item|Tail], LastItem, Output) :-
    Item == LastItem,
    unique(Tail, Item, Output).

unique([Item|Tail], _, [Item|Output]) :-
    unique(Tail, Item, Output).

task5_solve(List, Output) :-
    unique(List, _, Output),
    !.

% Task 6 solver
count([], Count) :-
    Count is 0.
     

count([Item|Tail], Count) :-
    number(Item),
    count(Tail, Count2),
    Count is Count2+1.

count([_|Tail], Count) :-
    count(Tail, Count).
    

task6_solve(List, Count) :-
    count(List, Count),
    format('Found ~w numbers', [Count]),
    !.

