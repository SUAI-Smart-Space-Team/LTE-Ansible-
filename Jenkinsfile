pipeline {
    agent {
       label "deploy" 
    }
    stages {
          stage("connect") {
             steps {
               script {
                   sh '''
                   make image VERSION=lte(ansible) BRANCH=null FILE=./Dockerfile
                   make push VERSION=lte(ansible)
                   make pull VERSION=lte(ansible) 
                   '''
                   
               }
             }
          }
        }
}
