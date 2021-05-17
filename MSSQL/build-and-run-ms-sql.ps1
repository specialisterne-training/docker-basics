export MSSQL_VOLUME=ms_sql_storage
export MSSQL_DOCKER_NAME=ms-sql-with-storage:0.1
docker build -t ${MSSQL_DOCKER_NAME} -f Dockerfile .
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Password1!' -e 'MSSQL_PID=Express' --name sqlserver -p 1433:1433 -v ${MSSQL_VOLUME}:/var/ms_sql ${MSSQL_DOCKER_NAME}
