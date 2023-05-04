pipeline{

    agent{
	label "slave1"
}

    stages {
        
        

        stage("build") {

            steps {
            echo "building the application"
            
            }

        }


        stage("deploying") {

            steps {
            echo "deploying the application"
            git url: 'https://github.com/awsandgit/nodejs-code.git'
            ansiblePlaybook become: true, credentialsId: 'e93a3e8a-cf52-42f7-a0a1-ec23b6adf42e', installation: 'ansible', inventory: '/var/lib/jenkins/workspace/ansible-playbook/inventory', playbook: '/var/lib/jenkins/workspace/ansible-playbook/update-play.yml'
            }

        }

    }

}
