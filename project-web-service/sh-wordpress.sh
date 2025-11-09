docker exec -it $(docker ps | grep wordpress  | sed 's/ .*//') bash
