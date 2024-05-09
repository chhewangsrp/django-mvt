docker run-d \
    --name blogpost \
    -p "5432:5432" \
    -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    -e POSTGRES_DB=$POSTGRES_DB \
    postgres

docker exec portfolio-db psql -U postgres -c "create database blogpost"