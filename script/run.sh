cd ../config
erl +P 1024000 +K true -smp enable -name ultra@127.0.0.1 -setcookie ultra1 -boot start_sasl -config log -pa ../ebin -s program_start start -extra 127.0.0.1 6666 1
