pipeline{

    agent{
	label "slave"
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
            echo "deploying the application"
	    sh '''
	       sudo npm i pm2@latest -g
	       pm2 start
	       '''
            
            }

        }

    }

}
