pipeline {
    agent any 
    stages {
        stage('Clone the repo') {
            steps {
                echo 'clone the repo'
                sh 'rm -fr game-of-life'
                sh 'git clone https://github.com/wakaleo/game-of-life.git'
            }
        }
        stage('build from maven') {
            steps {
                echo 'building war file using maven'
                sh 'cd game-of-life && mvn package'
            }
        }
    
    }
}