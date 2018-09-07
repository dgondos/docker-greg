node {
    checkout scm

    docker.withRegistry('https://localhost:5000') {

        def customImage = docker.build("greg:${env.BUILD_ID}")

        customImage.push()
    }
}