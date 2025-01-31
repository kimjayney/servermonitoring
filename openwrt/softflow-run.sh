softflowd -i br-lan \
  -t expint=60 \
  -m 8192 \
  -n 192.168.1.2:2055 \
  -p /var/run/softflowd.pid \
  -c /var/run/softflowd.ctl \
  -v 5 \
  -L 255 \
  -T full \
  -6 \
  -s 1

