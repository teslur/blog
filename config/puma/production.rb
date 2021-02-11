# from https://www.subarunari.com/entry/2018/04/04/Rails_%2B_Puma_%2B_Nginx_on_CentOS_7_%E3%81%AE_%E7%92%B0%E5%A2%83%E6%A7%8B%E7%AF%89%E3%83%A1%E3%83%A2

environment "production"

# UNIX Socketへのバインド
tmp_path = "#{File.expand_path("../../..", __FILE__)}/tmp"
bind "unix://#{tmp_path}/sockets/puma.sock"

# スレッド数とWorker数の指定
threads 3, 5
workers 2
preload_app!

# デーモン化の設定
daemonize
pidfile "#{tmp_path}/pids/puma.pid"

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
