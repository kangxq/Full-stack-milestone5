pipeline {
    agent any
    stages{
        stage('git clone') {
            steps {
                git credentialsId: 'f1a92232-0c7f-46a1-9c81-a586ad18822c', url: 'https://github.com/kangxq/Full-stack-emart-springboot.git'
            }
        }
        stage('Build') {
            steps {
                dir('./'){
                    bat 'mvn clean install -Dmaven.test.skip=true'
                }
            }
        }
        stage('deploy') {
            steps {
                // deploy by windows command
                echo 'start to deploy'
                bat 'java -jar ./cloud-eureka-server/cloud-eureka-service-0.0.1-SNAPSHOT.jar'
                bat 'java -jar ./cloud-zuul-server/cloud-zuul-service-0.0.1-SNAPSHOT.jar'
                bat 'java -jar ./cloud-auth2-server/cloud-auth2-service-0.0.1-SNAPSHOT.jar'
                bat 'java -jar ./cloud-user-server/cloud-user-service-0.0.1-SNAPSHOT.jar'
                bat 'java -jar ./cloud-product-server/cloud-product-service-0.0.1-SNAPSHOT.jar'
            }
        }
    }
}