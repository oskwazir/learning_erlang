%% Code exercise from 
%%   reddit.com/r/dailyprogrammer
%% @author Omer Wazir <omer@thewazir.com>
%% @doc https://www.reddit.com/r/dailyprogrammer/comments/3twuwf/20151123_challenge_242_easy_funny_plant/
%% [2015-11-23] Challenge # 242 [easy] Funny plant
%% Scientist have discovered a new plant. The fruit of the plant can
%% feed 1 person for a whole week and best of all, the plant never
%% dies. Fruits needs 1 week to grow, so each weak you can harvest it fruits. Also the plant gives 1 fruit more than the week before and to get more plants you need to plant a fruit.
%% Now you need to calculate after how many weeks, you can support a group of x people, given y fruits to start with.
    %%
%% @version 0.1

-module(funnyplant).

-export([weeksToEat/2]).

weeksToEat(0,_,Weeks) -> Weeks.
weeksToEat(People,Fruit) -> {People,Fruit}.