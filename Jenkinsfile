pipeline {
    agent {
       label "deploy2" 
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
