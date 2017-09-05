#! ruby
port = `curl http://107.170.251.218/port.txt`
port.strip!
`echo "{ \\\"server\\\":\\\"107.170.251.218\\\", \\\"server_port\\\":#{port}, \\\"local_port\\\":1080,\\\"password\\\":\\\"ulXSFWEfsfjoiwSFDSFrwr\\\",\\\"timeout\\\":60,\\\"method\\\":\\\"aes-256-cfb\\\" }" > /root/hhh/config.json`

`killall ss-redir`
`killall ss-tunnel`

