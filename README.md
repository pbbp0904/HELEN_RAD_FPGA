# HELEN_RAD_FPGA
Verilog code for the Radiation Detection Payload FPGA
Startup script for HPS in etc/rc.local
if [ "`hciconfig | grep hci`" != "" ]; then
    hciconfig hci piscan
fi
./DCCConnect &
exit 0