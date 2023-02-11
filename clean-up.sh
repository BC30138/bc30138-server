if [ -d "$1" ]
then
  cd "$1"
  docker-compose stop
  docker-compose rm -f
  docker image prune -a -f
  cd ..
  rm -rf $1
fi