option explicit
'setup
dim shell
dim url
dim arg
dim arg1
dim sh
dim arg2
dim arg3

set arg = wscript.arguments

arg1 = arg(0)

'arg3 = arg(2)

if arg1 = "-p" then

set shell = createobject("wscript.shell")
set sh = shell.exec("cmd /c curl https://ipinfo.io/ip")
wscript.echo sh.StdOut.ReadLine

end if 

if arg1 = "-g" then

arg2 = arg(1)

set shell = createobject("wscript.shell")
shell.run "cmd /k curl https://ipinfo.io/" + arg2

end if

if arg1 = "-il" then 

set shell = createobject("wscript.shell")
shell.run "cmd /k ipconfig | findstr IPv4"

end if

if arg1 = "-ar" then

set shell = createobject("wscript.shell")
shell.run "cmd /k arp -a"

end if

if arg1 = "-ns" then

set shell = createobject("wscript.shell")
shell.run "cmd /k netstat -nbf"

end if
