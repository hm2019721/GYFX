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
ca-p12 = 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
ca-passphrase = 1Q5A4AXU
