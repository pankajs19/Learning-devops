pipeline {
    agent any
    
    stages {
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