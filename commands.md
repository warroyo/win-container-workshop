#### slide 33

```
docker image inspect mcr.microsoft.com/windows/servercore:ltsc2019
```

```
docker image tag mcr.microsoft.com/windows/servercore:ltsc2019 myimage
docker image tag mcr.microsoft.com/windows/servercore:ltsc2019 myimage:1.0
docker image ls
```

#### slide 37

```
docker container run mcr.microsoft.com/windows/nanoserver:1809 hostname
docker container run mcr.microsoft.com/windows/nanoserver:1809 ipconfig
docker container run mcr.microsoft.com/windows/nanoserver:1809 cmd /c set
docker container run mcr.microsoft.com/windows/nanoserver:1809 cmd /c cd
```

#### slide 39

```
docker container ls -lq
docker container logs $(docker container ls -lq)
```

#### slide 40

```
docker container run mcr.microsoft.com/windows/servercore:ltsc2019 powershell -command Out-File test1.txt
docker container diff $(docker container ls -lq)
```


#### slide 42

```
docker container run mcr.microsoft.com/windows/nanoserver:1809 ping -n 30 google.com
docker container ls
```

#### slide 43

```
docker container run -it mcr.microsoft.com/windows/nanoserver:1809 ping -n 30 google.com
docker container ls

```

#### slide 44

```
docker container run -it mcr.microsoft.com/windows/servercore:ltsc2019 powershell
ls
cd Users
exit
```

#### slide 45

```
docker container run -d mcr.microsoft.com/windows/servercore:ltsc2019 powershell ping -n 300 google.com
docker container ls
docker container logs $(docker container ls -lq)
docker container kill $(docker container ls -lq)
```


#### slide 46

```
docker container run --rm mcr.microsoft.com/windows/nanoserver:1809 ping google.com
docker container rm $(docker container ls -lq)
docker container prune

```

#### slide 48

```
docker search microsoft
docker image pull microsoft/iis:nanoserver

```

#### slide 50

```
docker container run -it ubuntu

```

#### slide 51

```
docker container run -d --name iis -p 80:80 mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
```

#### slide 52

```
docker container exec -it iis powershell
cd C:\inetpub\wwwroot
dir
```

#### slide 53

```
<html><body>Hello from Windows container</body></html>


docker container cp iisstart.htm iis:C:\inetpub\wwwroot

```

#### slide 51

```
docker container run -d --name iis -p 80:80 mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
```

#### slide 51

```
docker container run -d --name iis -p 80:80 mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
```