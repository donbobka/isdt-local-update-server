# isdt-local-update-server

Image to simulate isdt update server for c4evo with kyosho firmware

Steps:

1. add hosts record `127.0.0.1 www.isdt.co` to hosts files (osx: `/etc/hosts`, windows: `C:\Windows\System32\drivers\etc\hosts`)
2. start docker image that will serve firmware `docker run -p 443:443 -v ./ssl:/etc/nginx/ssl -t donbobka/isdt-local-updater:c4evo-kyosho-1.0.0.10`
3. command above will create a directory `ssl` in current directory with self-signed certificate that you must add as trusted (usually just double click on crt file and accept to install)
4. Then just run ISD GO tool and it will use your local server (sometimes i have to click twice: first to restart charger into update mode and then again to initiate update)

P.S.: I did it only on my mac. Not sure about windows version of ISD Go, but I expect it will work the same
