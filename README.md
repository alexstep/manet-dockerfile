# manet-dockerfile
Dockerfile for alexstep manet version, with "crop element by cs selector feature", ith this pull request https://github.com/vbauer/manet/pull/68
Forked from: https://github.com/openmaphub/manet-dockerfile

<pre>
git clone https://github.com/alexstep/manet-dockerfile/
cd manet-dockerfile

sudo docker build -t alexmanet - < Dockerfile

sudo docker run --name=manet -d -p=<your_server_ip>:5577:8891 alexmanet
</pre>
Open http://your_server_ip:5577

<img src="https://github.com/alexstep/manet-dockerfile/blob/master/screenshot.png?raw=true">
