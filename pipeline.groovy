pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bash 'demo.sh'
                sleep 30
            }
        }
        stage('TEST') {
            steps {
                sleep 15
                echo 'sleep completed'
            }
        }
        stage('Deploy'){
            steps {
                echo 'Test deployed'
            }
        }
    }
}
