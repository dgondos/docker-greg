node {
    checkout scm

    docker.withRegistry('https://localhost:5000') {
        def image = docker.build("greg:${env.BUILD_ID}")
        image.push()
        sh 'docker stop greg'
        image.run('--rm -d --name greg -v /data/.docker_persist/greg:/greg_data -v /data/podcasts:/podcasts')
    }
}