node {
    stage('scm from git') {
    // some block
    sh 'rm -rf game-of-life && git clone https://github.com/RajeshAudhurthi/game-of-life.git'
}
    stage('build for maven') {
    // some block
    sh 'cd game-of-life && mvn package'
}
}
