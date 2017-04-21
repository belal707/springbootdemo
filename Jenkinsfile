node 
{
  	checkout scm
  	stage('Package') 
  	{
     	sh 'mvn clean package -DskipTests'
  	}
	stage('Create Docker Image') 
	{
		docker.build("belalansari/todo:1")
	}
	stage('Run Tests') 
	{
		try 
		{  
		    sh "mvn test"
			sh "docker login -u belalansari -p zamila1234 -e belalansari087@gmail.com"
			docker.build("belalansari/todo:1").push()
			
		} catch (error)
		{

		} 
	}	
}
