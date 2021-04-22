pipeline {
    agent {
       label "deploy" 
    }
    stages {
	   stage("running status")
            {
             steps
            	{
                updateGitlabCommitStatus name: 'build', state: 'running'
            	}
       	    }

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
    post 
	{
	    failure 
		    {
                updateGitHubCommitStatus name: 'build', state: 'failed'
	    	}
	    		success 
	    	{
			    updateGitHubCommitStatus name: 'build', state: 'success'
		    }
	}
}
