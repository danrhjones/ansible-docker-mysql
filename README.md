Build with `sh ./build.sh`

Run the container 

docker run -itd -p 2026:22 docker-ansible

Then ssh or exec on to the container

ssh -p 2026 root@localhost -i id_rsa
