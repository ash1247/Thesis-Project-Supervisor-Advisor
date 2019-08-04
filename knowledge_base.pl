:- dynamic grade/2.
:- dynamic interest/2.

% confirm the interest
confirm_interest(Interest,Threshold):-
	interest(Interest, InterestLevel), InterestLevel >= Threshold.

% fields knowledge base.
field(iot):-
    confirm_interest(iot,4).
field(ai):-
	confirm_interest(ai, 4).
field(ds):-
	confirm_interest(ds, 4).
field(ml):-
	confirm_interest(ml,4).
field(se):-
	confirm_interest(se,4),
	confirm_interest(perfectionist, 3).
field(net):-
	confirm_interest(net, 4).
field(tcs):-
	confirm_interest(tcs, 4),
	confirm_interest(tolerance, 3).
field(graphics):-
    confirm_interest(graphics, 4),
    confirm_interest(perfectionist, 2).
field(nlp):-
	confirm_interest(nlp, 4).
field(security):-
	confirm_interest(security, 4),
	confirm_interest(tolerance, 2).
field(robot):-
	confirm_interest(robot, 4),
    confirm_interest(perfectionist, 1),
    confirm_interest(tolerance, 2).
field(imgproc):-
	confirm_interest(imgproc, 4).
field(cv):-
	confirm_interest(cv,4),
	confirm_interest(imgproc,2).
field(semanticw):-
	confirm_interest(semanticw, 4).
field(bigdata):-
	confirm_interest(bigdata, 4),
    confirm_interest(tolerance, 1).
field(greenc):-
	confirm_interest(greenc, 4).
field(bioinfo):-
	confirm_interest(bioinfo, 3).


% Confirms if the grade for the specified unit meets the minimum
% requirement

confirm_grade(Unit, Threshold):-
    grade(Unit, GradePoints), GradePoints >= Threshold.

% Advices on topic one should take
should_take(X):-
    setof(X, can_take(X), Topic), member(X, Topic),nl,nl,
    write("You should take "),
    write(X),
    write("."),nl,nl,
    info(X).

% Define conditions necessary to take given topic

can_take(iot):-
    confirm_grade(gpa, 6),
    field(iot).

can_take(ai):-
    confirm_grade(gpa, 6),
    field(ai).

can_take(ds):-
    confirm_grade(gpa, 6),
    field(ds).

can_take(ml):-
    confirm_grade(gpa, 6),
    field(ml).

can_take(net):-
    confirm_grade(gpa, 6),
    field(net).

can_take(se):-
    confirm_grade(gpa, 6),
    field(se).

can_take(tcs):-
    confirm_grade(gpa, 6),
    field(tcs).

can_take(graphics):-
    confirm_grade(gpa, 6),
    field(graphics).

can_take(nlp):-
    confirm_grade(gpa, 6),
    field(nlp).

can_take(security):-
    confirm_grade(gpa, 6),
    field(security).

can_take(robot):-
    confirm_grade(gpa, 6),
    field(robot).

can_take(imgproc):-
    confirm_grade(gpa, 6),
    field(imgproc).

can_take(cv):-
    confirm_grade(gpa, 6),
    field(cv).

can_take(semanticw):-
    confirm_grade(gpa, 6),
    field(semanticw).

can_take(bigdata):-
    confirm_grade(gpa, 6),
    field(bigdata).

can_take(greenc):-
    confirm_grade(gpa, 6),
    field(greenc).

can_take(bioinfo):-
    confirm_grade(gpa, 6),
    field(bioinfo).

