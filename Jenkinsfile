@Library("Shared") _
pipline{
    agent {label "agentsdev"}
    stages{
        stage('Hello'){
                script{
                    hello()
                }
        }
        stage('Code'){
            echo "Cloning the code from github"
            git url: "https://github.com/Shu12388y/jerkins-pipeline.git" branch:"main"
            echo "Done.."
        }
        stage("Test"){
            echo "Testing..."
            sh "npm run lint"
            echo "Done..."
        }
        stage('Deploy'){
            echo "Deploying"
            sh "docker compose down && docker compose up -d"
        }
    }
}