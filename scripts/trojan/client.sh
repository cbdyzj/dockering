cd `dirname $0`
docker run -d --rm --name trojan-client -v `pwd`:/config -p 9080:9080 trojangfw/trojan:1.14.1 trojan -c config.json