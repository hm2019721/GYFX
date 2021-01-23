# 本配置集合github大神自动抓取库分流和复写
# 分流主要归于墙外和墙内，代理与直连！
# 本配置已解锁TIKTOK 默认为日本，支持最新版tiktok
# 本人不缺流量和线路区分，如果你对分流有更多细则，请勿使用此配置
# 更多代理工具学习请访问我的主页：https://www.hm2019721.tk/
# 全网节点自动抓取聚合检测请从上方主页访问自动代理池
# 配置更新时间:【2021/1/20 02:20】
# 通知电报频道：【https://t.me/hm2019721】

[General]
bypass-system = true
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local, *.crashlytics.com, *.edu.cn, captive.apple.com
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.18.0.0/15, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 255.255.255.255/32
dns-server = system, 119.29.29.29, 114.114.114.114, 223.5.5.5
ipv6 = false

[Host]
*.tmall.com = server:223.6.6.6
*.jd.com = server:119.28.28.28
*.qq.com = server:119.28.28.28
*.tencent.com = server:119.28.28.28
*.alicdn.com = server:223.5.5.5
*.aliyun.com = server:223.5.5.5
*.weixin.com = server:119.28.28.28
*.bilibili.com = server:119.29.29.29
*.hdslb.com = server:119.29.29.29
*.163.com = server:119.29.29.29
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.netease.com = server:119.29.29.29
*.mi.com = server:119.29.29.29
*.xiaomi.com = server:119.29.29.29
*.pcbeta.com = server:120.52.19.113

