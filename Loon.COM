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
网络自动抓取线路 = https://hm2019721.herokuapp.com/trojan/sub,parser-enable = true


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
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Bahamut/Bahamut.list, policy=🔰 节点选择, tag=台湾动画疯, enabled=true
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
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Proxy/Proxy_Domain.list, policy=🔰 节点选择, tag=Proxy_Domain, enabled=true
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
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TeamViewer/TeamViewer.list, policy=🔰 节点选择, tag=TeamViewer, enabled=true
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
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/115/115.list, policy=🇨🇳 国内直连, tag=115, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/12306/12306.list, policy=🇨🇳 国内直连, tag=12306, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/17173/17173.list, policy=🇨🇳 国内直连, tag=17173, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/178/178.list, policy=🇨🇳 国内直连, tag=178, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/17zuoye/17zuoye.list, policy=🇨🇳 国内直连, tag=17zuoye, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/360/360.list, policy=🇨🇳 国内直连, tag=360, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/36kr/36kr.list, policy=🇨🇳 国内直连, tag=36kr, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/4399/4399.list, policy=🇨🇳 国内直连, tag=4399, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/51Job/51Job.list, policy=🇨🇳 国内直连, tag=51Job, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/56/56.list, policy=🇨🇳 国内直连, tag=56, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/58TongCheng/58TongCheng.list, policy=🇨🇳 国内直连, tag=58同城, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/6JianFang/6JianFang.list, policy=🇨🇳 国内直连, tag=6JianFang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ABC/ABC.list, policy=🇨🇳 国内直连, tag=农业银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AcFun/AcFun.list, policy=🇨🇳 国内直连, tag=AcFun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Agora/Agora.list, policy=🇨🇳 国内直连, tag=Agora, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AliPay/AliPay.list, policy=🇨🇳 国内直连, tag=AliPay, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Alibaba/Alibaba.list, policy=🇨🇳 国内直连, tag=阿里巴巴, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Alibaba/Alibaba_Domain.list, policy=🇨🇳 国内直连, tag=阿里巴巴, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AnTianKeJi/AnTianKeJi.list, policy=🇨🇳 国内直连, tag=安天科技, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Anjuke/Anjuke.list, policy=🇨🇳 国内直连, tag=安居客, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BOC/BOC.list, policy=🇨🇳 国内直连, tag=中国银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BOCOM/BOCOM.list, policy=🇨🇳 国内直连, tag=交通银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BaiFenDian/BaiFenDian.list, policy=🇨🇳 国内直连, tag=百分点, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Baidu/Baidu.list, policy=🇨🇳 国内直连, tag=百度, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BaoFengYingYin/BaoFengYingYin.list, policy=🇨🇳 国内直连, tag=暴风影音, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BianFeng/BianFeng.list, policy=🇨🇳 国内直连, tag=边锋网络, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BiliBili/BiliBili.list, policy=🇨🇳 国内直连, tag=BiliBili, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Bootcss/Bootcss.list, policy=🇨🇳 国内直连, tag=Bootcss, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ByteDance/ByteDance.list, policy=🇨🇳 国内直连, tag=字节跳动, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CAS/CAS.list, policy=🇨🇳 国内直连, tag=中国科学院文献情报中心, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CCB/CCB.list, policy=🇨🇳 国内直连, tag=建设银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CCTV/CCTV.list, policy=🇨🇳 国内直连, tag=CCTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CEB/CEB.list, policy=🇨🇳 国内直连, tag=光大银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CGB/CGB.list, policy=🇨🇳 国内直连, tag=广发银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CIBN/CIBN.list, policy=🇨🇳 国内直连, tag=CIBN, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CITIC/CITIC.list, policy=🇨🇳 国内直连, tag=中信银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CKJR/CKJR.list, policy=🇨🇳 国内直连, tag=创客匠人, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CMB/CMB.list, policy=🇨🇳 国内直连, tag=招商银行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CNKI/CNKI.list, policy=🇨🇳 国内直连, tag=中国知网, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CNNIC/CNNIC.list, policy=🇨🇳 国内直连, tag=中国互联网络信息中心, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CSDN/CSDN.list, policy=🇨🇳 国内直连, tag=CSDN, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CaiNiao/CaiNiao.list, policy=🇨🇳 国内直连, tag=菜鸟裹裹, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/CaiXinChuanMei/CaiXinChuanMei.list, policy=🇨🇳 国内直连, tag=财新传媒, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Camera360/Camera360.list, policy=🇨🇳 国内直连, tag=Camera360, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/China/China.list, policy=🇨🇳 国内直连, tag=China, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaIPs/ChinaIPs.list, policy=🇨🇳 国内直连, tag=ChinaIPs, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaMedia/ChinaMedia.list, policy=🇨🇳 国内直连, tag=ChinaMedia, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaMobile/ChinaMobile.list, policy=🇨🇳 国内直连, tag=中国移动, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaNews/ChinaNews.list, policy=🇨🇳 国内直连, tag=中国新闻网, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaTelecom/ChinaTelecom.list, policy=🇨🇳 国内直连, tag=中国电信, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaTest/ChinaTest.list, policy=🇨🇳 国内直连, tag=ChinaTest, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaTest/ChinaTest_Domain.list, policy=🇨🇳 国内直连, tag=ChinaTest_Domain, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChinaUnicom/ChinaUnicom.list, policy=🇨🇳 国内直连, tag=中国联通, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChuangKeTie/ChuangKeTie.list, policy=🇨🇳 国内直连, tag=创客贴, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ChunYou/ChunYou.list, policy=🇨🇳 国内直连, tag=纯游, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DaMai/DaMai.list, policy=🇨🇳 国内直连, tag=红马传媒(大麦网), enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DanDanZan/DanDanZan.list, policy=🇨🇳 国内直连, tag=蛋蛋赞, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Dandanplay/Dandanplay.list, policy=🇨🇳 国内直连, tag=弹弹Play, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DangDang/DangDang.list, policy=🇨🇳 国内直连, tag=当当, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Dedao/Dedao.list, policy=🇨🇳 国内直连, tag=得到, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Deepin/Deepin.list, policy=🇨🇳 国内直连, tag=Deepin, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DiDi/DiDi.list, policy=🇨🇳 国内直连, tag=滴滴出行, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DiSiFanShi/DiSiFanShi.list, policy=🇨🇳 国内直连, tag=第四范式, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DianCeWangKe/DianCeWangKe.list, policy=🇨🇳 国内直连, tag=点测网科, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DingTalk/DingTalk.list, policy=🇨🇳 国内直连, tag=钉钉, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DingXiangYuan/DingXiangYuan.list, policy=🇨🇳 国内直连, tag=丁香园, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Domob/Domob.list, policy=🇨🇳 国内直连, tag=Domob, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DouBan/DouBan.list, policy=🇨🇳 国内直连, tag=豆瓣, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Douyu/Douyu.list, policy=🇨🇳 国内直连, tag=斗鱼, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/EastMoney/EastMoney.list, policy=🇨🇳 国内直连, tag=东方财富, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Eleme/Eleme.list, policy=🇨🇳 国内直连, tag=饿了么, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/FanFou/FanFou.list, policy=🇨🇳 国内直连, tag=饭否科技, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/FeiZhu/FeiZhu.list, policy=🇨🇳 国内直连, tag=飞猪, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/FengHuangWang/FengHuangWang.list, policy=🇨🇳 国内直连, tag=凤凰网, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/FengXiaWangLuo/FengXiaWangLuo.list, policy=🇨🇳 国内直连, tag=凤侠网络, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Fiio/Fiio.list, policy=🇨🇳 国内直连, tag=飞傲, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Funshion/Funshion.list, policy=🇨🇳 国内直连, tag=风行网, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GaoDe/GaoDe.list, policy=🇨🇳 国内直连, tag=GaoDe, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GuiGuDongLi/GuiGuDongLi.list, policy=🇨🇳 国内直连, tag=GuiGuDongLi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HaiNanHangKong/HaiNanHangKong.list, policy=🇨🇳 国内直连, tag=HaiNanHangKong, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HanYi/HanYi.list, policy=🇨🇳 国内直连, tag=HanYi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HeMa/HeMa.list, policy=🇨🇳 国内直连, tag=HeMa, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HibyMusic/HibyMusic.list, policy=🇨🇳 国内直连, tag=HibyMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Himalaya/Himalaya.list, policy=🇨🇳 国内直连, tag=喜马拉雅, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Hpplay/Hpplay.list, policy=🇨🇳 国内直连, tag=Hpplay, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HuYa/HuYa.list, policy=🇨🇳 国内直连, tag=虎牙, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HuaShuTV/HuaShuTV.list, policy=🇨🇳 国内直连, tag=HuaShuTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HuanJu/HuanJu.list, policy=🇨🇳 国内直连, tag=HuanJu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Huawei/Huawei.list, policy=🇨🇳 国内直连, tag=华为, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/HunanTV/HunanTV.list, policy=🇨🇳 国内直连, tag=HunanTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Hupu/Hupu.list, policy=🇨🇳 国内直连, tag=Hupu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ICBC/ICBC.list, policy=🇨🇳 国内直连, tag=ICBC, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JiGuangTuiSong/JiGuangTuiSong.list, policy=🇨🇳 国内直连, tag=JiGuangTuiSong, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JianGuoYun/JianGuoYun.list, policy=🇨🇳 国内直连, tag=JianGuoYun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JianShu/JianShu.list, policy=🇨🇳 国内直连, tag=JianShu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JinJiangWenXue/JinJiangWenXue.list, policy=🇨🇳 国内直连, tag=JinJiangWenXue, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JingDong/JingDong.list, policy=🇨🇳 国内直连, tag=JingDong, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/JueJin/JueJin.list, policy=🇨🇳 国内直连, tag=JueJin, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Keep/Keep.list, policy=🇨🇳 国内直连, tag=Keep, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KingSmith/KingSmith.list, policy=🇨🇳 国内直连, tag=KingSmith, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Kingsoft/Kingsoft.list, policy=🇨🇳 国内直连, tag=Kingsoft, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KouDaiShiShang/KouDaiShiShang.list, policy=🇨🇳 国内直连, tag=KouDaiShiShang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Ku6/Ku6.list, policy=🇨🇳 国内直连, tag=Ku6, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KuKeMusic/KuKeMusic.list, policy=🇨🇳 国内直连, tag=KuKeMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KuaiDi100/KuaiDi100.list, policy=🇨🇳 国内直连, tag=KuaiDi100, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KuaiShou/KuaiShou.list, policy=🇨🇳 国内直连, tag=KuaiShou, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KuangShi/KuangShi.list, policy=🇨🇳 国内直连, tag=KuangShi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/KugouKuwo/KugouKuwo.list, policy=🇨🇳 国内直连, tag=KugouKuwo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LanZouYun/LanZouYun.list, policy=🇨🇳 国内直连, tag=LanZouYun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LeJu/LeJu.list, policy=🇨🇳 国内直连, tag=LeJu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LeTV/LeTV.list, policy=🇨🇳 国内直连, tag=LeTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Lenovo/Lenovo.list, policy=🇨🇳 国内直连, tag=Lenovo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LuDaShi/LuDaShi.list, policy=🇨🇳 国内直连, tag=LuDaShi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/LvMiLianChuang/LvMiLianChuang.list, policy=🇨🇳 国内直连, tag=LvMiLianChuang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Maocloud/Maocloud.list, policy=🇨🇳 国内直连, tag=Maocloud, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MeiTuan/MeiTuan.list, policy=🇨🇳 国内直连, tag=MeiTuan, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MeiZu/MeiZu.list, policy=🇨🇳 国内直连, tag=MeiZu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Meitu/Meitu.list, policy=🇨🇳 国内直连, tag=美图, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MiWu/MiWu.list, policy=🇨🇳 国内直连, tag=MiWu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Migu/Migu.list, policy=🇨🇳 国内直连, tag=Migu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/MingLueZhaoHui/MingLueZhaoHui.list, policy=🇨🇳 国内直连, tag=MingLueZhaoHui, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Mogujie/Mogujie.list, policy=🇨🇳 国内直连, tag=Mogujie, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Mojitianqi/Mojitianqi.list, policy=🇨🇳 国内直连, tag=Mojitianqi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/NGAA/NGAA.list, policy=🇨🇳 国内直连, tag=NGAA, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/NetEase/NetEase.list, policy=🇨🇳 国内直连, tag=网易, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/NetEaseMusic/NetEaseMusic.list, policy=🇨🇳 国内直连, tag=网易云音乐, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OPPO/OPPO.list, policy=🇨🇳 国内直连, tag=OPPO, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OnePlus/OnePlus.list, policy=🇨🇳 国内直连, tag=OnePlus, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OuPeng/OuPeng.list, policy=🇨🇳 国内直连, tag=OuPeng, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PPTV/PPTV.list, policy=🇨🇳 国内直连, tag=PPTV, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PSBC/PSBC.list, policy=🇨🇳 国内直连, tag=PSBC, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Pinduoduo/Pinduoduo.list, policy=🇨🇳 国内直连, tag=拼多多, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PingAn/PingAn.list, policy=🇨🇳 国内直连, tag=PingAn, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/QiNiuYun/QiNiuYun.list, policy=🇨🇳 国内直连, tag=QiNiuYun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Qihoo360/Qihoo360.list, policy=🇨🇳 国内直连, tag=Qihoo360, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/QingCloud/QingCloud.list, policy=🇨🇳 国内直连, tag=QingCloud, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/RuanMei/RuanMei.list, policy=🇨🇳 国内直连, tag=RuanMei, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SFExpress/SFExpress.list, policy=🇨🇳 国内直连, tag=SFExpress, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SMZDM/SMZDM.list, policy=🇨🇳 国内直连, tag=SMZDM, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ShangHaiJuXiao/ShangHaiJuXiao.list, policy=🇨🇳 国内直连, tag=ShangHaiJuXiao, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Shanling/Shanling.list, policy=🇨🇳 国内直连, tag=Shanling, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ShenMa/ShenMa.list, policy=🇨🇳 国内直连, tag=ShenMa, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ShiNongZhiKe/ShiNongZhiKe.list, policy=🇨🇳 国内直连, tag=ShiNongZhiKe, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Sina/Sina.list, policy=🇨🇳 国内直连, tag=新浪, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Sohu/Sohu.list, policy=🇨🇳 国内直连, tag=Sohu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SohuSogo/SohuSogo.list, policy=🇨🇳 国内直连, tag=搜狐/搜狗, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SouFang/SouFang.list, policy=🇨🇳 国内直连, tag=SouFang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SuNing/SuNing.list, policy=🇨🇳 国内直连, tag=SuNing, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/SuiShiChuanMei/SuiShiChuanMei.list, policy=🇨🇳 国内直连, tag=SuiShiChuanMei, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TCL/TCL.list, policy=🇨🇳 国内直连, tag=TCL, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TaiKang/TaiKang.list, policy=🇨🇳 国内直连, tag=TaiKang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TaiheMusic/TaiheMusic.list, policy=🇨🇳 国内直连, tag=TaiheMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TeamViewer/TeamViewer.list, policy=🇨🇳 国内直连, tag=TeamViewer, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Teambition/Teambition.list, policy=🇨🇳 国内直连, tag=Teambition, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Tencent/Tencent.list, policy=🇨🇳 国内直连, tag=Tencent, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TencentVideo/TencentVideo.list, policy=🇨🇳 国内直连, tag=腾讯视频, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TianTianKanKan/TianTianKanKan.list, policy=🇨🇳 国内直连, tag=TianTianKanKan, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TianWeiChengXin/TianWeiChengXin.list, policy=🇨🇳 国内直连, tag=TianWeiChengXin, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TianYaForum/TianYaForum.list, policy=🇨🇳 国内直连, tag=TianYaForum, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TigerFintech/TigerFintech.list, policy=🇨🇳 国内直连, tag=TigerFintech, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TongCheng/TongCheng.list, policy=🇨🇳 国内直连, tag=TongCheng, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/U17/U17.list, policy=🇨🇳 国内直连, tag=U17, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/UC/UC.list, policy=🇨🇳 国内直连, tag=UC, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/UCloud/UCloud.list, policy=🇨🇳 国内直连, tag=UCloud, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/UPYun/UPYun.list, policy=🇨🇳 国内直连, tag=UPYun, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/UnionPay/UnionPay.list, policy=🇨🇳 国内直连, tag=UnionPay, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Vancl/Vancl.list, policy=🇨🇳 国内直连, tag=Vancl, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/VideoCrack/VideoCrack.list, policy=🇨🇳 国内直连, tag=VideoCrack, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/VipShop/VipShop.list, policy=🇨🇳 国内直连, tag=唯品会, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Vivo/Vivo.list, policy=🇨🇳 国内直连, tag=Vivo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WanMeiShiJie/WanMeiShiJie.list, policy=🇨🇳 国内直连, tag=WanMeiShiJie, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WangSuKeJi/WangSuKeJi.list, policy=🇨🇳 国内直连, tag=WangSuKeJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WangXinKeJi/WangXinKeJi.list, policy=🇨🇳 国内直连, tag=WangXinKeJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Weibo/Weibo.list, policy=🇨🇳 国内直连, tag=微博, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WenJuanXing/WenJuanXing.list, policy=🇨🇳 国内直连, tag=WenJuanXing, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WiFiMaster/WiFiMaster.list, policy=🇨🇳 国内直连, tag=WiFiMaster, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XiMaLaYa/XiMaLaYa.list, policy=🇨🇳 国内直连, tag=XiMaLaYa, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XiamiMusic/XiamiMusic.list, policy=🇨🇳 国内直连, tag=XiamiMusic, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XianYu/XianYu.list, policy=🇨🇳 国内直连, tag=XianYu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XiaoGouKeJi/XiaoGouKeJi.list, policy=🇨🇳 国内直连, tag=XiaoGouKeJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XiaoMi/XiaoMi.list, policy=🇨🇳 国内直连, tag=XiaoMi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XiaoYuanKeJi/XiaoYuanKeJi.list, policy=🇨🇳 国内直连, tag=XiaoYuanKeJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XieCheng/XieCheng.list, policy=🇨🇳 国内直连, tag=XieCheng, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XueErSi/XueErSi.list, policy=🇨🇳 国内直连, tag=XueErSi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/XueQiu/XueQiu.list, policy=🇨🇳 国内直连, tag=XueQiu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Xunlei/Xunlei.list, policy=🇨🇳 国内直连, tag=Xunlei, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YYeTs/YYeTs.list, policy=🇨🇳 国内直连, tag=YYeTs, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YiChe/YiChe.list, policy=🇨🇳 国内直连, tag=YiChe, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YiXiaKeJi/YiXiaKeJi.list, policy=🇨🇳 国内直连, tag=YiXiaKeJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YiZhiBo/YiZhiBo.list, policy=🇨🇳 国内直连, tag=YiZhiBo, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouMengChuangXiang/YouMengChuangXiang.list, policy=🇨🇳 国内直连, tag=YouMengChuangXiang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YouZan/YouZan.list, policy=🇨🇳 国内直连, tag=YouZan, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Youku/Youku.list, policy=🇨🇳 国内直连, tag=Youku, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YoukuTudou/YoukuTudou.list, policy=🇨🇳 国内直连, tag=YoukuTudou, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YuanFuDao/YuanFuDao.list, policy=🇨🇳 国内直连, tag=YuanFuDao, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/YunFanJiaSu/YunFanJiaSu.list, policy=🇨🇳 国内直连, tag=YunFanJiaSu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZDNS/ZDNS.list, policy=🇨🇳 国内直连, tag=ZDNS, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhangYue/ZhangYue.list, policy=🇨🇳 国内直连, tag=ZhangYue, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhiYunZhong/ZhiYunZhong.list, policy=🇨🇳 国内直连, tag=ZhiYunZhong, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Zhihu/Zhihu.list, policy=🇨🇳 国内直连, tag=Zhihu, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhongGuoShiHua/ZhongGuoShiHua.list, policy=🇨🇳 国内直连, tag=ZhongGuoShiHua, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhongWeiShiJi/ZhongWeiShiJi.list, policy=🇨🇳 国内直连, tag=ZhongWeiShiJi, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhongYuanYiShang/ZhongYuanYiShang.list, policy=🇨🇳 国内直连, tag=ZhongYuanYiShang, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ZhuanZhuan/ZhuanZhuan.list, policy=🇨🇳 国内直连, tag=ZhuanZhuan, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/iFlytek/iFlytek.list, policy=🇨🇳 国内直连, tag=iFlytek, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/iQIYI/iQIYI.list, policy=🇨🇳 国内直连, tag=爱奇艺, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/ifanr/ifanr.list, policy=🇨🇳 国内直连, tag=ifanr, enabled=true
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
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AdvertisingLite/AdvertisingLite.list, policy=🚫 广告拦截, tag=去广告, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AdvertisingLite/AdvertisingLite_Domain.list, policy=🚫 广告拦截, tag=去广告-, enabled=true



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
