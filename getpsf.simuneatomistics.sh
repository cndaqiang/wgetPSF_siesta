url=https://www.simuneatomistics.com/siesta-pro/siesta-pseudos-and-basis-database/
#curl -s "$url" > temp.html
#需要登陆temp.html中才会显示zip下载链接, 暂时无法解决, 手动在浏览器中复制html内容到temp.html
WORKDIR=$(pwd)
downdir=$WORKDIR/simune-$(date +%Y%m%d)
mkdir $downdir
cd $downdir
for i in $(grep -o -E 'https?://[^"]+\.zip' $WORKDIR/temp.html | grep -vi siesta)
do
echo $i
wget $i &
done

wait
cd $WORKDIR

