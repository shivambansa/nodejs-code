pipeline{

    agent{
	label "master"
}

    stages {
        
        stage("checkout"){
	steps {
            git 'https://github.com/awsandgit/nodejs-code.git'
	}
	} 

        stage("build") {

            steps {
            echo "building the application"
            sh 'npm i'
            sh 'npm run build' 
            }

        }


        stage("deploying") {

            steps {
            echo "deploying the application using ansible-playbook"

	    ansiblePlaybook credentialsId: 'c76bf1c0-0c16-4484-b25e-03064068d056', installation: 'ansible', inventory: '/var/lib/jenkins/workspace/node-pipeline/inventory', playbook: '/var/lib/jenkins/workspace/node-pipeline/playbooks/node-app-deploy.yml'
            }

        }

    }

}
