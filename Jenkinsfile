pipeline {
    agent any
    stages {
        stage('Deploy to AWS & Azure') {
            steps {
                sh '''
                ansible-playbook -i inventory.ini deploy_html.yml
                '''
            }
        }
    }
}
