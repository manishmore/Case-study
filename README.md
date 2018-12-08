# Prudential
Prudential case study

$ docker build -t emoji-search .


$ docker run -it \
  -v /usr/src/app/node_modules \
  -p 3000:3000 \
  --rm \
  emoji-search
