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
			sh " docker login -u belalansari -p zamila123 "
		    docker.build("belalansari/abctravals:1").push()
			
		} catch (error)
		{

		} 
	}	
}
