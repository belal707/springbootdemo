node 
{
  	checkout scm
  	stage('Package') 
  	{
     	sh 'mvn clean package -DskipTests'
  	}
	stage('Create Docker Image') 
	{
			docker.build("belalansari/cloud:3")
	}
	stage('Run Tests') 
	{
		try 
		{  
			sh "mvn test"
		    docker.build("belalansari/SpringbootTestAPI:${env.BUILD_NUMBER}").push()
			
		} catch (error)
		{

		} 
	}	
}