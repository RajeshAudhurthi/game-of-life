pipeline {
    agent any
    environment {
        
        IMAGE_REPO_NAME="golr"
        IMAGE_TAG="latest"
        
    }
   
    stages {
        
        stage('Clone the repo') {
            steps {
                echo 'clone the repo'
                script {
                    sh "rm -rf game-of-life"
                }
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/RajeshAudhurthi/game-of-life.git']]])
                
            }
        }
        stage('build from maven') {
            steps {
                echo 'building war file using maven'
                script {
                    sh "mvn package"
                }
                
            }
        }
        stage('Archive the artifacts') {
            steps {
                echo 'Archive the artifacts'
                archiveArtifacts artifacts: 'gameoflife-web/target/*.war', followSymlinks: false
                
            }
        }
  
        // Building Docker images
        stage('Building image') {
          steps{
            script {
              dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"
            }
          }
        }
   
    // Uploading Docker images into AWS ECR
   
    }
}
