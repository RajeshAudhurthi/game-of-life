node {
    stage('scm') {
    // some block
    sh 'rm -rf game-of-life && git clone https://github.com/RajeshAudhurthi/game-of-life.git'
}
    stage('build from maven') {
    // some block
    sh 'cd game-of-life && mvn package'
}
}
