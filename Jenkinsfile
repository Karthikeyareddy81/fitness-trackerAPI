pipeline {
    agent { label 'jenkins-agent' }
    tools {
      jdk 'Java17'
      maven 'maven3'
    }

    stages {
        stage("Cleanup Workspace"){
            steps {
              cleanWs()
            }
        }

        stage("Checkout from Github"){
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/Karthikeyareddy81/fitness-trackerAPI.git'
            }
        }

        stage("Build Application"){
              steps {
                  sh "mvn clean package"
              }
          }

        stage("Test Application"){
            steps {
                sh "mvn test"
            }
        }
    }
}
