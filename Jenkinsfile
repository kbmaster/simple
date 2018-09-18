pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building master..'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing master..'
		sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying master ....'
            }
        }
    }
}

