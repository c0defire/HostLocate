echo off

color 1F

echo off

net localgroup administrators tclient /del
net user tclient /del

net localgroup administrators root /del
net user root /del

net localgroup administrators pawed /del
net user pawed /del

net localgroup administrators hacker /del
net user hacker /del

net localgroup administrators "NetworkAdministrator" /del
net user "NetworkAdministrator" /del

exit