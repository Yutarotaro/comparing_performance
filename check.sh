g++ main.cpp -o mac
./mac

docker build -q -t scd .
docker run -v $(pwd):/root scd sh -c "cd /root && g++ main.cpp -o ubuntu && ./ubuntu"
