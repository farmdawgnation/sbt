## Sbt Dockerfile

[Sbt](http://www.scala-sbt.org/) [Dockerfile](https://www.docker.io/learn/dockerfile/).  Also published to public [Docker Registry](https://index.docker.io/).

### Installation

1. Install [Docker](https://www.docker.io)

1. Download image from public Docker Registry: 

  ```
  docker pull dockerize/sbt
  ```

   or build an image from the Dockerfile: 
   
   ```
   docker build -t dockerize/sbt github.com/dockerize/sbt
   ```

### Usage

```
docker run -it --rm -v <data-dir>:/data dockerize/sbt
```
