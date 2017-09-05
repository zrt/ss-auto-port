#! ruby

loop do
	port = 40000 + rand(20000)
	s = `lsof -i:#{port}`
	if s.length > 0 then
		next
	end
	`echo #{port} > /var/www/html/port.txt`
	`echo {\\\"server\\\":\\\"0.0.0.0\\\",\\\"server_port\\\":#{port},\\\"local_port\\\":1080,\\\"password\\\":\\\"ulXSFWEfsfjoiwSFDSFrwr\\\",\\\"timeout\\\":60,\\\"method\\\":\\\"aes-256-cfb\\\"} > /root/ss.conf`
	`killall ss-server`
	break
end
