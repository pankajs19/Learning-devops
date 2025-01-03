pipeline {
    agent any

    environment {
        // Define any environment variables if needed yes
        GITHUB_REPO = 'https://github.com/pankajs19/Learning-devops.git'
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from GitHub
                git url: GITHUB_REPO
            }
        }
        stage('Run Shell Script') {
            steps {
                // Execute the shell script
                sh '.demo.sh'
            }
        }
    }

    post {
        success {
            echo 'Script executed successfully.'
        }
        failure {
            echo 'There was an error in executing the script.'
        }
    }
}
