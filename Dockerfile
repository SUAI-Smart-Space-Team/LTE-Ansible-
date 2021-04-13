FROM python
ENV NODE_ENV=production
RUN apt-get update && apt -y --force-yes install git python3-pip
RUN pip install ansible
RUN apt -y --force-yes install nodejs npm
RUN npm -y --force-yes install node-ansible

#WORKDIR /LTE-Ansible-

COPY . . 

EXPOSE 15000

CMD ["node", "server.js", "15000", "./playbooks"]
