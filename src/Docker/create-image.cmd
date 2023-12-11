docker build --no-cache -f SQL\Dockerfile.PostgreSql -t sonya5/postgre-sql ../SQL

docker build --no-cache -f Dockerfile -t sonya5/app ../..
