# LTE-Ansible-

- You need to run the following sequence of commands to install all the necessary programs and libraries:
  - apt-get update && apt -y --force-yes install git python3-pip 
  - pip install ansible
  - apt -y --force-yes install nodejs npm
  - npm -y --force-yes install node-ansible
  - npm -y --force-yes install dgram
- You need to set up an ssh connection with the masquerade server and configure hosts file which is located in the directory "/playbooks". This stage described in detail in this video https://www.youtube.com/watch?v=SpmcZkAutjg&t=612s.
- Launch server using the command "node server [arg1] [arg2]"
  - arg1 - port which server should listen
  - arg2 - full path to the directory "/playbooks"
