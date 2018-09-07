node {
    checkout scm

    docker.withRegistry('https://localhost') {

        def customImage = docker.build("greg:${env.BUILD_ID}")

        customImage.push()
    }
}