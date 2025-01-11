import time
import socket
import netflow
import json 
port = 2055
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
templates = {"netflow": {}, "ipfix": {}}
sock.bind(("0.0.0.0", port))
to_retry = []
while True:
    time.sleep(.25)
    if len(to_retry) > 0:
#        print(len(to_retry))
        pkt = to_retry.pop()
        try:
            pkt = netflow.parse_packet(pkt, templates) 
        except:
            continue

    payload, client = sock.recvfrom(4096)

    try:
        pkt = netflow.parse_packet(payload, templates)
        for item in pkt.flows:        
            print(json.dumps(item.data))

    except:
        to_retry.append(payload)
