pipeline{

    agent any

    stages {
        
        stage("init") {
            steps{
            sh "sudo su"
            sh "apt update"
            }
        }

        stage("build") {

            steps {
            echo "building the application"
            sh "apt install wget -y"
            }

        }


        stage("test") {

            steps {
            echo "testing the application"
            }

        }


        stage("deploying") {

            steps {
            echo "deploying the application"
            }

        }

    }

}
