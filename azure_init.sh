cd ~ && mkdir -p node && cd $_
curl -O https://nodejs.org/dist/v14.17.1/node-v14.17.1-linux-x64.tar.xz && tar -xf node-v14.17.1-linux-x64.tar.xz
cd ~ && mkdir -p ffmpeg && cd $_
curl -O https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && tar -xf ffmpeg-release-amd64-static.tar.xz
# cd ~ && mkdir -p aria2 && cd $_
# curl -L -O https://github.com/aria2/aria2/releases/download/release-1.35.0/aria2-1.35.0.tar.gz && tar -xf aria2-1.35.0.tar.gz
if ! command -v aria2c ; then
    sudo apt install aria2
fi
if [ ! -f speedtest-cli ]; then
    wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
    chmod +x speedtest-cli
fi    

# cd ~ && mkdir -p php && cd $_
# curl -O https://www.php.net/distributions/php-8.0.9.tar.gz && tar -xf php-8.0.9.tar.gz
# curl -O https://www.php.net/distributions/php-7.4.22.tar.gz && tar -xf php-7.4.22.tar.gz
# alias php74='php'
# alias php8='php'

# php linux binary download https://docs.moodle.org/311/en/Compiling_PHP_from_source
# ./configure --prefix=${HOME}/php/php74
# sudo apt-get install build-essential

cd ~
echo node='~/node/node-v14.17.1-linux-x64/bin' >> .bashrc
echo ffmpeg='~/ffmpeg/ffmpeg-4.4-amd64-static' >> .bashrc
echo export PATH='$PATH:$node:$ffmpeg'  >> .bashrc
