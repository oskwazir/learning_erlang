%% @author Omer Wazir <omer@thewazir.com>
%% @doc Functions for calculating areas of geometric shapes.
%% @version 0.2

-module(geom).
-export([area/3]).

%% @doc Calculates the area of a shape, given
%% the shape and two dimensions. Uses an atom
%% to determine what kind of shape it is.

-spec(area(atom(), number(), number()) -> number()).

area(rectangle, L, W) when L >= 0, W >= 0 ->
     L * W;
area(triangle, B, H) when B >= 0, H >= 0 ->
    B * H / 2.0;
area(ellipse, A, B) when A >= 0, B >= 0 ->
    math:pi() * A * B.

