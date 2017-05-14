%%%--------------------------------------
%%% @Author  : aoao
%%% @Email   : 531671505@qq.com
%%% @Created : 2017.05.14
%%% @Description:  项目启动
%%%--------------------------------------
-module(start_sup).
-behaviour(supervisor).
-export([
	start_link/0,
	init/1
]).

start_link() ->
	supervisor:start_link(?MODULE, []).

init(_) ->
    {ok,
        {{one_for_all, 10, 10},
            [
                {
                    tcp_init,
                    {tcp_init, start_link, []},
                    transient,
                    100,
                    worker,
                    [tcp_init]
                }
            ]
        }
    }.