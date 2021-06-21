FROM ubuntu:20.04
LABEL version="1.0"
Label description="Docker image for CTF"

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y gdb gcc wireshark hydra john crunch python3 python3-pip make apache2 cmake exiftool git httpie jq vim nmap testdisk unzip ltrace strace zip build-essential binutils binwalk 
RUN pip3 install angr frida-tools pwntools mitmproxy
RUN git clone https://github.com/longld/peda.git ~/peda
COPY gdbinit /root/.gdbinit
