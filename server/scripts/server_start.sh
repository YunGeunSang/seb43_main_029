cd /home/ubuntu/build

export JDBC_URL=$(aws ssm get-parameters --region ap-northeast-2 --names /config/seb43main029/jdbc.url --query Parameters[0].Value --output text)
export JDBC_USERNAME=$(aws ssm get-parameters --region ap-northeast-2 --names /config/seb43main029/jdbc.username --query Parameters[0].Value --output text)
export JDBC_PASSWORD=$(aws ssm get-parameters --region ap-northeast-2 --names /config/seb43main029/jdbc.password --query Parameters[0].Value --output text)

sudo nohup java -jar seb43_main_029-0.0.1-SNAPSHOT.jar > /dev/null 2> /dev/null < /dev/null &