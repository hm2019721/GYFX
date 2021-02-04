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
# 代理境外APP-网站
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AFP/AFP.list, policy=🔰 节点选择, tag=AFP, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ATTWatchTV/ATTWatchTV.list, policy=🔰 节点选择, tag=ATTWatchTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AbemaTV/AbemaTV.list, policy=🔰 节点选择, tag=AbemaTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Adobe/Adobe.list, policy=🔰 节点选择, tag=Adobe, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/All4/All4.list, policy=🔰 节点选择, tag=All4, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Amazon/Amazon.list, policy=🔰 节点选择, tag=Amazon, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AmazonPrimeVideo/AmazonPrimeVideo.list, policy=🔰 节点选择, tag=AmazonPrimeVideo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Americasvoice/Americasvoice.list, policy=🔰 节点选择, tag=Americasvoice, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleDaily/AppleDaily.list, policy=🔰 节点选择, tag=AppleDaily, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BBC/BBC.list, policy=🔰 节点选择, tag=BBC, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BoXun/BoXun.list, policy=🔰 节点选择, tag=BoXun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CBS/CBS.list, policy=🔰 节点选择, tag=CBS, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CNBC/CNBC.list, policy=🔰 节点选择, tag=CNBC, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CNN/CNN.list, policy=🔰 节点选择, tag=CNN, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CableTV/CableTV.list, policy=🔰 节点选择, tag=CableTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Cloudflare/Cloudflare.list, policy=🔰 节点选择, tag=Cloudflare, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DAZN/DAZN.list, policy=🔰 节点选择, tag=DAZN, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Dailymotion/Dailymotion.list, policy=🔰 节点选择, tag=Dailymotion, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Deezer/Deezer.list, policy=🔰 节点选择, tag=Deezer, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Discord/Discord.list, policy=🔰 节点选择, tag=Discord, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Disney/Disney.list, policy=🔰 节点选择, tag=Disney, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Dubox/Dubox.list, policy=🔰 节点选择, tag=Dubox, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/EncoreTVB/EncoreTVB.list, policy=🔰 节点选择, tag=EncoreTVB, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Facebook/Facebook.list, policy=🔰 节点选择, tag=Facebook, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Fox/Fox.list, policy=🔰 节点选择, tag=Fox, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Github/Github.list, policy=🔰 节点选择, tag=Github, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Global/Global.list, policy=🔰 节点选择, tag=Global, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Global/Global_Domain.list, policy=🔰 节点选择, tag=Global_Domain, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GlobalMedia/GlobalMedia.list, policy=🔰 节点选择, tag=GlobalMedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Google/Google.list, policy=🔰 节点选择, tag=Google, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GoogleDrive/GoogleDrive.list, policy=🔰 节点选择, tag=GoogleDrive, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HBO/HBO.list, policy=🔰 节点选择, tag=HBO, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HWTV/HWTV.list, policy=🔰 节点选择, tag=HWTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Huffpost/Huffpost.list, policy=🔰 节点选择, tag=Huffpost, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Hulu/Hulu.list, policy=🔰 节点选择, tag=Hulu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ITV/ITV.list, policy=🔰 节点选择, tag=ITV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Instagram/Instagram.list, policy=🔰 节点选择, tag=Instagram, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JOOX/JOOX.list, policy=🔰 节点选择, tag=JOOX, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Japonx/Japonx.list, policy=🔰 节点选择, tag=Japonx, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KKBOX/KKBOX.list, policy=🔰 节点选择, tag=KKBOX, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Kakao/Kakao.list, policy=🔰 节点选择, tag=Kakao, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KakaoTalk/KakaoTalk.list, policy=🔰 节点选择, tag=KakaoTalk, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Kantv/Kantv.list, policy=🔰 节点选择, tag=Kantv, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LastPass/LastPass.list, policy=🔰 节点选择, tag=LastPass, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LiTV/LiTV.list, policy=🔰 节点选择, tag=LiTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Line/Line.list, policy=🔰 节点选择, tag=Line, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LineTV/LineTV.list, policy=🔰 节点选择, tag=LineTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LondonReal/LondonReal.list, policy=🔰 节点选择, tag=LondonReal, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MOOV/MOOV.list, policy=🔰 节点选择, tag=MOOV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Mail/Mail.list, policy=🔰 节点选择, tag=Mail, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MeWatch/MeWatch.list, policy=🔰 节点选择, tag=MeWatch, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/My5/My5.list, policy=🔰 节点选择, tag=My5, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/NYPost/NYPost.list, policy=🔰 节点选择, tag=NYPost, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/NYTimes/NYTimes.list, policy=🔰 节点选择, tag=NYTimes, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Netflix/Netflix.list, policy=🔰 节点选择, tag=Netflix, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Nikkei/Nikkei.list, policy=🔰 节点选择, tag=Nikkei, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PBS/PBS.list, policy=🔰 节点选择, tag=PBS, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Pandora/Pandora.list, policy=🔰 节点选择, tag=Pandora, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PandoraTV/PandoraTV.list, policy=🔰 节点选择, tag=PandoraTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PotatoChat/PotatoChat.list, policy=🔰 节点选择, tag=PotatoChat, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Proxy/Proxy.list, policy=🔰 节点选择, tag=Proxy, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Qobuz/Qobuz.list, policy=🔰 节点选择, tag=Qobuz, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/RTHK/RTHK.list, policy=🔰 节点选择, tag=RTHK, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Scholar/Scholar.list, policy=🔰 节点选择, tag=Scholar, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SkyGO/SkyGO.list, policy=🔰 节点选择, tag=SkyGO, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Sony/Sony.list, policy=🔰 节点选择, tag=Sony, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SoundCloud/SoundCloud.list, policy=🔰 节点选择, tag=SoundCloud, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Spark/Spark.list, policy=🔰 节点选择, tag=Spark, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Speedtest/Speedtest.list, policy=🔰 节点选择, tag=Speedtest, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Spotify/Spotify.list, policy=🔰 节点选择, tag=Spotify, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TIDAL/TIDAL.list, policy=🔰 节点选择, tag=TIDAL, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TVB/TVB.list, policy=🔰 节点选择, tag=TVB, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TaiWanGood/TaiWanGood.list, policy=🔰 节点选择, tag=TaiWanGood, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Telegram/Telegram.list, policy=🔰 节点选择, tag=Telegram, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TikTok/TikTok.list, policy=🔰 节点选择, tag=TikTok, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Twitter/Twitter.list, policy=🔰 节点选择, tag=Twitter, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/VOA/VOA.list, policy=🔰 节点选择, tag=VOA, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/VidolTV/VidolTV.list, policy=🔰 节点选择, tag=VidolTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Viki/Viki.list, policy=🔰 节点选择, tag=Viki, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Vimeo/Vimeo.list, policy=🔰 节点选择, tag=Vimeo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ViuTV/ViuTV.list, policy=🔰 节点选择, tag=ViuTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Voxmedia/Voxmedia.list, policy=🔰 节点选择, tag=Voxmedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WeTV/WeTV.list, policy=🔰 节点选择, tag=WeTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Whatsapp/Whatsapp.list, policy=🔰 节点选择, tag=Whatsapp, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Wikipedia/Wikipedia.list, policy=🔰 节点选择, tag=Wikipedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouTube/YouTube.list, policy=🔰 节点选择, tag=YouTube, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouTubeMusic/YouTubeMusic.list, policy=🔰 节点选择, tag=YouTubeMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZeeTV/ZeeTV.list, policy=🔰 节点选择, tag=ZeeTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/friDay/friDay.list, policy=🔰 节点选择, tag=friDay, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/iTalkBB/iTalkBB.list, policy=🔰 节点选择, tag=iTalkBB, enabled=true
# 大陆直连APP与IP-网页
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/China/China.list, policy=🇨🇳 国内直连, tag=China, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaIPs/ChinaIPs.list, policy=🇨🇳 国内直连, tag=ChinaIPs, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaMedia/ChinaMedia.list, policy=🇨🇳 国内直连, tag=ChinaMedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaMobile/ChinaMobile.list, policy=🇨🇳 国内直连, tag=中国移动, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaNews/ChinaNews.list, policy=🇨🇳 国内直连, tag=中国新闻网, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaTelecom/ChinaTelecom.list, policy=🇨🇳 国内直连, tag=中国电信, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaTest/ChinaTest.list, policy=🇨🇳 国内直连, tag=ChinaTest, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaUnicom/ChinaUnicom.list, policy=🇨🇳 国内直连, tag=中国联通, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Microsoft/Microsoft.list, policy=🇨🇳 国内直连, tag=Microsoft, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OneDrive/OneDrive.list, policy=🇨🇳 国内直连, tag=OneDrive, enabled=true
# 苹果默认直连
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppStore/AppStore.list, policy=🇨🇳 国内直连, tag=AppStore, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Apple/Apple.list, policy=🇨🇳 国内直连, tag=Apple, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleBlock/AppleBlock.list, policy=🇨🇳 国内直连, tag=AppleBlock, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleMail/AppleMail.list, policy=🇨🇳 国内直连, tag=AppleMail, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleMusic/AppleMusic.list, policy=🇨🇳 国内直连, tag=AppleMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleNews/AppleNews.list, policy=🇨🇳 国内直连, tag=AppleNews, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppleTV/AppleTV.list, policy=🇨🇳 国内直连, tag=AppleTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/FitnessPlus/FitnessPlus.list, policy=🇨🇳 国内直连, tag=FitnessPlus, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TestFlight/TestFlight.list, policy=🇨🇳 国内直连, tag=TestFlight, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/iCloud/iCloud.list, policy=🇨🇳 国内直连, tag=iCloud, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Siri/Siri.list, policy=🇨🇳 国内直连, tag=Siri, enabled=true
# 拒绝-reject
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
ca-p12 = MIIJRQIBAzCCCQ8GCSqGSIb3DQEHAaCCCQAEggj8MIII+DCCA68GCSqGSIb3DQEHBqCCA6AwggOcAgEAMIIDlQYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIWaR5mIdKNL4CAggAgIIDaDzpQL8pVfQBi6JaoSI6wAZb0pUIQ/3OWHWy6A/AByDFIk0vupYMTgXYmHWaEXZu4Zw+4DJ3FcJtxUHnjlVcGtmyIoc+bQxM3dll8x3gLLEUZ3udIKT+3O70nUzHoCsmDM4squYXRCjZ83/BmRsTTLDqZLnUYb/NXk+Aq4c6WlHEgU2sOKs0Eo0zmfWDgOCvfmq0DDdsMb601Mc01M3OuT12IVXxacU27sJbY4zRXgh7PMmylIwSXp3+/4rVzHzBtsJQUgVJIKc1lBHNyDRncjSto6oyV20A3AKn+QVFni1bZmgs/56Sqf+l6U8WeHH/sgOv1luvngPylfq+fv/EnZi3Tbuk1KcewBN4CKpyku365bidPzeLzdCDNkPmMOAJo1D/OIFgBi6lu8vA180Ib4pQcE0RXUoBLEWEmM0w5hFSvAp2qO6R6vDXhfnswp0no2STBN3ysuHfq7H4ekFIA4FwuK55mbH7w3KRVaFhm2332bq+nt0JbRoA0OT90zZF3TAjdE7RgBxn5wKgZ1vVjefoX5/+ElWcjSysu8CxoOmJhSqg714TCGNxWAc2F9XNv6ZwWz2Ukt1kXVJzIvleoX6ZQW/XxunhI0ezXbPGVGtawdClPSsqbxaOrJtDP0tqQfTEvQI5bZpMhgsvisJBE377rIdwTa85ngmB34Kg74U90f1IdyrPVDSZUWJHwlc81k7rAiesHZWUzrDRqU4Nk+L4hFeT3H0bDmEQgr2XjrwqTi7pXupOdzJQHgrSHG+7h/BHWeV/xKUUo24TdCdanpNniqJT9yqvoIRKuk7H+fQ1ZvbW2T3gX+/jONtNoa3lNJzmYozSdARlhuH92L0YjSDwKOUyI76EuF5f8q/K2ls6V44cll3qKDVQE2KOaUfN0uXJ1cxIE0bQv4WhhNdqXtC0xqIHWqagWSVp6rdwVcDCJLw30NPjAhAkjB98wcCNIQkARQh3a9qFGdM/ckTbaVByhiGyE591kPIy/TYUN+CoZX4GsYbc3qyzVuG/lSyaBXWfkNV2hmYu0phikW60uuR/Q6Fhsc18lJHjcDqRJmk9i1LiCPSeEzzHNTqk+ZuqIhNLHqubXkrum5ajj8YXCq2YHJcj2cPgSyftMa8el3+oPJ4aA7EsQqgAUKLnhPc6oNVRwB1tI0BEMIIFQQYJKoZIhvcNAQcBoIIFMgSCBS4wggUqMIIFJgYLKoZIhvcNAQwKAQKgggTuMIIE6jAcBgoqhkiG9w0BDAEDMA4ECEN3H7ZBdmG7AgIIAASCBMjDTsXhLJIxJBF/6EY10PZOpPEmtK9ypLJ6ZO9fqyHTUqVxxgKZmAen/X/bP6mPuUlE4zCJ+nujwaBv/KoRteWrJE0ePxY5FYLZiy+JZqPO7UZ3bguOXD+VWJ8aKf5X+w7LWwK7LAHYvbJq1cYRMHMYZUO3kow8JJe0DpBUN5db7daSjtm0Pt+IvbP//n2LCfOFD6qc9IXqkMIpuMrV1kTOM4+0GSGOkvWekQjerYxxaL46mpJ+a4fGWnY+tvfCCbdxg/OBa9AdLXKHZDjECPZe6ll8MZ1bP5bGxxy/i1beYOkhGGXENYfLmFTTCHPAMRrFul0ONrefOZMP2P2fJYoRz0lKMG0UTeD8Yysiw3+IwkwL9snsStfIOSeSLoMsUVDtzPX0C2r+WuZc6r1ZNDNF25jurw3xq6fynZ2GqY3c61NE303MnKjJL/xJEt1QOcaM9sXEP50St1hRarzEc22SRrwvaPZe7p8Rl0YePH/UL98OkTD5dFzkP6H0gTUF5egW0TwfTdgDDHALLf3mm61dtfx7LPe/8U0u1KH9aguePte3BAJFJ8YmVgyULDJitq27GkapqCSd7q4m+c8aw2TQQppZwdn0mhoYT60mmx8Kue6eFR3SLZ363KBl5aAaXYctxg4WvQWva7WzgsTvAgyKpThVA1DxVP92x0vzZxKE7QU1PV7PWLDmWTo/tJskVO3v++0oQi/enij8giKHDdbI9qVobloaVujc/1y+WB8gLPgcyq7lkkruQsmf7XEoHOUofN0cucaCo4Yrudd5x0R/L4jjOXhRERylMFmm812ElR5JcXY9mBBM3I1EIyM81fb3eNqTEog1A3kO1xSGAw14eiKenca5CO3L5DA/4UCvkoNeEtJ1ns4ErVq5L2wwwS3VQDwBgRpWI5QrFLCNWrvEmYGG+Kk5t1M9C6BTltO066w3OVt+quj3u0BY7INv81KrUnN91+mXkv7Db8FCi+OsXw7MVFAevJUcTZ7absQWnDTFXvMau+KdGd8hrp5cK82ouU6dFcxTJexi6EZ2Hdu0Mh2NNPO6pgSSleRxAe4wN6WbA3ZxsEu81lZgLFO5pTkudJr7mVUnvqHluSfhCnyJ5LLNFO98CiVHV4ekJN7OA2QTj4X40M+Z2jss+I7OUYBuAMKFeKdxxLtjTaOi+ye/M9tlaQMn3u6ZRD4TedcqRS+Jhgn3EsGbkI6ZDgbr4r7q7lessv/0LyG2eVr5yjnBDBDuetvwnwQMGJ6ztFsHE1gqaDbs/XalxjMYHIairHdcayq3v7boKff0l4/hWkNjUvoR6Efq/dJjugd5QlwbKUjWr+v6Bg7kIPMclx9VfU0A/qmwFaWSrjwUr04hE08JG6uTcmhVQkasqaPVrL+WEdzurL+0fLVx5vzySofz1bqlfQvxOoIG6WSO88cPCsBFThgpthSAyA0LeG6oN82emzt1TGNpeA5JPR4qsBmVjWSpHDJIoty1Oz9hEqzh8a2MAeBPo7w4e5YSZXqAiSppMDNoXSZBYXDgyuSFGpjb1p6t5Axm841wo5q+Wix0DGDJWUgjC+cR902yGomGyKBU831Fo4iardlNQHMqJu/en4uaj4flxn3o3E9URb7AEPa2QS3OJmtSFaYxJTAjBgkqhkiG9w0BCRUxFgQUptrk3yI9oJWJb5nVVrqQN0q9lWYwLTAhMAkGBSsOAwIaBQAEFPDux4qays6wsrkxw59N3KjUfdGXBAjlb1yiru5rWw==
ca-passphrase = 1Q5A4AXU
