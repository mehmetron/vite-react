
# docker build -t node-vite . -f node.Dockerfile
# docker run --name node-vite -p 3000:3000 node-vite
# docker exec -it node-vite sh
FROM node:16



RUN apt-get -y update && \
    apt-get -y install nano && \
    apt-get -y install curl


WORKDIR /app

RUN npm init -y vite@latest my-app -- --template react


#RUN cd my-vite && \
#    npm install && \
#    npm run dev



CMD ["sleep", "10000"]