all:
	./rebar get-deps
	./rebar compile
	./rebar generate

run:
	./rel/bin/alog_example console
