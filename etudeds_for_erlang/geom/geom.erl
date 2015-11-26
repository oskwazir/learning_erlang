-module(geom).
-export([area/2]).

% Take length and width and return area
area(Length,Width) -> Length * Width.