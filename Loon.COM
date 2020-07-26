#Loon文件配置更新时间7-27
#唯一频道  https://t.me/hm2019721

[General]
ipv6 = false
skip-proxy = 10.0.0.0/8,127.0.0.0/8,169.254.0.0/16,192.0.2.0/24,192.168.0.0/16,198.51.100.0/24,224.0.0.0/4,*.local,localhostlocal
bypass-tun = 10.0.0.0/8,127.0.0.0/8,169.254.0.0/16,192.0.2.0/24,192.168.0.0/16,198.51.100.0/24,224.0.0.0/4
# [DNS] => DNS 服务器
dns-server = system,114.114.114.114,119.29.29.29,223.5.5.5
allow-udp-proxy = true
host = 127.0.0.1


# 订阅节点⬇️
[Remote Proxy]
HM~公益V2ray = https://raw.githubusercontent.com/hm2019721/GYFX-V2/master/hmGY~V2ray.com


#节点分组⬇️
[Remote Filter]
公益V2分组 = NodeSelect,HM~公益V2ray


# 本地节点⬇️
[Proxy]
# 内置 DIRECT、REJECT 策略



# 策略组⬇️
[Proxy Group]
# select模式,手动选择模式
🔰 节点选择 = select,🔴 负载均衡,♻️自动测速,公益V2分组

🔴 负载均衡 = load-balance,公益V2分组,url = http://www.gstatic.com/generate_204,interval = 300,max-timeout = 1000,algorithm = pcc

♻️自动测速 = url-test,公益V2分组,url = http://www.gstatic.com/generate_204,interval = 100

📱 SSID = ssid,default = 🔰 节点选择, cellular = 🔰 节点选择

🎵𝐓𝐢𝐤𝐓𝐨𝐤 = select,🔰 节点选择
🖥𝐍𝐞𝐭𝐟𝐥𝐢𝐱 = select,🔰 节点选择
💳𝐏𝐚𝐲𝐏𝐚𝐥 = select,🔰 节点选择
📱𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦 = select,🔰 节点选择
🎬𝐘𝐨𝐮𝐓𝐮𝐛𝐞 = select,🔰 节点选择
#动画疯
📺 动画疯 = select,🔰 节点选择

🔞𝐏𝐨𝐫𝐧𝐇𝐮𝐛 = select,🔰 节点选择
# 网络测速
🚀𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭 = select,🔰 节点选择

# 苹果服务
🍎𝐀𝐩𝐩𝐥𝐞 = select,DIRECT

# 白名单模式 PROXY，黑名单模式 DIRECT
🕹𝐅𝐢𝐧𝐚𝐥 = select,🔰 节点选择,DIRECT
# 广告拦截
🚫𝐀𝐝 𝐁𝐥𝐨𝐜𝐤 = select,REJECT

# 直接连接
#🎯𝐃𝐢𝐫𝐞𝐜𝐭 = select,DIRECT

# 拦截
#⛔️𝐑𝐞𝐣𝐞𝐜𝐭 = select,REJECT

# 本地规则⬇️
[Rule]

DOMAIN-SUFFIX,ehg-youtube.hitbox.com,reject

# GeoIP China
GEOIP,CN,DIRECT
FINAL,🕹𝐅𝐢𝐧𝐚𝐥

