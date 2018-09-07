node {
    checkout scm

    docker.withRegistry('https://localhost:5000') {
        def image = docker.build("greg:${env.BUILD_ID}")
        image.push()
        sh 'docker stop greg || true'
        image.run('--rm -d --name greg -v /data/.docker_persist/greg:/root/.local/share/greg/data -v /data/podcasts:/root/Podcasts')
    }
}