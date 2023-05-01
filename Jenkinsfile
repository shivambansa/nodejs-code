pipeline{

    agent any

    stages {

        stage("build") {

            steps {
            echo "building the application"
            apt install wget
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