# 订阅规则⬇️
[Remote Rule]
# > Ad Block运营商屏蔽
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Liby.list, policy=🚫𝐀𝐝 𝐁𝐥𝐨𝐜𝐤, tag=𝐀𝐝 𝐋𝐢𝐛𝐲, enabled=true
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/Tide.list, policy=🚫𝐀𝐝 𝐁𝐥𝐨𝐜𝐤, tag=𝐀𝐝 𝐓𝐢𝐝𝐞, enabled=true
# > TikTok
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/TikTok.list, policy=🎵𝐓𝐢𝐤𝐓𝐨𝐤, tag=𝐓𝐢𝐤𝐓𝐨𝐤, enabled=true
# > Youtube
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/YouTube.list, policy=🎬𝐘𝐨𝐮𝐓𝐮𝐛𝐞, tag=𝐘𝐨𝐮𝐓𝐮𝐛𝐞, enabled=true
# > Netflix
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Netflix.list, policy=🖥𝐍𝐞𝐭𝐟𝐥𝐢𝐱, tag=𝐍𝐞𝐭𝐟𝐥𝐢𝐱, enabled=true
# > 动画疯
https://github.com/lhie1/Rules/raw/master/Surge/Surge%203/Provider/Media/Bahamut.list, policy=📺 动画疯, tag=𝐁𝐚𝐡𝐚𝐦𝐮𝐭, enabled=true
# > PronHub
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Pornhub.list, policy=🔞𝐏𝐨𝐫𝐧𝐇𝐮𝐛, tag=𝐏𝐨𝐫𝐧𝐇𝐮𝐛, enabled=true
# > Telegram
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Telegram.list, policy=📱𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦, tag=𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦, enabled=true
# > PayPal
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/PayPal.list, policy=💳𝐏𝐚𝐲𝐏𝐚𝐥, tag=𝐏𝐚𝐲𝐏𝐚𝐥, enabled=true
# > Outlook、Gmail
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/Mail.list, policy=🔰 节点选择, tag=𝐌𝐚𝐢𝐥, enabled=true
# > GoogleDrive
https://raw.githubusercontent.com/nzw9314/Surge/master/Ruleset/GoogleDrive.list, policy=🔰 节点选择, tag=𝐆𝐨𝐨𝐠𝐥𝐞𝐃𝐫𝐢𝐯𝐞, enabled=true
# > Speedtest
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Sub/Speedtest.list, policy=🚀𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭, tag=𝐒𝐩𝐞𝐞𝐝𝐓𝐞𝐬𝐭, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_CDN.list, policy=🍎𝐀𝐩𝐩𝐥𝐞, tag=𝐀𝐩𝐩𝐥𝐞_𝐂𝐃𝐍, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Apple_API.list, policy=🍎𝐀𝐩𝐩𝐥𝐞, tag=𝐀𝐩𝐩𝐥𝐞_𝐀𝐏𝐈, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/GlobalMedia.list, policy=🔰 节点选择, tag=𝐆𝐥𝐨𝐛𝐚𝐥𝐌𝐞𝐝𝐢𝐚, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Domestic.list, policy=DIRECT, tag=𝐃𝐨𝐦𝐞𝐬𝐭𝐢𝐜, enabled=true
https://raw.githubusercontent.com/eHpo1/Rules/master/Surge4/Ruleset/Global.list, policy=🔰 节点选择, tag=𝐆𝐥𝐨𝐛𝐚𝐥, enabled=true

# 本地重写⬇️
[URL Rewrite]
# > Redirect Google Service
^https?:\/\/(www.)?(g|google)\.cn https://www.google.com 302

# > TikTok Unlock (By Choler)
# 区域请修改下方国家代码，默认为日本 JP

(?<=_region=)CN(?=&) JP 307
(?<=&app_version=)16..(?=.?.?&) 1 307
(?<=\?version_code=)16..(?=.?.?&) 1 307


enable = true

#订阅重写⬇️
[Remote Rewrite]
#订阅去广告 by eHpo
https://raw.githubusercontent.com/eHpo1/Rules/master/Loon/Rewrite.conf, tag=eHpo, enabled=true

# 本地脚本⬇️
[Script]
enable = true
cron "3,4 0 * * *" script-path=https://raw.githubusercontent.com/Sunert/Scripts/master/Task/kuaishou.js, tag=快手极速版
cron "1,2 0 * * *" script-path=https://raw.githubusercontent.com/NobyDa/Script/master/BDTieBa-DailyBonus/TieBa.js, tag=百度贴吧

# 远程脚本⬇️
[Remote Script]
https://raw.githubusercontent.com/nzw9314/Loon/master/Task.conf, tag=签到, enabled=false
https://raw.githubusercontent.com/nzw9314/Loon/master/Script.conf, tag=去广告脚本, enabled=true
https://raw.githubusercontent.com/nzw9314/Loon/master/Cookie.conf, tag=Cookie, enabled=false

[MITM]
enable = true
hostname = *.googlevideo.com,*.tiktokv.com, *.byteoversea.com, *.musical.ly, *.snssdk.com
skip-server-cert-verify = true
ca-p12 = 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
ca-passphrase = 1Q5A4AXU
