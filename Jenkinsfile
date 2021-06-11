agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/Juilee6/abc.git'
      }
    }

    
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginx6.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
