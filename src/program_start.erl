%%%--------------------------------------
%%% @Author  : aoao
%%% @Email   : 531671505@qq.com
%%% @Created : 2017.05.14
%%% @Description:  项目启动
%%%--------------------------------------
-module(program_start).
-export([start/2, start/0]).
-compile(export_all).

%% 命令行启动
start() ->
	ok = application:start(server).
	
%% 配置启动
start(_, _) ->
	start_sup:start_link().