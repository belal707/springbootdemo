node 
{
  	checkout scm
  	stage('Package') 
  	{
     	sh 'mvn clean package -DskipTests'
  	}
	stage('Create Docker Image') 
	{
			docker.build("belalansari/springbootdemo:1")
	}
	stage('Run Tests') 
	{
		try 
		{  
		    sh "mvn test"
		    sudo docker.build("belalansari/springbootdemo:1").push()
			
		} catch (error)
		{

		} 
	}	
}