[Rule]
# 代理境外APP-网站
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AFP/AFP.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ATTWatchTV/ATTWatchTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AbemaTV/AbemaTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Adobe/Adobe.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/All4/All4.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Amazon/Amazon.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AmazonPrimeVideo/AmazonPrimeVideo.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Americasvoice/Americasvoice.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleDaily/AppleDaily.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BBC/BBC.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BoXun/BoXun.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CBS/CBS.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CNBC/CNBC.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CNN/CNN.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CableTV/CableTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Cloudflare/Cloudflare.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DAZN/DAZN.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Dailymotion/Dailymotion.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Deezer/Deezer.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Discord/Discord.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Disney/Disney.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Dubox/Dubox.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/EncoreTVB/EncoreTVB.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Facebook/Facebook.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Fox/Fox.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Github/Github.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Google/Google.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/GoogleDrive/GoogleDrive.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HBO/HBO.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HWTV/HWTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Huffpost/Huffpost.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Hulu/Hulu.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ITV/ITV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Instagram/Instagram.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JOOX/JOOX.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Japonx/Japonx.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KKBOX/KKBOX.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Kakao/Kakao.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KakaoTalk/KakaoTalk.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Kantv/Kantv.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LastPass/LastPass.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LiTV/LiTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Line/Line.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LineTV/LineTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LondonReal/LondonReal.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MOOV/MOOV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Mail/Mail.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MeWatch/MeWatch.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/My5/My5.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/NYPost/NYPost.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/NYTimes/NYTimes.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Netflix/Netflix.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Nikkei/Nikkei.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PBS/PBS.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Pandora/Pandora.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PandoraTV/PandoraTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PotatoChat/PotatoChat.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Proxy/Proxy.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Proxy/Proxy_Domain.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Qobuz/Qobuz.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/RTHK/RTHK.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Scholar/Scholar.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SkyGO/SkyGO.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Sony/Sony.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SoundCloud/SoundCloud.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Spark/Spark.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Speedtest/Speedtest.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Spotify/Spotify.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TIDAL/TIDAL.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TVB/TVB.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TaiWanGood/TaiWanGood.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Telegram/Telegram.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TikTok/TikTok.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Twitter/Twitter.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/VOA/VOA.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/VidolTV/VidolTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Viki/Viki.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Vimeo/Vimeo.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ViuTV/ViuTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Voxmedia/Voxmedia.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WeTV/WeTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Whatsapp/Whatsapp.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Wikipedia/Wikipedia.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YouTube/YouTube.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YouTubeMusic/YouTubeMusic.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZeeTV/ZeeTV.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/friDay/friDay.list, PROXY
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/iTalkBB/iTalkBB.list, PROXY
# 大陆直连APP与IP-网页
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/115/115.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/12306/12306.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/17173/17173.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/178/178.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/17zuoye/17zuoye.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/360/360.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/36kr/36kr.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/4399/4399.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/51Job/51Job.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/56/56.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/58TongCheng/58TongCheng.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/6JianFang/6JianFang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ABC/ABC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AcFun/AcFun.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Agora/Agora.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AliPay/AliPay.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Alibaba/Alibaba.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Alibaba/Alibaba_Domain.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AnTianKeJi/AnTianKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Anjuke/Anjuke.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BOC/BOC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BOCOM/BOCOM.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BaiFenDian/BaiFenDian.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Baidu/Baidu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BaoFengYingYin/BaoFengYingYin.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BianFeng/BianFeng.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/BiliBili/BiliBili.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Bootcss/Bootcss.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ByteDance/ByteDance.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CAS/CAS.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CCB/CCB.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CCTV/CCTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CEB/CEB.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CGB/CGB.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CIBN/CIBN.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CITIC/CITIC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CKJR/CKJR.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CMB/CMB.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CNKI/CNKI.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CNNIC/CNNIC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CSDN/CSDN.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CaiNiao/CaiNiao.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/CaiXinChuanMei/CaiXinChuanMei.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Camera360/Camera360.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/China/China.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaIPs/ChinaIPs.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaMedia/ChinaMedia.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaMobile/ChinaMobile.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaNews/ChinaNews.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaTelecom/ChinaTelecom.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaTest/ChinaTest.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaTest/ChinaTest_Domain.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChinaUnicom/ChinaUnicom.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChuangKeTie/ChuangKeTie.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ChunYou/ChunYou.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DaMai/DaMai.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DanDanZan/DanDanZan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Dandanplay/Dandanplay.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DangDang/DangDang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Dedao/Dedao.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Deepin/Deepin.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DiDi/DiDi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DiSiFanShi/DiSiFanShi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DianCeWangKe/DianCeWangKe.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DingTalk/DingTalk.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DingXiangYuan/DingXiangYuan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Domob/Domob.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/DouBan/DouBan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Douyu/Douyu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/EastMoney/EastMoney.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Eleme/Eleme.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/FanFou/FanFou.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/FeiZhu/FeiZhu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/FengHuangWang/FengHuangWang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/FengXiaWangLuo/FengXiaWangLuo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Fiio/Fiio.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Funshion/Funshion.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/GaoDe/GaoDe.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/GuiGuDongLi/GuiGuDongLi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HaiNanHangKong/HaiNanHangKong.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HanYi/HanYi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HeMa/HeMa.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HibyMusic/HibyMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Himalaya/Himalaya.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Hpplay/Hpplay.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HuYa/HuYa.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HuaShuTV/HuaShuTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HuanJu/HuanJu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Huawei/Huawei.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/HunanTV/HunanTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Hupu/Hupu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ICBC/ICBC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JiGuangTuiSong/JiGuangTuiSong.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JianGuoYun/JianGuoYun.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JianShu/JianShu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JinJiangWenXue/JinJiangWenXue.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JingDong/JingDong.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/JueJin/JueJin.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Keep/Keep.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KingSmith/KingSmith.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Kingsoft/Kingsoft.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KouDaiShiShang/KouDaiShiShang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Ku6/Ku6.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KuKeMusic/KuKeMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KuaiDi100/KuaiDi100.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KuaiShou/KuaiShou.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KuangShi/KuangShi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/KugouKuwo/KugouKuwo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LanZouYun/LanZouYun.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LeJu/LeJu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LeTV/LeTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Lenovo/Lenovo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LuDaShi/LuDaShi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/LvMiLianChuang/LvMiLianChuang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Maocloud/Maocloud.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MeiTuan/MeiTuan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MeiZu/MeiZu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Meitu/Meitu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MiWu/MiWu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Migu/Migu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/MingLueZhaoHui/MingLueZhaoHui.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Mogujie/Mogujie.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Mojitianqi/Mojitianqi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/NGAA/NGAA.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/NetEase/NetEase.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/NetEaseMusic/NetEaseMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/OPPO/OPPO.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/OnePlus/OnePlus.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/OuPeng/OuPeng.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PPTV/PPTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PSBC/PSBC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Pinduoduo/Pinduoduo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/PingAn/PingAn.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/QiNiuYun/QiNiuYun.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Qihoo360/Qihoo360.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/QingCloud/QingCloud.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/RuanMei/RuanMei.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SFExpress/SFExpress.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SMZDM/SMZDM.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ShangHaiJuXiao/ShangHaiJuXiao.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Shanling/Shanling.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ShenMa/ShenMa.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ShiNongZhiKe/ShiNongZhiKe.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Sina/Sina.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Sohu/Sohu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SohuSogo/SohuSogo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SouFang/SouFang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SuNing/SuNing.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/SuiShiChuanMei/SuiShiChuanMei.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TCL/TCL.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TaiKang/TaiKang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TaiheMusic/TaiheMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TeamViewer/TeamViewer.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Teambition/Teambition.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Tencent/Tencent.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TencentVideo/TencentVideo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TianTianKanKan/TianTianKanKan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TianWeiChengXin/TianWeiChengXin.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TianYaForum/TianYaForum.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TigerFintech/TigerFintech.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TongCheng/TongCheng.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/U17/U17.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/UC/UC.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/UCloud/UCloud.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/UPYun/UPYun.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/UnionPay/UnionPay.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Vancl/Vancl.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/VideoCrack/VideoCrack.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/VipShop/VipShop.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Vivo/Vivo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WanMeiShiJie/WanMeiShiJie.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WangSuKeJi/WangSuKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WangXinKeJi/WangXinKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Weibo/Weibo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WenJuanXing/WenJuanXing.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/WiFiMaster/WiFiMaster.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XiMaLaYa/XiMaLaYa.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XiamiMusic/XiamiMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XianYu/XianYu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XiaoGouKeJi/XiaoGouKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XiaoMi/XiaoMi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XiaoYuanKeJi/XiaoYuanKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XieCheng/XieCheng.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XueErSi/XueErSi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/XueQiu/XueQiu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Xunlei/Xunlei.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YYeTs/YYeTs.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YiChe/YiChe.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YiXiaKeJi/YiXiaKeJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YiZhiBo/YiZhiBo.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YouMengChuangXiang/YouMengChuangXiang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YouZan/YouZan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Youku/Youku.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YoukuTudou/YoukuTudou.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YuanFuDao/YuanFuDao.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/YunFanJiaSu/YunFanJiaSu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZDNS/ZDNS.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhangYue/ZhangYue.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhiYunZhong/ZhiYunZhong.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Zhihu/Zhihu.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhongGuoShiHua/ZhongGuoShiHua.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhongWeiShiJi/ZhongWeiShiJi.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhongYuanYiShang/ZhongYuanYiShang.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ZhuanZhuan/ZhuanZhuan.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/iFlytek/iFlytek.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/iQIYI/iQIYI.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/ifanr/ifanr.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Microsoft/Microsoft.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/OneDrive/OneDrive.list, DIRECT
# 苹果默认直连
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppStore/AppStore.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Apple/Apple.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleBlock/AppleBlock.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleMail/AppleMail.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleMusic/AppleMusic.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleNews/AppleNews.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/AppleTV/AppleTV.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/FitnessPlus/FitnessPlus.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/TestFlight/TestFlight.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/iCloud/iCloud.list, DIRECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Siri/Siri.list, DIRECT
# 拒绝-reject
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Hijacking/Hijacking.list, REJECT
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Privacy/Privacy.list, REJECT

# 规则之外
GEOIP,CN,DIRECT
FINAL,PROXY

[URL Rewrite]
(?<=_region=)CN(?=&) JP 307
(?<=&mcc_mnc=)4 2 307
^(https?:\/\/dm[\w-]+\.\w+\.com\/.+)(\?)(.+) $1$3 302
(^https?:\/\/*\.\w{4}okv.com\/.+&.+)(\d{2}\.3\.\d)(.+) $118.0$3 302
^http://(www.)?g.cn https://www.google.com 302
^http://(www.)?google.cn https://www.google.com 302

[Script]
#微博去广告
微博 = type=http-response,requires-body=true,pattern=^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua),max-size=1048576,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_launch.js,enable=true
微博去广告 = type=http-response,requires-body=true,max-size=1048576,pattern=^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/photos/pic_recommend_status|video/tiny_stream_video_list|photo/info),script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_ad.js,enable=true

[MITM]
ca-passphrase = Shadowrocket
ca-p12 = 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
hostname = *.tiktokv.com,*.byteoversea.com,*.tik-tokapi.com
enable = true
