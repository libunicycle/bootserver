all: bootserver

bootserver:
	gcc -flto -DTFTP_HOSTLIB *.c tftp/*.c -o bootserver
