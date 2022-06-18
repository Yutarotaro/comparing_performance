g++ main.cpp -o host
./host

docker build -q -t scd .
docker run -v $(pwd):/root scd sh -c "cd /root && g++ main.cpp -o guest && ./guest"
