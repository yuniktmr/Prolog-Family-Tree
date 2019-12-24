/*Course: CSCI 450, Section 1
 Student Name: Yunik Tamrakar
 Student ID: 10602304
 Homework #9
 Due Date: 11/20/2019
  In keeping with the Honor Code of UM, I have neither given nor received assistance
 from anyone other than the instructor.
 Program Description: Program that describes the given family tree
*/
%facts declaration
male(bill).
male(jake).
male(kim).

female(ann).
female(mary).
female(christy).

parents(bill, ann, jake).
parents(bill, ann ,kim).
parents(bill, ann, mary).
parents(bill, ann, christy).


%rules declaration 
is_sibling_of(X, Y) :- parents(A, B, Y), parents(A, B, X), not(X == Y).
is_sister_of(X, Y):- female(X), parents(A, B, Y), parents(A,B, X), not(X == Y).
is_brother_of(X, Y):- male(X), parents(A, B,Y), parents(A, B,X), not(X == Y).