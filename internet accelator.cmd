@echo off

echo Flushing DNS cache...
ipconfig /flushdns

echo Resetting network adapter...
netsh int ip reset

echo Changing MTU size...
netsh interface ipv4 set subinterface "Ethernet" mtu=1492 store=persistent

echo Disabling unnecessary services...
service_names = "Print Spooler" "Windows Search"
for %%a in (%service_names%) do (
  sc stop %%a
)

echo Done!
pause
To use this script, copy and paste the code into a text editor, save the file as "internet_accelerator.cmd," and then double-click the file to run it. The script will flush the DNS cache, reset the network adapter, change the MTU size, and disable some unnecessary services in an attempt to improve your internet speed.

Keep in mind that these are just a few of the many ways you can try to improve your internet speed on a Windows computer. If none of these options seem to help, you may want to try more advanced troubleshooting techniques or consider contacting your internet service provider for assistance.




