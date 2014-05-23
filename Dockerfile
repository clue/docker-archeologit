FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	git npm

# install bower (and link node binary for using bower)
RUN npm install -g bower
RUN ln -s /usr/bin/nodejs /usr/bin/node

# add archeologit user account
RUN useradd -m -d /home/archeologit archeologit
USER archeologit

# clone ArcheoloGit and switch into
RUN git clone https://github.com/marmelab/ArcheoloGit.git /home/archeologit/ArcheoloGit
WORKDIR /home/archeologit/ArcheoloGit

# install assets (requires HOME to be set)
RUN HOME=/home/archeologit bower install

# this is the directory where the source git repository should be mounted to
VOLUME /data

# expose only http port 8000
EXPOSE 8000

# always analyze source volume, then start a lightweight webserver
CMD ./run.sh /data && python -m SimpleHTTPServer 8000
