pipeline {
    agent any
    tools {
        maven 'MAVEN_HOME'
    }
    stages {
        stage('Stage1: Clean Stage 1') {
            steps {
                sh 'mvn clean'
            }
        }
        stage ('Stage 2: Test Stage') {
            steps {
                sh 'mvn test'
            }
        }
        stage ('Stage 3: My Package'){
            steps {
                sh 'mvn package'
            }
        }
        stage ('Stage 4: My Final Build Stage'){
            steps {
                sh 'mvn install'
            }
        }
        stage ('Stage Final: Build Success'){
            steps {
                echo  'Build Success'
            }
        }
    }
}