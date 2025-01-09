pipeline {
    agent any  // This can be a specific agent like 'ubuntu' or 'linux'

    environment {
        // Define environment variables
        INVENTORY_FILE = '/etc/ansible/hosts'  // Path to your Ansible inventory file
        PLAYBOOK_FILE = '/home/jenkins/Learning-devops/playbook/00_first.yml'     // Path to your Ansible playbook
	TARGET_HOST = '192.168.64.2'
	ANSIBLE_HOST_KEY_CHECKING = 'false'
    }
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
	stage('Verify File'){
	    steps {
                script {
                    // Install Ansible if it's not already installed
                    if (!fileExists('/etc/ansible/hosts')) {
                        echo 'Host file is available...' }
		    
		    if (!fileExists('/etc/absible/01_touch.yml')){
			echo 'Playbook present...' }
                    }
                }
	}
	stage('Ansible playbook'){
	    steps {
		//sshagent(['jenkins-ssh-key'])
		script {
		    // Ensure the Jenkins user has the proper permissions
                    //sh 'mkdir -p ~/.ssh' 
                    // Add the target host's SSH key to known_hosts using ssh-keyscan
                    //ssh "sudo ssh-keyscan -H ${TARGET_HOST} >> ~/.ssh/known_hosts"
                    // Run the Ansible playbook using the defined inventory file
                    echo 'Running Ansible Playbook...'
		    sh 'ansible-playbook ${PLAYBOOK_FILE}'
                }
	    }
	  }
    }
}
