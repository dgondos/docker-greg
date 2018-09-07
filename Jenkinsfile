node {
    checkout scm

    docker.withRegistry('localhost') {

        def customImage = docker.build("greg:${env.BUILD_ID}")

        customImage.push()
    }
}