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
                sh "rm -rf game-of-life && git 'https://github.com/RajeshAudhurthi/game-of-life.git'"
                
            }
        }
        stage('build from maven') {
            steps {
                echo 'building war file using maven'
                sh "mvn package"
                
            }
        }
        stage('Archive the artifacts') {
            steps {
                echo 'Archive the artifacts'
                archiveArtifacts artifacts: 'game-of-life/gameoflife-web/target/*.war', followSymlinks: false
                
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
