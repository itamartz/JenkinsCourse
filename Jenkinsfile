pipeline {
  //agent { node { label 'slave01' } }
  agent any
  environment{
	//SERVER_CREDENTIALS = credentials('SECRET_TEXT')
	VERSION = "1.0.0.1"
	LanguageVAR = ${env.Language}
  }

   stages {
      stage('Clone Sources') {
        steps {
          checkout scm
        } 
      }//stage('Clone Sources')
	  
	  stage("Env Variables") {
            steps {
				echo "${env.Language}"
                sh "printenv"
            }
			
        }//stage("Env Variables")
	  
      stage('All') {
		 when {
			expression {
				LanguageVAR=="All"
			}
		 }
         steps {
            echo 'Build process..'
            sh 'echo "My first pipeline"'
            sh '''
                echo "By the way, I can do more stuff in here"
                ls -la ~
            '''
         }
      }//stage('All')
	  
      stage('Python') {
         steps {
            echo 'Test process..'
         }
      }//stage('Python')
	  
      stage('Deploy') {
         steps {
            echo 'Deploy process...'
         }
		 
      }//stage('Deploy')
      
   }//stages
   
}//pipeline