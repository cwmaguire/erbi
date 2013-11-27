%%% -*- coding:utf-8; Mode: erlang; tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
%%% ex: set softtabstop=4 tabstop=4 shiftwidth=4 expandtab fileencoding=utf-8:
-module(erbi_mockable_driver).

%% @doc Starts driver autoprovision if needed.
%%
%% When mocking a driver, this function is called each time a connect is requested.
%% The implementation of ths function is expected to cover:
%%   - DB instance creation: Some drivers may require creating a separate db instance
%%       for use of mocking db only. The instance creation should be performed only
%%       if it was not previouly done.
%%   - DB initialization: Creating schema, tables...
%%   - Returning proplist, user and password to be passed to the base driver
%%       connection request, that allows to connect to the created instance.  
%%
-callback start_mocking(PropList::list())->
    {list(),string(),string()}.
