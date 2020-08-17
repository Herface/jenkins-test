pipeline {
    agent any
    stages {
        stage("git pull") {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Herface/jenkins-test.git']]])
            }
        }
        stage("build") {
            steps {
                sh  'mvn clean package dockerfile:build -Dmaven.test.skip=true'
            }

        }
    }
}