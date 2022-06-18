g++ main.cpp -o mac
./mac

docker build -q -t scd .
docker run -v /Users/yutaro/2022/class/comparing_performance/:/root scd sh -c "cd /root && g++ main.cpp -o ubuntu && ./ubuntu"
