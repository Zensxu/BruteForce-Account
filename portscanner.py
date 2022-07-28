import socket

target = input("Masukan IP address: ")
portrange = input("Masukan range port (ex: 1-10): ")

lowport = int(portrange.split('-')[0])
highport = int(portrange.split('-')[1])

print ("Scanning host ", target, "from port ", lowport, " to port ", highport)

for port in range(lowport, highport):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    status = s.connect_ex((target, portrange))

if (status == 0):
    print("Port ", port, "- open")
else:
    print("Port ", port, "- closed")
    s.close()