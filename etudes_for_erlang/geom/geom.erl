%% @author Omer Wazir <omer@thewazir.com>
%% @doc Functions for calculating areas of geometric shapes.
%% @version 0.1

-module(geom).
-export([area/2]).

%  @doc Take length and width of rectangle and return area

-spec(area(number(),number()) -> number()).

area(Length,Width) -> Length * Width.