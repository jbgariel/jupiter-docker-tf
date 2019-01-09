Docker for Jupiter
==================

Build container with:
`docker build -f Dockerfile -t jupiter_docker .`

Launch:
`docker run -it -p 8888:8888 -p 6666:6006 -d -v $(pwd)/notebooks:/notebooks jupiter_docker`
