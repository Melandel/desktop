# Jekyll_wsl

https://github.com/microsoft/WSL/discussions/2471#discussioncomment-63089
	bundle exec jekyll serve --host=0.0.0.0
		> run ip addr and get eth0's or enp62s0u1's inet. That's the IP adrress of wsl2
		> either browse to that:ip:addr:PORT/BASEURL/
		> alternatively, edit C:\Windows\System32\drivers\etc\hosts to allow browsing to hostname:PORT/BASEURL/
