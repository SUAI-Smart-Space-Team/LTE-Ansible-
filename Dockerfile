FROM ubuntu:20
ENV NODE_ENV=production
RUN apt-get update && apt install git python3-pip
RUN update-alternatives --install /usr/bin/python /usr/bin/python3 2
RUN pip install ansible
RUN apt install nodejs npm
RUN npm install node-ansible

WORKDIR /LTE-Ansible-

COPY ./ . 

EXPOSE 15000

CMD ["node", "server.js 15000 /playbooks"]
