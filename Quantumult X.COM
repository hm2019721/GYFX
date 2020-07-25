#本期更新时间2020-7-25
#唯一频道https://t.me/hm2019721
;general 模块内为一些通用的设置参数项
[general]
;Quantumult X 会对 server_check_url 指定的网址进行相应测试，以确认节点的可用性
server_check_url= http://www.gstatic.com/generate_204
resource_parser_url= https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/resource-parser.js
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/IP_API.js

[dns]
;指定的 dns服务器
server=114.114.114.114
server=119.29.29.29
server=8.8.8.8
;指定域名解析dns
server=/*.taobao.com/223.5.5.5
server=/*.tmall.com/223.5.5.5
server=/*.alipay.com/223.5.5.5
server=/*.alicdn.com/223.5.5.5
server=/*.aliyun.com/223.5.5.5
server=/*.jd.com/119.28.28.28
server=/*.qq.com/119.28.28.28
server=/*.tencent.com/119.28.28.28
server=/*.weixin.com/119.28.28.28
server=/*.bilibili.com/119.29.29.29
server=/hdslb.com/119.29.29.29
server=/*.163.com/119.29.29.29
server=/*.126.com/119.29.29.29
server=/*.126.net/119.29.29.29
server=/*.127.net/119.29.29.29
server=/*.netease.com/119.29.29.29
server=/*.mi.com/119.29.29.29
server=/*.xiaomi.com/119.29.29.29

#以下为策略组[policy]部分
# static 策略组中，你需要手动选择想要的节点/策略组。
# available 策略组将按顺序选择你列表中第一个可用的节点。
# round-robin 策略组，将按列表的顺序轮流使用其中的节点。
# ssid 策略组，将根据你所设定的网络来自动切换节点/策略组

[policy]
# 策略组
#MERCURY_8B90:🔴负载均衡 ssid演示
# 节点选项
#static=🖲️𝐏𝐫𝐨𝐱𝐲, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/proxy.png
ssid=📱 SSID, 🔴负载均衡, 🔴负载均衡, img-url= https://raw.githubusercontent.com/Orz-3/mini/master/ssid.png

round-robin=🔴负载均衡, 韩国>01-TG • https://t.me/hm2019721, 香港>09-TG • https://t.me/hm2019721, 香港>A-TG • https://t.me/hm2019721, 香港>B-TG • https://t.me/hm2019721, 香港>C-TG • https://t.me/hm2019721, 新加坡>01-TG • https://t.me/hm2019721, 新加坡>02-TG • https://t.me/hm2019721, 新加坡>03-TG • https://t.me/hm2019721, 俄罗斯>01-TG • https://t.me/hm2019721, 俄罗斯>02-TG • https://t.me/hm2019721, 美国>01-TG • https://t.me/hm2019721, 美国>02-TG • https://t.me/hm2019721, 美国>03-TG • https://t.me/hm2019721, 美国>04-TG • https://t.me/hm2019721, 美国>05-TG • https://t.me/hm2019721, 美国>06-TG • https://t.me/hm2019721, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/available.png

static=🌏国内视频, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/StreamingCN.png

static=🎵𝐓𝐢𝐤𝐓𝐨𝐤, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Tiktok.png

static=🖥𝐍𝐞𝐭𝐟𝐥𝐢𝐱, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Netflix.png

static=💳𝐏𝐚𝐲𝐏𝐚𝐥, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Paypal.png

static=📱𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Telegram.png

static=🎬𝐘𝐨𝐮𝐓𝐮𝐛𝐞, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/YouTube-W.png

static=🔞𝐏𝐨𝐫𝐧𝐇𝐮𝐛, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Pornhub.png

# 网络测速
static=🚀𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭, 🔴负载均衡, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Speedtest.png

# 苹果服务
static=🍎𝐀𝐩𝐩𝐥𝐞, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Apple.png

# 广告拦截
static=🚫屏蔽广告, reject, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Advertising.png

static=🕹黑白名单, 🔴负载均衡, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Final.png

#服务器远程订阅
[server_remote]
https://raw.githubusercontent.com/hm2019721/GYFX-V2/master/hmGY~V2ray.com, tag=hm~公益V2ray, update-interval=86400, opt-parser=true, enabled=true

#规则分流远程订阅
[filter_remote]
# > Direct
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list, tag=𝐋𝐨𝐜𝐚𝐥𝐀𝐫𝐞𝐚, force-policy=direct, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/UnBan.list, tag=𝐔𝐧𝐁𝐚𝐧, force-policy=direct, update-interval=86400, opt-parser=true, enabled=true
# > Banlists
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyList.list, tag=𝐁𝐚𝐧𝐋𝐢𝐬𝐭屏蔽广告, force-policy=🚫屏蔽广告, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyListChina.list, tag=𝐁𝐚𝐧𝐋𝐢𝐬𝐭𝐂𝐍屏蔽广告, force-policy=🚫屏蔽广告, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanEasyPrivacy.list, tag=𝐁𝐚𝐧𝐏𝐫𝐢𝐯𝐚𝐜𝐲屏蔽广告, force-policy=🚫屏蔽广告, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list, tag=𝐁𝐚𝐧𝐀𝐃屏蔽广告, force-policy=🚫屏蔽广告, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list, tag=𝐁𝐚𝐧𝐏𝐀𝐃屏蔽广告, force-policy=🚫屏蔽广告, update-interval=86400, opt-parser=true, enabled=true
# > Steam&Epic
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Steam.list, force-policy=🔴负载均衡, tag=𝐆𝐚𝐦𝐞, enabled=true, opt-parser=true
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Epic.list, force-policy=🔴负载均衡, tag=𝐆𝐚𝐦𝐞, enabled=true, opt-parser=true
# > TikTok
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/TikTok.list, force-policy=🎵𝐓𝐢𝐤𝐓𝐨𝐤, tag=𝐓𝐢𝐤𝐓𝐨𝐤, enabled=true, opt-parser=true
# > Youtube
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/YouTube.list, force-policy=🎬𝐘𝐨𝐮𝐓𝐮𝐛𝐞, tag=𝐘𝐨𝐮𝐓𝐮𝐛𝐞, enabled=true, opt-parser=true
# > Netflix
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/Netflix.list, force-policy=🖥𝐍𝐞𝐭𝐟𝐥𝐢𝐱, tag=𝐍𝐞𝐭𝐟𝐥𝐢𝐱, enabled=true, opt-parser=true
# > PronHub
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Pornhub.list, force-policy=🔞𝐏𝐨𝐫𝐧𝐇𝐮𝐛, tag=𝐏𝐨𝐫𝐧𝐇𝐮𝐛, enabled=true, opt-parser=true
# Telegram
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Telegram.list, force-policy=📱𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦, tag=𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦, enabled=true, opt-parser=true
# > PayPal
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/PayPal.list, force-policy=💳𝐏𝐚𝐲𝐏𝐚𝐥, tag=𝐏𝐚𝐲𝐏𝐚𝐥, enabled=true, opt-parser=true
# > Outlook、Gmail
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/Mail.list, force-policy=🔴负载均衡, tag=𝐌𝐚𝐢𝐥, enabled=true, opt-parser=true
# > OneDrive
https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/OneDrive.list, force-policy=🔴负载均衡, tag=𝐎𝐧𝐞𝐃𝐫𝐢𝐯𝐞, enabled=true, opt-parser=true
# > Speedtest
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Speedtest.list, force-policy=🚀𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭, tag=𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭, enabled=true, opt-parser=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_CDN.list, force-policy=🍎𝐀𝐩𝐩𝐥𝐞, tag=𝐀𝐩𝐩𝐥𝐞_𝐂𝐃𝐍, enabled=true, opt-parser=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_API.list, force-policy=🍎𝐀𝐩𝐩𝐥𝐞, tag=𝐀𝐩𝐩𝐥𝐞_𝐀𝐏𝐈, enabled=true, opt-parser=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/AsianMedia.list, tag=𝐀𝐬𝐢𝐚𝐧𝐌𝐞𝐝𝐢𝐚国内视频, force-policy=🌏国内视频, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/GlobalMedia.list, force-policy=🔴负载均衡, tag=𝐆𝐥𝐨𝐛𝐚𝐥𝐌𝐞𝐝𝐢𝐚, enabled=true, opt-parser=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Domestic.list, tag=𝐃𝐨𝐦𝐞𝐬𝐭𝐢𝐜, force-policy=direct, update-interval=86400, opt-parser=true, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Global.list, force-policy=🔴负载均衡, tag=𝐆𝐥𝐨𝐛𝐚𝐥, enabled=true, opt-parser=true

#rewrite 复写远程订阅
[rewrite_remote]
https://raw.githubusercontent.com/eHpo1/Rules/master/QuantumultX/Rewrite.txt, tag=eHpo1去广告, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Q-Search_All_in_one.conf, tag=Q-Search, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Js.conf, tag=nzw9314脚本, update-interval=86400, opt-parser=false, enabled=true
https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Get_Cookie_Remote.conf, tag=商店1.06获取Cookie(右滑禁用), update-interval=86400, opt-parser=false, enabled=false


# 本地服务器部分
[server_local]

#本地分流规则(对于完全相同的某条规则，本地的将优先生效)
[filter_local]
;user-agent, ?abc*, proxy
;host, www.google.com, proxy
;host-keyword, adsite, reject
;host-suffix, googleapis.com, proxy
host, steamdb.info, direct
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
geoip, cn, direct
final, 🕹黑白名单


#本地复写规则
[rewrite_local]
# 本地重写

#google
^https?:\/\/(www.)?(g|google)\.cn url 302 https://www.google.com

# 美区 Tiktok 1470 解锁
(.*video_id=\w{32})(.*watermark=)(.*) url 302 $1
(?<=(carrier|sys)_region=)CN url 307 JP
(?<=version_code=)\d{1,}.\d{1}\.\d{1} url 307 14.0.0

#以下为证书&主机名部分
[mitm]
skip_validating_cert = false
force_sni_domain_name = false
hostname = *.googlevideo.com

p12 = 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
passphrase = BFCFFDDF


[task_local]

;任务模块，可用于签到,天气话费查询等
;js文件放于iCloud或者本机的Quantumult X/Scripts 路径下。TF版本可直接使用远程js链接

;从 “分” 开始的5位cron 写法，具体 cron 表达式可自行 Google
;比如上述语句 代表每天 12 点 2 分，自动执行一次;
;tag参数为 task 命名标识;
;img-url参数用于指定 task 的图标(108*108)
# 定时脚本
;* * * * * sample-task.js

#疫情动态 作者Peng-YM，协助维护 Mazetsz
0 8-22/2 * * * https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/nCov.js, tag=疫情动态, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/COVID-19.png,enabled=true

# 一言
0 8 * * * https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Meeta/Surge/Scripting/Calendar.js, tag=一言, img-url=https://raw.githubusercontent.com/Orz-3/task/master/calendar.png,enabled=true

# 每日一句+ 蚂蚁森林收能量
30 7 * * * https://raw.githubusercontent.com/nzw9314/QuantumultX/master/yichahucha/cron_daily.js, tag=每日一句+蚂蚁森林收能量, img-url=https://raw.githubusercontent.com/Orz-3/task/master/corn.png,enabled=true

# 世界时间
0 8 * * * https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Task/time.js, tag=世界时间, img-url=https://raw.githubusercontent.com/Orz-3/task/master/time.png,enabled=true

1 9,21 * * * https://raw.githubusercontent.com/demo2099/QTXScripts/master/js/githublog.js,tag=jscool记录监控,img-url=https://raw.githubusercontent.com/Orz-3/task/master/jdxxx.png,enabled=true

# 签到脚本
# @chavyleung

# 电信营业厅
#打开 APP 手动签到一次: 访问下右下角 `我` > `签到` (头像下面)
1 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/10000/10000.js, tag=电信营业厅, img-url=https://raw.githubusercontent.com/Orz-3/task/master/10000.png,enabled=true

# AcFun
#打开 APP, 访问下`我的`
1 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/acfun/acfun.js, tag=AcFun, img-url=https://raw.githubusercontent.com/Orz-3/task/master/acfun.png,enabled=true

# APK.TW
#打开浏览器访问: https://apk.tw `(先登录! 把页面切换为电脑版)`
1 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/apktw/apktw.js, tag=APK.TW, img-url=https://raw.githubusercontent.com/Orz-3/task/master/apktw.png,enabled=true

# bilibili
#打开浏览器访问: https://www.bilibili.com 或 https://live.bilibili.com
2 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/bilibili/bilibili.js, tag=bilibili, img-url=https://raw.githubusercontent.com/Orz-3/task/master/bilibili.png,enabled=true

#如需银瓜子转硬币，取消下方注释
;2 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/bilibili/bilibili.silver2coin.js, tag=bilibili银瓜子转硬币, img-url=https://raw.githubusercontent.com/Orz-3/task/master/bilibili.png,enabled=true

# 懂球帝
#打开懂球帝 (打开前先杀掉 APP)
2 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/dongqiudi/dongqiudi.js, tag=懂球帝, img-url=https://raw.githubusercontent.com/Orz-3/task/master/dongqiudi.png,enabled=true

# 威锋网
#打开浏览器访问: https://www.feng.com`(先登录! 把页面切换为电脑版)`
;2 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/feng/feng.js, tag=威锋网, img-url=https://raw.githubusercontent.com/Orz-3/task/master/feng.png,enabled=true

# 飞客茶馆
#打开 APP, 访问下`个人中心`
3 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.js, tag=飞客茶馆, img-url=https://raw.githubusercontent.com/Orz-3/task/master/flyertea.png,enabled=true

# 网易云音乐
#浏览器访问并登录: https://music.163.com/m/login
3 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/neteasemusic/quanx/neteasemusic.js, tag=网易云音乐, img-url=https://raw.githubusercontent.com/Orz-3/task/master/Netease.png,enabled=true

# 网易新闻
#打开 APP 然后手动签到 1 次
3 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/neteasenews/neteasenews.js, tag=网易新闻, img-url=https://raw.githubusercontent.com/Orz-3/task/master/neteasenews.png,enabled=true

# 去哪儿
#打开 APP 然后手动签到 1 次
4 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/qunar/qunar.js, tag=去哪儿, img-url=https://raw.githubusercontent.com/Orz-3/task/master/qunar.png,enabled=true

# 人人视频
#打开 APP, 访问下`个人中心`
4 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/rrtv/rrtv.js, tag=人人视频, img-url=https://raw.githubusercontent.com/Orz-3/task/master/rrtv.png,enabled=true

# 顺丰速运
#打开 APP, 访问下`我的顺丰` > `去签到` (访问下`去签到`的页面即可, 不用点`签到`)
#打开 APP或小程序, 访问下`27周年庆`
4 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/sfexpress/sfexpress.js, tag=顺丰速运, img-url=https://raw.githubusercontent.com/Orz-3/task/master/sfexpress.png,enabled=true

# 什么值得买
#浏览器访问并登录: https://zhiyou.smzdm.com/user/login
5 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/smzdm/quanx/smzdm.js, tag=什么值得买, img-url=https://raw.githubusercontent.com/Orz-3/task/master/smzdm.png,enabled=true

# 百度签到
#先登录,浏览器访问一下: https://tieba.baidu.com 或者 https://tieba.baidu.com/index/
5 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/tieba/tieba.js, tag=百度签到, img-url=https://raw.githubusercontent.com/Orz-3/task/master/tieba.png,enabled=true

# V2EX
#浏览器打开https://www.v2ex.com/mission/daily ，待弹出获取成功即可
5 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/v2ex/quanx/v2ex.js, tag=V2EX, img-url=https://raw.githubusercontent.com/Orz-3/task/master/v2ex.png,enabled=true

# 腾讯视频
#1.手机浏览器访问并登录: https://film.qq.com/
6 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/videoqq/videoqq.js, tag=腾讯视频, img-url=https://raw.githubusercontent.com/Orz-3/task/master/videoqq.png,enabled=true

# 喜马拉雅
#打开 APP, 访问下右下角`账号`
6 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/ximalaya/ximalaya.js, tag=喜马拉雅, img-url=https://raw.githubusercontent.com/Orz-3/task/master/ximalaya.png,enabled=true

# 网易严选
#打开 APP, 访问下`个人`>`每日签到`(右上角)
# 6 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/yanxuan/yanxuan.js, tag=网易严选, img-url=https://raw.githubusercontent.com/Orz-3/task/master/yanxuan.png,enabled=true

# 字幕组
#网页:打开浏览器访问: http://www.rrys2019.com, App: 打开 APP 即可
7 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/zimuzu/zimuzu.js, tag=字幕组, img-url=https://raw.githubusercontent.com/Orz-3/task/master/zimuzu.png,enabled=true

# QQ音乐
#打开 APP 然后手动签到 1 次
7 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/qqmusic/qqmusic.js, tag=QQ音乐, img-url=https://raw.githubusercontent.com/Orz-3/task/master/qqmusic.png,enabled=true

# CSDN
# 打开 APP , 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次, 系统提示: `获取Cookie: 成功`
7 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/csdn/csdn.js, tag=CSDN, img-url=https://raw.githubusercontent.com/Orz-3/task/master/csdn.png,enabled=true

# 加油广东
#打开 APP 然后手动签到 1 次
1 7 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/gdoil/gdoil.js, tag=加油广东, img-url=https://raw.githubusercontent.com/Orz-3/task/master/gdoil.png,enabled=true

# 芒果TV
#打开 APP 然后手动签到 1 次
8 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/mgtv/mgtv.js, tag=芒果TV, img-url=https://raw.githubusercontent.com/Orz-3/task/master/mgtv.png,enabled=true

# 米游社
#打开 APP
8 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/mihoyo/mihoyo.js, tag=米游社, img-url=https://raw.githubusercontent.com/Orz-3/task/master/mihoyo.png,enabled=true

# 中国联通
#1打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
#2首页>天天抽奖, 系统提示 `2` 次: `获取Cookie: 成功 (登录抽奖)` 和 `获取Cookie: 成功 (抽奖次数)`
8 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.js, tag=中国联通, img-url=https://raw.githubusercontent.com/Orz-3/task/master/10010.png,enabled=true

# 猫咪音乐
#打开 网站 `https://www.maomicd.com` 然后手动签到 1 次
9 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/maomicd/maomicd.js, tag=猫咪音乐, img-url=https://raw.githubusercontent.com/Orz-3/task/master/maomicd.png,enabled=true

# 中国移动
#打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
9 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/10086/10086.js, tag=中国移动, img-url=https://raw.githubusercontent.com/Orz-3/task/master/10086.png,enabled=true

# 美团外卖
#打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
9 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/wmmeituan/wmmeituan.js, tag=美团外卖, img-url=https://raw.githubusercontent.com/Orz-3/task/master/wmmeituan.png,enabled=true

# 美团
#打开 APP , 然后手动签到 1 次, (`首页` > `红包签到`)
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/meituan/meituan.js, tag=美团, img-url=https://raw.githubusercontent.com/Orz-3/task/master/meituan.png,enabled=true

# 时光相册
#打开 APP 然后手动签到 1 次
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/everphoto/everphoto.js, tag=时光相册, img-url=https://raw.githubusercontent.com/Orz-3/task/master/everphoto.png,enabled=true

# 百词斩
#打开 APP 手动签到一次: 访问下右下角 `我` > `我的铜板` > `加入百词斩小班` > `去查看` > `我的小班进去 领铜板`
0 8-20/4 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/bcz/bcz.js, tag=百词斩, img-url=https://raw.githubusercontent.com/Orz-3/task/master/bcz.png,enabled=true

# 叮咚买菜
#打开 APP, 访问下`我的`>`积分`
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/mcdd/mcdd.js, tag=叮咚买菜, img-url=https://raw.githubusercontent.com/Orz-3/task/master/mcdd.png,enabled=true

# 分期乐
#打开 APP 手动签到一次: 访问下右下角 `我的` > `乐星` > `签到`
#`我的` > `账单点击` > `超级乐星日/天天领乐星`
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/fenqile/fenqile.js, tag=分期乐, img-url=https://raw.githubusercontent.com/Orz-3/task/master/fenqile.png,enabled=true

# 樊登读书
#打开 APP 手动签到一次: 访问下右下角 `我的` > `签到`
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/fandeng/fandeng.js, tag=樊登读书, img-url=https://raw.githubusercontent.com/Orz-3/task/master/fandeng.png,enabled=true

# 全民K歌
#打开 APP 手动签到一次: 访问下右下角 `我的` > `任务中心` > `签到`
10 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/qmkg/qmkg.js, tag=全民K歌, img-url=https://raw.githubusercontent.com/Orz-3/task/master/qmkg.png,enabled=true

# 合创
#打开 APP 然后手动签到 1 次
11 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/hycan/hycan.js, tag=合创, img-url=https://raw.githubusercontent.com/Orz-3/task/master/hycan.png,enabled=true

# 蔚来
#打开 APP 手动签到一次
11 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/nio/nio.js, tag=蔚来, img-url=https://raw.githubusercontent.com/Orz-3/task/master/nio.png,enabled=true

# 京东到家
#手机浏览器打开`https://daojia.jd.com/html/index.html` 点击签到
# 11 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/jddj/jddj.js, tag=京东到家, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jddj.png,enabled=true

# 海底捞
#打开APP 然后手动签到 1 次
12 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/haidilao/hdl.js, tag=海底捞, img-url=https://raw.githubusercontent.com/Orz-3/task/master/haidilao.png,enabled=true

# 网易考拉
#打开 APP 手动签到一次: 访问下右下角 `我的考拉` > `领考拉豆` > `签到`
12 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/wykl/wykl.js, tag=网易考拉, img-url=https://raw.githubusercontent.com/Orz-3/task/master/wykl.png,enabled=true

# WPS
# 打开 APP 我 > 签到 (右上角, 不用手动签到)
12 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/wps/wps.js, tag=WPS, img-url=https://raw.githubusercontent.com/Orz-3/task/master/wps.png,enabled=true

# 七猫小说
# APP内手动日常签到(观看小视频领取奖励)和新手领福利签到以及幸运大转盘 1 次
12 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/qimao/qmnovel.js, tag=七猫小说, img-url=https://raw.githubusercontent.com/Orz-3/task/master/qimao.png,enabled=true

# 智行火车
# 打开 APP 手动签到一次: 访问下右下角 `个人中心` > `签到`
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/zxhc/zxhc.js, tag=智行火车, img-url=https://raw.githubusercontent.com/Orz-3/task/master/zxhc.png,enabled=true

# 苏宁易购
# 首页 > 签到有礼
# 首页 > 领取红包
# 首页  > 天天低价
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/suning/suning.js, tag=苏宁易购, img-url=https://raw.githubusercontent.com/Orz-3/task/master/suning.png,enabled=true

# Zaker
# 打开App,然后手动签1次
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/zaker/zaker.js, tag=Zaker, img-url=https://raw.githubusercontent.com/Orz-3/task/master/zaker.png,enabled=true

# 不背单词
# 打开App,然后手动签1次
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/bubei/bubei.js, tag=不背单词, img-url=https://raw.githubusercontent.com/Orz-3/task/master/bubei.png,enabled=true

# 豆瓣时间
# 打开 APP 手动签到一次:  `市集` > `豆瓣时间` > `签到`
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/dbsj/dbsj.js, tag=豆瓣时间, img-url=https://raw.githubusercontent.com/Orz-3/task/master/dbsj.png,enabled=true

# 哈啰出行
# 打开 APP 进入签到页面:  `我的` > `有哈有车`
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/hellobike/hellobike.js, tag=哈啰出行, img-url=https://raw.githubusercontent.com/Orz-3/task/master/hellbike.png,enabled=true

# 掌上飞车
# 打开 APP[掌上飞车],然后手动签到 1 次
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/zsfc/zsfc.js, tag=掌上飞车, img-url=https://raw.githubusercontent.com/Orz-3/task/master/zsfc.png,enabled=true

# 趣头条
# 打开 APP 进入签到:  `右上角` > `签到`
# 阅读篇数获取Cookie:`小视频`中播放一段时间视频即可获取,具体的阅读篇数奖励请到应用内手动点击
# 首页金币奖励:此Cookie在首页的推荐中随机出现,随机获取,并不一定会出现。
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/qtt/qtt.js, tag=趣头条, img-url=https://raw.githubusercontent.com/Orz-3/task/master/qtt.png,enabled=true

# 米读
# 打开 APP 进入`我的` -> `疯狂摇摇乐`,系统提示: `签到:获取Cookie: 成功`
# 阅读时长获取Cookie:打开 APP 选取文章阅读， `书城` > `任意文章阅读` 等到提示获取Cookie成功即可
11 11 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/midu/miduRead.js, tag=米读, img-url=https://raw.githubusercontent.com/Orz-3/task/master/midu.png,enabled=true
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/midu/miduSign.js, tag=米读, img-url=https://raw.githubusercontent.com/Orz-3/task/master/midu.png,enabled=true

# 多看
# `我的` > `签到任务` 等到提示获取 Cookie 成功即可
13 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.js, tag=多看, img-url=https://raw.githubusercontent.com/Orz-3/task/master/duokan.png,enabled=true

# 京东618
10,20,30,40,50 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/jd/jd.618.js, tag=京东618,img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true
0 10,12,18,20,21 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/jd/jd.618.boom.js, tag=京东618炸弹,img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true
# 有道云笔记
3 0 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/noteyoudao/noteyoudao.js, tag=有道云笔记,img-url=https://raw.githubusercontent.com/Orz-3/task/master/noteyoudao.png,enabled=true

# 切换会话
# 访问: https://8.8.8.8/home管理
0 12 * * * https://raw.githubusercontent.com/chavyleung/scripts/master/box/switcher/box.switcher.js, tag=切换会话,img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true
# @NobyDa

# 京东
#浏览器登录 https://bean.m.jd.com 点击签到并且出现签到日历
3 0 * * * https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js, tag=京东, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true

# 贴吧
#打开App,访问下右下角 `我的
1,2,3 0 * * * https://raw.githubusercontent.com/NobyDa/Script/master/BDTieBa-DailyBonus/TieBa.js, tag=贴吧, img-url=https://raw.githubusercontent.com/Orz-3/task/master/tieba.png,enabled=true

# 爱奇艺
#打开App,访问下右下角 `我的
1 0 * * * https://raw.githubusercontent.com/NobyDa/Script/master/iQIYI-DailyBonus/iQIYI.js, tag=爱奇艺, img-url=https://raw.githubusercontent.com/Orz-3/task/master/iQIYI.png,enabled=true

# 52破解
#浏览器访问https://www.52pojie.cn/home.php?mod=space 即可
2 0 * * * https://raw.githubusercontent.com/NobyDa/Script/master/52pojie-DailyBonus/52pojie.js, tag=52破解, img-url=https://raw.githubusercontent.com/Orz-3/task/master/52pj.png,enabled=true

# 哔哩哔哩漫画
#打开App,访问下右下角 `我的
2 0 * * * https://raw.githubusercontent.com/NobyDa/Script/master/Bilibili-DailyBonus/Manga.js, tag=哔哩哔哩漫画, img-url=https://raw.githubusercontent.com/Orz-3/task/master/manga.png,enabled=true

# 饿了么   (By @syzzzf)
#打开 APP, 访问下`我的`>`签到领红包`(左上角)
3 0 * * * https://raw.githubusercontent.com/songyangzz/QuantumultX/master/elem/elemSign.js, img-url=https://raw.githubusercontent.com/Orz-3/task/master/elem.png,enabled=true
3 0 * * * https://raw.githubusercontent.com/zZPiglet/Task/master/elem/elemCheckIn.js, tag=饿了么-打卡领红包, img-url=https://raw.githubusercontent.com/Orz-3/task/master/elem.png,enabled=true

# 英雄联盟排名 (By @syzzzf)
3 0 * * * https://raw.githubusercontent.com/songyangzz/QuantumultX/master/lol.js, tag=英雄联盟排名, img-url=https://raw.githubusercontent.com/Orz-3/task/master/lol.png,enabled=true

#TestFlight公测监控 (By @syzzzf)
0 0-23/1 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/testflight.js, tag=TestFlight公测监控, img-url=https://raw.githubusercontent.com/Orz-3/task/master/testflight.png,enabled=true

# 斗鱼鱼吧 By @yyfyyf123
3 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/yubaSign.js, tag=斗鱼鱼吧, img-url=https://raw.githubusercontent.com/Orz-3/task/master/douyu.png,enabled=true

# 携程旅行  (By @barrymchen)
#打开App 点击"我的",然后点击"我的积分",再点击下面的"签到.任务"即可
4 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/ctrip.js, tag=携程旅行, img-url=https://raw.githubusercontent.com/Orz-3/task/master/ctrip.png,enabled=true
# 小程序(登录携程微信小程序，我的特权)
4 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/ct_sign.js, tag=携程旅行小程序, img-url=https://raw.githubusercontent.com/Orz-3/task/master/ctrip.png,enabled=true

# 中国电信套餐 (By @uchvk & @Macsuny)
#下载安装 天翼账号中心 登录
4 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/telecomInfinity.js, tag=中国电信套餐, img-url=https://raw.githubusercontent.com/Orz-3/task/master/telecominfinty.png,enabled=true

# 腾讯新闻 (By 红鲤鱼与绿鲤鱼与驴 & @Macsuny)
#1.打开腾讯新闻app，阅读一篇文章，倒计时结束后即可获取Cookie
#2.现阶段每日共9个阶梯红包，具体阅读篇数视腾讯情况而变动
#3.脚本运行一次阅读一篇文章，请不要连续运行，防止封号，可设置每几分钟运行一次
#4.打开腾讯新闻app，阅读一篇文章，倒计时结束后即可获取Cookie,红包ID的Cookie，点击红包倒计时，或者点击活动页面的专属红包任务，有些账号可能无
4 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/txnews.js, tag=腾讯新闻, img-url=https://raw.githubusercontent.com/Orz-3/task/master/txnews.png,enabled=true

# 楼兰小说论坛 (By @iNotification)
#网页登录 www.lltxt.com 点击 "我的信息 - 签到 - 开始签到"
5 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/loulancheck.js, tag=楼兰小说论坛, img-url=https://raw.githubusercontent.com/Orz-3/task/master/loulan.png,enabled=true

# 招行信用卡(公众号) (By @iNotification)
#招商银行信用卡微信公众号："领积分 - 签到领积分"
5 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/cmbchina.js, tag=招行信用卡, img-url=https://raw.githubusercontent.com/Orz-3/task/master/cmbchina.png,enabled=true

# 京东成长分 (By @barrymchen)
#打开京东金融app，"信用"-》"小白成长分"
5 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/jdczf.js, tag=京东成长分, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jdczf.png,enabled=true

# 工银e生活 (By @barrymchen)
# App首页"欢趣签到",手动签到1次
5 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/icbc_sign.js, tag=工银e生活, img-url=https://raw.githubusercontent.com/Orz-3/task/master/icbc.png,enabled=true

# 微信小程序-同程艺龙 (By @barrymchen)
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/tongc_sign.js, tag=同程艺龙, img-url=https://raw.githubusercontent.com/Orz-3/task/master/tongc.png,enabled=true
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/tongc_info.js, tag=同程艺龙, img-url=https://raw.githubusercontent.com/Orz-3/task/master/tongc.png,enabled=true

# 京东到家 (By @barrymchen, @GideonSenku & @Macsuny)
#APP登陆账号后，点击主页'签到',即可
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/jddj.js, tag=京东到家, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jddj.png,enabled=true

# 微信小程序-来客有礼 (By @Macsuny)
# 微信搜索'来客有礼'小程序,登陆京东账号，点击'领京豆->翻牌'
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/lkyl.js, tag=来客有礼, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true

# 电视家 (By @Macsuny)
# APP登陆账号后，点击底部'赚赚'进入签到页面,即可获取Cookie.
0 7,20 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/dianshijia.js, tag=电视家, img-url=https://raw.githubusercontent.com/Orz-3/task/master/dianshijia.png,enabled=true

# 电视节目预告 (By @Macsuny)
# var c = "cctv1"  // 可更改电视台，央视可以直接改后缀数字
# 常用卫视代码北京: btv1 | 湖南: hunan | 浙江: zhejiang|河南: henan| 江苏: jiangsu|广东: guangdong
1 10 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/tvpreview.js, tag=电视节目预告, img-url=https://raw.githubusercontent.com/Orz-3/task/master/tvpreview.png,enabled=true

# 12306余票及列车时刻表查询(By @Macsuny)
# 可更改出发地、目的地、出发时间及列车车次
0 * * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/trainquery.js, tag=12306余票及列车时刻表查询, img-url=https://raw.githubusercontent.com/Orz-3/task/master/12306.png,enabled=true
# 实时货币换算(By @Macsuny)
0 10 * * * https://raw.githubusercontent.com/Sunert/Scripts/master/Task/exchangeRate.js, tag=实时货币换算, img-url=https://raw.githubusercontent.com/Orz-3/task/master/exchangerate.png,enabled=true

# 快手极速版 (By @Macsuny)
#APP登陆账号后，点击'钱包'
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/kuaishou.js, tag=快手极速版, img-url=https://raw.githubusercontent.com/Orz-3/task/master/kuaishou.png,enabled=true

# 喜马拉雅极速版-开宝箱 (By @Macsuny)
# APP登陆账号后，点击右下角’福利’选项,即可获取Cookie.
# 每隔一小时开启一次，每天最多5次，金币账户与标准版不同账户
0 0-5/1 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/xmspeed.js, tag=喜马拉雅极速版, img-url=https://raw.githubusercontent.com/Orz-3/task/master/ximalaya.png,enabled=true

# > 微博 & 微博钱包 (By @Macsuny)
#1.打开微博App获取Cookie.获取后请注释或禁用Cookie
#2.打开微博钱包点击签到，获取Cookie，
#3.钱包已经签到无法获取
6 0 * * * https://raw.githubusercontent.com/Sunert/Scripts/master/Task/weibo.js, tag=微博, img-url=https://raw.githubusercontent.com/Orz-3/task/master/weibo.png,enabled=true

# > 新浪新闻 (By @Macsuny)
# 1.打开app,点击"我的"=>"签到"，获取第一个Cookie，通知获取信息成功
# 2.在未签到情况下，先禁用第一条Cookie链接，然后再次进入签到，通知获取签到Cookie成功
6 0 * * * https://raw.githubusercontent.com/Sunert/Scripts/master/Task/sinanews.js, tag=新浪新闻, img-url=https://raw.githubusercontent.com/Orz-3/task/master/sinanews.png,enabled=true

# > 中青看点极速版 (By @Macsuny)
# 1.进入app，签到一次,即可获取Cookie. 
# 2.阅读一篇文章，获取阅读请求body，
# 3.在阅读文章最下面有个惊喜红包，点击获取惊喜红包请求
# 4.激励视频获取方法: 关闭vpn，进入任务中心=>抽奖赚点击下面第一个宝箱，出现视频广告页面，然后打开vpn，等待视频播放完毕，点击点我继续领青豆，再重复一次上面操作，获取激励视频请求的body
0 9 * * * https://raw.githubusercontent.com/Sunert/Scripts/master/Task/youth.js,tag=中青看点极速版, img-url=https://raw.githubusercontent.com/Orz-3/task/master/youth.png,enabled=true

# 微信小程序-活动抽奖 (By @makexp & @zZPiglet)
#打开微信小程序 进入"活动抽奖"，手动签到一次或点击"已签到"
30 20 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/WeChatLottery_new.js, tag=微信小程序-活动抽奖, img-url=https://raw.githubusercontent.com/Orz-3/task/master/jd.png,enabled=true

# 滴滴出行  (By @zZPiglet)
1 0 * * * https://raw.githubusercontent.com/zZPiglet/Task/master/DiDi/DiDi.js, tag=滴滴出行, img-url=https://raw.githubusercontent.com/Orz-3/task/master/didi.png,enabled=true
59 23 * * * https://raw.githubusercontent.com/zZPiglet/Task/master/DiDi/DiDi_reward.js, tag=滴滴出行, img-url=https://raw.githubusercontent.com/Orz-3/task/master/didi.png,enabled=true

# 微信喜马拉雅 (By @makexp)
# 微信小程序 - 喜马拉雅 - 我的： 签到 " 获取 Cookie
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/xmly_wc.js, tag=微信喜马拉雅, img-url=https://raw.githubusercontent.com/Orz-3/task/master/ximalaya.png,enabled=true

# 360扫地机 (By @qiaoborui)
# 首页右上角-签到🎁
6 0 * * * https://raw.githubusercontent.com/demo2099/jscool/master/Task/360.js, tag=360扫地机, img-url=https://raw.githubusercontent.com/Orz-3/task/master/360.png,enabled=true

# 纵横小说 (By Peng-YM)
# 使用方法：进入纵横小说页面，例如<<剑来>>：http://book.zongheng.com/book/672340.html 则id为672340，将id添加到列表即可。 
6 0 * * * https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/zongheng.js, tag=纵横小说, img-url=https://raw.githubusercontent.com/Orz-3/task/master/zongheng.png,enabled=true

# GitHub监控(By Peng-YM)
0 8 * * * https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/github.js, tag=GitHub, img-url=https://raw.githubusercontent.com/Orz-3/task/master/github.png,enabled=true

# Steam价格监控(By Peng-YM)
0 8 * * * https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/steam.js, tag=Steam价格监控, img-url=https://raw.githubusercontent.com/Orz-3/task/master/steam.png,enabled=true

# 汇率监控(By Peng-YM)
0 8 * * * https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/exchange.js, tag=汇率监控, img-url=https://raw.githubusercontent.com/Orz-3/task/master/exchangerate.png,enabled=true
