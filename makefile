SHELL	= /bin/sh

all:
	install -m 755 ps2ram /usr/local/sbin/ps2ram
	install -m 644 ps2ram.service /etc/systemd/system/ps2ram.service
	systemctl daemon-reload
	systemctl enable --now ps2ram.service

uninstall:
	-systemctl disable --now ps2ram.service
	rm -f /etc/systemd/system/ps2ram.service
	rm -f /usr/local/sbin/ps2ram /usr/local/bin/ps2ram
	systemctl daemon-reload
