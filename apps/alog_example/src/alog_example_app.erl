-module(alog_example_app).

-behaviour(application).

-include_lib("alog/include/alog.hrl").

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    Res = alog_example_sup:start_link(),
    ?DBG("HELLO ALOG"),
    Res.

stop(_State) ->
    ok.
