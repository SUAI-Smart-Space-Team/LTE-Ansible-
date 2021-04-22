pipeline {
    agent {
       label "deploy" 
    }
    stages {

          stage("connect") {
             steps {
               script {
                   sh '''
                   make image VERSION=lte_ansible BRANCH=null FILE=./Dockerfile
                   make push VERSION=lte_ansible
                   make pull VERSION=lte_ansible 
                   '''
                   
               }
             }
          }
        } 
}
