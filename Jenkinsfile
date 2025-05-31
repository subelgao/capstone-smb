pipeline {
    agent any
    stages {
        stage('Pull HTML files') {
            steps {
                git 'git@github.com:subelgao/capstone-smb.git'
            }
        }
        stage('Deploy to AWS & Azure') {
            steps {
                sh '''
                ansible-playbook -i inventory.ini deploy_html.yml
                '''
            }
        }
    }
}
