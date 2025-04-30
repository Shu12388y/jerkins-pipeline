@Library("Shared") _

pipeline {
    agent { label "agentsdev" }

    stages {
        stage('Hello') {
            steps {
                script {
                    hello() // Make sure `hello()` is defined in your Shared Library
                }
            }
        }

        stage('Code') {
            steps {
                echo "Cloning the code from GitHub"
                git url: 'https://github.com/Shu12388y/jerkins-pipeline.git', branch: 'main'
                echo "Done.."
            }
        }

        stage('Test') {
            steps {
                echo "Testing..."
                sh 'npm install' // Optional: Ensure dependencies are installed
                sh 'npm run lint'
                echo "Done..."
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying"
                sh 'docker compose down'
                sh 'docker compose up -d'
            }
        }
    }
}
