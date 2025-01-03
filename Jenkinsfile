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
            emailext (
                subject: "Build ${currentBuild.fullDisplayName} - SUCCESS",
                body: "The build ${currentBuild.fullDisplayName} completed successfully.\n\nCheck the Jenkins logs for details.",
                to: "pnkjsngh001@gmail.com"
            )
        }
        failure {
            emailext (
                subject: "Build ${currentBuild.fullDisplayName} - FAILURE",
                body: "The build ${currentBuild.fullDisplayName} failed.\n\nPlease check the Jenkins logs for more information.",
                to: "pnkjsngh001@gmail.com"
            )
            echo 'There was an error executing the shell script.'
        }
        always {
            emailext (
                subject: "Build ${currentBuild.fullDisplayName} - ${currentBuild.currentResult}",
                body: "The build ${currentBuild.fullDisplayName} finished with result: ${currentBuild.currentResult}.\n\nSee the build logs for more details.",
                to: "pnkjsngh001@gmail.com"
            )
        }
    }
}
