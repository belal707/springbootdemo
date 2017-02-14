node 
{
  	checkout scm
  	stage('Package') 
  	{
     	sh 'mvn clean package -DskipTests'
  	}
	stage('Create Docker Image') 
	{
			docker.build("belalansari/abctravals:1")
	}
	stage('Run Tests') 
	{
		try 
		{  
		    sh "mvn test"
			sh " docker login -u " $DOCKER_ID " -p " $DOCKER_PWD
		    docker.build("belalansari/abctravals:1").push()
			
		} catch (error)
		{

		} 
	}	
}
