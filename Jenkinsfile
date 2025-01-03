pipeline {
    agent any  // This can be a specific agent like 'ubuntu' or 'linux'

    stages {
     //   stage('Checkout') {
     //       steps {
     //           // Checkout the code from GitHub
     //           git 'https://github.com/pankajs19/Learning-devops.git'
     //       }
     //   }
        stage('Execute Shell Script') {
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
