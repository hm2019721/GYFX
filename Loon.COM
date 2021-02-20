# 本配置集合github大神自动抓取库分流和复写
# 分流主要归于墙外和墙内，代理与直连！
# 本配置已解锁TIKTOK 默认为日本，支持最新版tiktok
# 本人不缺流量和线路区分，如果你对分流有更多细则，请勿使用此配置
# 更多代理工具学习请访问我的主页：https://www.hm2019721.tk/
# 全网节点自动抓取聚合检测请从上方主页访问自动代理池
# 配置更新时间:【2021/1/20 02:20】
# 通知电报频道：【https://t.me/hm2019721】

[General]
ipv6 = false
skip-proxy = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,localhost,*.local,e.crashlynatics.com
bypass-tun = 10.0.0.0/8,100.64.0.0/10,127.0.0.0/8,169.254.0.0/16,172.16.0.0/12,192.0.0.0/24,192.0.2.0/24,192.88.99.0/24,192.168.0.0/16,198.18.0.0/15,198.51.100.0/24,203.0.113.0/24,224.0.0.0/4,255.255.255.255/32
dns-server = 114.114.114.114,119.29.29.29,223.5.5.5
allow-udp-proxy = false
allow-wifi-access = false
wifi-access-http-port = 7222
wifi-access-socket5-port = 7221

proxy-test-url = http://www.gstatic.com/generate_204

test-timeout = 2

resource-parser = https://raw.githubusercontent.com/Peng-YM/Sub-Store/master/scripts/sub-store-parser.js

[Host]
*.tencent.com = server:119.28.28.28
*.weixin.com = server:119.28.28.28

[Remote Proxy]
网络自动抓取线路 = https://www.hm2019721.ml/trojan/sub,parser-enable = true


[Remote Filter]
日本聚合 = NameRegex,网络自动抓取线路, FilterKey = "JP"


[Proxy]



[Proxy Group]
📱 SSID = ssid,default = 🔰 节点选择, cellular = 🔰 节点选择
🔰 节点选择 = select,♻️ 自动选择
♻️ 自动选择 = url-test,日本聚合,url = http://www.gstatic.com/generate_204,interval = 300,tolerance = 50

🇨🇳 国内直连 = select,DIRECT
🚫 广告拦截 = select,REJECT
🐟 漏网之鱼 = select,🔰 节点选择


[Rule]
GEOIP,CN,DIRECT
FINAL,🐟 漏网之鱼


[Remote Rule]
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GlobalMedia/GlobalMedia.list, policy=🔰 节点选择, tag=GlobalMedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Netflix/Netflix.list, policy=🔰 节点选择, tag=Netflix, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Proxy/Proxy.list, policy=🔰 节点选择, tag=Proxy, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Telegram/Telegram.list, policy=🔰 节点选择, tag=Telegram, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TikTok/TikTok.list, policy=🔰 节点选择, tag=TikTok, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouTube/YouTube.list, policy=🔰 节点选择, tag=YouTube, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouTubeMusic/YouTubeMusic.list, policy=🔰 节点选择, tag=YouTubeMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/China/China.list, policy=🇨🇳 国内直连, tag=China, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Apple/Apple.list, policy=🇨🇳 国内直连, tag=Apple, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TestFlight/TestFlight.list, policy=🇨🇳 国内直连, tag=TestFlight, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Hijacking/Hijacking.list, policy=🚫 广告拦截, tag=运营商劫持, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Privacy/Privacy.list, policy=🚫 广告拦截, tag=隐私, enabled=true


[URL Rewrite]
(?<=_region=)CN(?=&) JP 307
(?<=&mcc_mnc=)4 2 307
^(https?:\/\/dm[\w-]+\.\w+\.com\/.+)(\?)(.+) $1$3 302
(^https?:\/\/*\.\w{4}okv.com\/.+&.+)(\d{2}\.3\.\d)(.+) $118.0$3 302

enable = true



[Remote Rewrite]
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rewrite/Loon/Advertising/Advertising.plugin, tag=复写-去广告, enabled=true




[Script]

enable = true



[Remote Script]
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rewrite/Loon/AdvertisingScript/AdvertisingScript.plugin, tag=脚本-去广告, enabled=true



[Plugin]
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.lnplugin, proxy=REJECT, tag=插件-知乎去广告, enabled=true




[MITM]
enable = true
hostname = *.tiktokv.com, *.byteoversea.com, *.musical.ly, *.snssdk.com
skip-server-cert-verify = true
