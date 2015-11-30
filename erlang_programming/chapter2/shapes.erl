%% Code from 
%%   Erlang Programming
%%   Francecso Cesarini and Simon Thompson
%%   O'Reilly, 2008
%%   http://oreilly.com/catalog/9780596518189/
%%   http://www.erlangprogramming.org/
%%   (c) Francesco Cesarini and Simon Thompson

%% 

-module(shapes).
-export([area/1,area2/1,flatten/1,factorial/1]).

-import(math, [sqrt/1]).

% To calculate the area of a shape (section 2.12)
% Changed Other to _Other so compile warnings go away
area({square, Side}) ->
  Side * Side ;
area({circle, Radius}) ->
  math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
  S = (A + B + C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_Other) ->
  {error, invalid_object}.

% Variant of area using the  sqrt/1 imported from the math module.
% Changed Other to _Other so compile warnings go away

area2({square, Side}) ->
  Side * Side ;
area2({circle, Radius}) ->
  math:pi() * Radius * Radius;
area2({triangle, A, B, C}) ->
  S = (A + B + C)/2,
  sqrt(S*(S-A)*(S-B)*(S-C));
area2(_Other) ->
  {error, invalid_object}.

% To flatten a 3D object into a 2D object.
% Moved flatten(_Other) to end so patterns can match.

flatten(cube)   -> square;
flatten(sphere) -> circle;
flatten(_Other)  -> {error, unknown_shape}.

% The factorial function.

factorial(0) -> 1;
factorial(N) ->
  N * factorial(N-1).
