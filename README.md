# A docker container to serve NextJS builds using ngrok


## Requirements:
- A *ngrok* account set with your `authtoken` and `hostname`
- An `/out` *NextJS* build folder created with `npx next build`
- *Docker* installed and running.



## Building the container:

### 1. Replace `authtoken` and `hostname` values in `./ngrok.yml`


### 2. Replace the `./out` folder with yours


### 3. Inside `./` execute:
```
docker build -t docker-nextjs-ngrok .
```



## Running the container:
```
docker run -p 3000:3000 docker-nextjs-ngrok
```