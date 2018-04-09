pipeline {
 agent { node { label 'Jenkins-Agent' } }

 stages {
 

    stage('Build Service Container') {
      steps {
      docker build -t inmbzp7148.in.dst.ibm.com:5000/hcp-dist-test:sandbox .
      sh "docker build -t inmbzp7148.in.dst.ibm.com:5000/hcp-dist-test:sandbox ."
      }
    }

  }
    push('push image to Nexus'){
        steps{
        sh "docker push inmbzp7148.in.dst.ibm.com:5000/hcp-dist-test:sandbox"
        }
    }
} 
