pipeline {
  agent { node { label 'slave01' } }

   stages {
      stage('Clone Sources') {
        steps {
          checkout scm
        } 
      }//stage('Clone Sources')
	  
      stage('Build') {
         steps {
            echo 'Build process..'
            sh 'echo "My first pipeline"'
            sh '''
                echo "By the way, I can do more stuff in here"
                ls -la ~
            '''
         }
      }//stage('Build')
	  
      stage('Test') {
         steps {
            echo 'Test process..'
         }
      }//stage('Test')
	  
      stage('Deploy') {
         steps {
            echo 'Deploy process..'
         }
		 
      }//stage('Deploy')
      
   }//stages
   
}//pipeline