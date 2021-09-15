node {
    stage('scm from git') {
    // some block
    sh 'rm -rf game-of-life && git clone https://github.com/RajeshAudhurthi/game-of-life.git'
}
    stage('build for maven') {
    // some block
    sh 'cd game-of-life && mvn package'
}
    stage('Junit results') {
    // some block
    junit 'game-of-life/gameoflife-web/target/surefire-reports/*.xml'
}
}
