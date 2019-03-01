pipeline {
    agent any
    stages {
        stage('Example - Test') {
            steps {
                echo 'Hello World - v2!!!'
            }
        }
        stage('K8S Test') {
          steps {
            container('gcloud') {
              sh "gcloud container clusters get-credentials rappione-dev-test-cluster --zone us-east1-d --project rappi-202719"
            }
            container('kubectl') {
                sh("kubectl --namespace=development get pods")
            } 
          }
        }
    }
}
