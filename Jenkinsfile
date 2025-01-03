pipeline {
    agent any  // This can be a specific agent like 'ubuntu' or 'linux'

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Add your build steps here
                echo 'Building the project'
            }
        }
        stage('Execute') {
            steps {
                // Make the script executable and run it
                sh 'chmod +x ./your-script.sh'
                sh './your-script.sh'
            }
        }
    }

    post {
        success {
            echo 'Shell script executed successfully.'
        }
        failure {
            echo 'There was an error executing the shell script.'
        }
    }
}
