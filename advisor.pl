% A simple research supervisor advisor system
% If temp.pl is not found in your directory, create a
% file name temp.pl
% Copyright by Ashikul Hosen, Email: sagor.ashikul@gmail.com

% The user interface

% Initialization procedures
start:-
    reconsult('temp.pl'),
    reconsult('info.pl'),
    reconsult('knowledge_base.pl'),nl,
    menu.

% Saves new temporary info for use by inference engine
save:-
    write('Saving data'),nl,
    tell('temp.pl'),
    listing(grade),
    listing(interest),
    told,
    write('Done'),nl.

% Clears all temporary data from temporary data file
clear:-
    abolish(grade/2),
    abolish(interest/2),
    tell('temp.pl'),
    told.

prompt_grade(Subject, Title):-
    write(Title),
    write_ln(": "),
    read(Grade),
    assert(grade(Subject, Grade)).

% Prompts for the level of interest in specified area
prompt_interest(Interest, Title):-
    write("What is your level of interest in "),
    write(Title),
    write_ln(" "),
    read(Interest_Level),
    assert(interest(Interest, Interest_Level)).

% Prompts for user levels of the specified attribute
prompt_levels(Interest, Title):-
    write("What is your level of "),
    write(Title),
    write_ln(" "),
    read(Levels),
    assert(interest(Interest, Levels)).

% Gives instructions  for entering grades
grade_instructions:-
    write_ln("================ Smart Thesis/Project Supervisor Advisor System ==============="),
    write("Enter the GPA you got in the previous semester."),nl,
    write("(A+ is 10 points, A is 9 points etc...)"),nl,nl.

interest_instructions:-
    nl,
    write("Great, now you will answer a few more questions concerning your interest."),nl,
    write("Kindly respond with numbers from 0 to 4:"),nl,nl,
    write("0 - None"),nl,
    write("1 - Low"),nl,
    write("2 - Medium"),nl,
    write("3 - High"),nl,
    write("4 - Very high"),nl,nl.

%Displays menu to user
menu:-
    clear, /* Clear existing facts before asking for new ones */
    grade_instructions,
    prompt_grade(gpa, "GPA"),

    interest_instructions,
    prompt_interest(iot, "Internet Of Things(IOT)?"),
    prompt_interest(ai, "Artificial Intelligence?"),
    prompt_interest(ds, "Data Science?"),
    prompt_interest(ml, "Machine Learning?"),
    prompt_interest(net, "Networking?"),
    prompt_interest(se, "Software Engineering and Design Patterns?"),
    prompt_interest(tcs, "Theoretical Computer Science?"),
    prompt_interest(graphics, "Computer Graphics?"),
    prompt_levels(tolerance, "Stress Levels?"),
    prompt_interest(nlp, "Natural Language Processing?"),
    prompt_interest(security, "Computer Security?"),
    prompt_interest(robot, "Robotics?"),
    prompt_interest(imgproc, "Image Processing?"),
    prompt_interest(cv, "Computer Vision?"),
    prompt_levels(perfectionist, "attention to details?"),
    prompt_interest(semanticw, "Semantic Web?"),
    prompt_interest(bigdata, "Big Data Analysis?"),
    prompt_interest(greenc, "Green Computing"),
    prompt_interest(bioinfo, "Bio Informatics?"),
    save,
    should_take(Topic).
