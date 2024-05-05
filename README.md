# Run a basic cron into a Docker container

In this repository you can see how to run a basic cron job inside a Docker container

With this configuration you just need to:

:one: Build the image defined on [Dockerfile](Dockerfile):

```bash
docker build -t cron-container .
```

:two: Run the container using the [docker-compose.yml](docker-compose.yml) file:

```bash
docker compose up cron
```

You will have your container reading everytime the content of the file the cron is writing, so if you are patient. In one minute you will see the results:

![pictures/stdout.png](pictures/tail.png)

As well, as the cron is writting into the stdout and stderr of the container you can see the 'Hello World' checking the container logs:

```bash
docker logs cron-container
```

![pictures/stdout.png](pictures/stdout.png)
