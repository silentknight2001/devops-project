pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
    }
    environment {
        DATE = new Date().format('yy.M')
        TAG = "${DATE}.${BUILD_NUMBER}"
    }
    stages {
        stage ('Build na package') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build docker image') {
            steps {
                script {
                    docker.build("nayan2001/pipe-jenkins:${TAG}")
                }
            }
        }
        stage('Test'){
            steps {
                echo 'Empty'
            }
        }
	    stage('Pushing Docker Image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'nayan') {
                        docker.image("nayan2001/pipe-jenkins:${TAG}").push()
                        docker.image("nayan2001/pipe-jenkins:${TAG}").push("latest")
                    }
                }
            }
        }
    }
}
