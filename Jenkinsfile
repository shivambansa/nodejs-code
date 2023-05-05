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
            sh 'sudo npm i'
            sh 'npm run build' 
            }

        }


        stage("deploying") {

            steps {
            echo "deploying the application using ansible-playbook"

	    ansiblePlaybook credentialsId: 'e93a3e8a-cf52-42f7-a0a1-ec23b6adf42e', installation: 'ansible', inventory: '/var/lib/jenkins/workspace/node-pipeline/inventory', playbook: '/var/lib/jenkins/workspace/node-pipeline/playbooks/node-app-deploy.yml'
            }

        }

    }

}
