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

	    ansiblePlaybook credentialsId: '0c429859-6db4-4b03-bbf2-af5be05fa6fc', installation: 'ansible', inventory: '/var/lib/jenkins/workspace/node-pipeline/inventory', playbook: '/var/lib/jenkins/workspace/node-pipeline/playbooks/node-app-deploy.yml'
            }

        }

    }

}
