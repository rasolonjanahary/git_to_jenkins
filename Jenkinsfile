pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/rasolonjanahary/git_to_jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nginx-git .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run nginx-git git --version'
            }
        }
    }
}
