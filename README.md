Build with `sh ./build.sh`

Run the container 

`docker run -itd -p 2026:22 -p 5001:5000 docker-ansible`

Then ssh or exec on to the container

`ssh -p 2026 root@localhost -i id_rsa`

clone this repo

then run

`ansible-playbook db-server-playbook.yml -i hosts`


Open a browser on host and go to URL

`http://localhost:5001                            => Welcome`
  
`http://localhost:5001/how%20are%20you            => I am good, how about you?`
  
`http://localhost:5001/read%20from%20database     => JOHN`
