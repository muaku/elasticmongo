# elasticmongo <br>
Before start service
TODO:
1. close all running elasticsearch, mongod
2. run: docker-compose up
3. connect to mongo --port 27017 to config rs
  - cf = {_id: "monsticset", members: [{_id: 0, host: "mongo1:27017"},{_id:1, host:"mongo2:27017"},{_id:2,host:"mongo3:27017"}]}
  - rs.initiate(cf)
4. docker-compose start

以上
