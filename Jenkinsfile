node 
{
  	checkout scm
  	stage('Package') 
  	{
     	sh 'mvn clean package -DskipTests'
  	}
	stage('Create Docker Image') 
	{
			docker.build("belalansari/springboottestapi:${env.BUILD_NUMBER}")
	}
	stage('Run Tests') 
	{
		try 
		{  
			sh "mvn test"
		    docker.build("belalansari/springboottestapi:${env.BUILD_NUMBER}").push()
			
		} catch (error)
		{

		} 
	}	
}