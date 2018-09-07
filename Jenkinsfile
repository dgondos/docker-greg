node {
    checkout scm

    docker.withRegistry('127.0.0.1') {

        def customImage = docker.build("greg:${env.BUILD_ID}")

        customImage.push()
    }
}