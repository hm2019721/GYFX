# 该订阅为脚本合集,用于Remove Ads + unlock vip.
# 集成: NobyDa、yichahucha、Choler、onewayticket、langkhach以及个人收集整理的脚本. 
# 需要配置 CA 证书并启用 MitM 开关.
# 如需YouTube去广告,请手动添加 *.googlevideo主机名到hostname .
# 您可以在使用后手动将本模块禁用，以免产生不必要的MITM.
# GitHub主页(https://github.com/nzw9314)
# TG通知频道 (https://t.me/nzw9314News)

hostname = 8.8.8.8, trade-acs.m.taobao.com, bea.sportq.com, api.meiyan.com, pwaapi.gao1gps.cn, avoscloud.com, app.flashdown365.com, m.samh.xndm.tech, mob2015.kekenet.com, api.m.jd.com, ios.prod.ftl.netflix.com, vipapi.jxedt.com, api.interpreter.caiyunai.com, pocketlists.com, book.haitunwallet.com, mubu.com, app.xunjiepdf.com, miaow.yiyongcad.com, api.lennou.com, api.gkocr.com, vira.llsapp.com, commerce-.*api.faceu.mobi, commerce-api.faceu.mobi, pan.baidu.com, api.revenuecat.com, api.rr.tv, editorapi.115.com, api.lakecoloring.com, ctrl.playcvn.com, dict.eudic.net, m.client.10010.com, api.wakamoment.ga, *.bh3.com, api.diyidan.net, api.flexibits.com, api.jiaonizuocai.com, api.sololearn.com, tncj.hortorgames.com, bkcd.b-cdn.net, souhu.mett.me, ayk.tmdidi.com, m.pearkin.com, www.baidu.com2.club, claritywallpaper.com, bookapi.ihuman.com, rest.zhibo.tv, note.youdao.com, billing.peakcloud.org, api.ithome.com, www.xmind.cn, *.arten.cn, api.weiqire.com, api.shimo.im, pay.wecut.com, *.videostarapp.com, app.api.versa-ai.com, *.bjxkhc.com, api.591master.com, jdytv.cn, user.shywck.com, *.xunjie*.com, api.psy-1.com, snailsleep.net, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, mp.weixin.qq.com, api.bilibili.com, app.bilibili.com, *.zhihu.com, aweme*.snssdk.com, *.kuwo.cn, vip1.kuwo.cn, *.xiaoxiao*.com, *.tiktokv.com, *.musical.ly, *.amemv.com, p.du.163.com, getuserinfo.321mh.com, getuserinfo-globalapi.zymk.cn, ios.fuliapps.com, vsco.co, api.vnision.com, *.my10api.com, sp.kaola.com, r.inews.qq.com, apple.fuliapps.com, newdrugs.dxy.cn, app101.avictown.cc, api.hlo.xyz, api.ijo.xyz, www.luqijianggushi.com, account.wps.*, u.kanghuayun.com, api.gyrosco.pe, api1.dobenge.cn, api.mvmtv.com, mitaoapp.yeduapp.com, origin-prod-phoenix.jibjab.com, www.3ivf.com, pay.guoing.com, api.termius.com, api.bjxkhc.com, viva.v21xy.com, .com, biz.caiyunapp.com, api.gotokeep.com, ap*.intsig.net, mp.bybutter.com, api.vuevideo.net, api.picsart.c*, api.meiease.c*, splice.oracle.*.com, api.gamer.com.tw, ios.xiangjiaoapps.com, apple.xiangjiaoapps.com, *.lagoapps.com, api.gamer.com.tw, *.xiangxiangapps.com, avatar-nct.nixcdn.com, spclient.wg.spotify.com, oa.zalo.me, origin-prod-phoenix.jibjab.com, api.meiease.c*, api.unfold.app, viva-asia1.vvbrd.com, graph.nhaccuatui.com, api.memrise.com , api.sync.me, pool.elsanow.io, lambda.us-east-1.amazonaws.com, api.mondlylanguages.com, api.busuu.com, owa.videoshowiosglobalserver.com:0, accounts.elevateapp.net, purchases.ws.pho.to, api-intl.mr.meitu.com, bmall.camera360.com, api.tv.zing.vn, api.calm.com, www.calm.com, api.global.mp3.zing.vn, apimboom2.globaldelight.net, photos.adobe.io, license.pdfexpert.com, subs.platforms.team, apic.musixmatch.com, api.getmimo.com, api.revenuecat.com, engbright.com, api.lingokids.com, www.peacefulsoundsapp.com, duolingo-leaderboards-prod.duolingo.com, mobile-api.adguard.com, api.blinkist.com, api-kinemaster-assetstore.*, api.pushover.net, ap*.intsig.net, api.overhq.com, receipt-validator.herewetest.com, lcs-mobile-cops.adobe.io, education.github.com, backend.getdrafts.com, ssl-api.itranslateapp.com, sk.ulysses.app, dayone.me, license.enpass.io, mp.bybutter.com, *.grammarly.com, splice.oracle.*.com, api.keepkeep.com, planner5d.com, secure.istreamer.com, www.api.monkeyuni.net, api.textnow.me, api.madewithfaded.com,nomo.dafork.com

# > yichahucha

# > 京东比价
http-response ^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/jd_price.js,tag=京东比价

# > 淘宝比价
# 不生效或失效的需要卸载 tb 重装，注意不开脚本进 tb 会失效
http-request ^http://.+/amdc/mobileDispatch requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js,tag=淘宝比价1(内置版)
http-response ^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js,tag=淘宝比价2(内置版)
# Lite弹窗版
http-request ^http://.+/amdc/mobileDispatch requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price_lite.js,tag=淘宝比价1 Lite(通知版)
http-response ^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price_lite.js,tag=淘宝比价2 Lite(通知版)

# > 奈飞评分
http-request ^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js,tag=奈飞评分1
http-response ^https?://ios\.prod\.ftl\.netflix\.com/iosui/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js,tag=奈飞评分2
http-response ^https?://ios\.prod\.ftl\.netflix\.com/iosui/warmer/.+type=show-ath requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating_season.js,tag=单集评分

# > 微博去广告
http-response ^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_launch.js,tag=微博启动广告
http-response ^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/photos/pic_recommend_status|video/tiny_stream_video_list) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_ad.js,tag=微博广告

# > 微信公众号
http-request ^https://mp\.weixin\.qq\.com/mp/getappmsgad script-path=https://Choler.github.io/Surge/Script/WeChat.js,tag=微信公众号广告

# > YouTube 
http-request ^https://[\s\S]*\.googlevideo\.com/.*&(oad|ctier) script-path=https://Choler.github.io/Surge/Script/YouTube.js,tag=YouTube去广告

# >网易考拉 去广告
http-response ^https://sp\.kaola\.com/api/openad$ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wykaola.js,tag=网易考拉去广告

# >腾讯新闻 去广告
http-response ^https://r\.inews\.qq.com\/get(QQNewsUnreadList|RecommendList) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/QQNews.js,tag=腾讯新闻去广告

# > onewayticket255

# > 知乎 去广告
http-response https://api.zhihu.com/moments/recommend requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20zhihu%20feed.js,tag=知乎
http-response https://api.zhihu.com/topstory/recommend requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20zhihu%20recommend.js,tag=知乎
http-response https://api.zhihu.com/v4/questions requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20zhihu%20answer.js,tag=知乎
http-response https://api.zhihu.com/people/ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20zhihu%20people.js,tag=知乎

# > 哔哩哔哩 精简&去广告
# Up主收藏排行榜
http-response https://app.bilibili.com/x/v2/space\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20space.js,tag=哔哩哔哩Up收藏排行榜
# 首页Tab
http-response https://app.bilibili.com/x/resource/show/tab\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20tab.js,tag=哔哩哔哩首页Tab
http-response https://app.bilibili.com/x/v2/feed/index\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20feed.js
# 个人中心
http-response https://app.bilibili.com/x/v2/account/mine\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20account.js,tag=哔哩哔哩个人中心(精简)
http-response https://app.bilibili.com/x/v2/view\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20view%20relate.js
http-response https://api.bilibili.com/x/v2/reply/main\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20reply.js
http-response https://api.live.bilibili.com/xlive/app-room/v1/index/getInfoByRoom\?access_key requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/onewayticket255/Surge-Script/master/surge%20bilibili%20live.js,tag=哔哩哔哩直播

# > NobyDa

# > 皮皮虾  Remove Ad & Logo
http-response ^https?://.*\.snssdk\.com/bds/(feed/stream|comment/cell_reply|cell/cell_comment|cell/detail|ward/list|user/favorite|user/cell_coment|user/cell_userfeed|user/publish_list) requires-body=1,max-size=-1,script-path=https://raw.githubusercontent.com/Liquor030/Sub_Ruleset/master/Script/Super.js,tag=皮皮虾去水印广告

# > 酷我音乐SVIP (By yxiaocai)
http-response ^https?:\/\/vip1\.kuwo\.cn\/(vip\/v2\/user\/vip|vip\/spi/mservice) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Kuwo.js,tag=酷我音乐

# > 小小影视Vip (By Meeta)
http-response https:\/\/.*\.xiaoxiao.*\.com\/(vod\/reqplay\/|ucp/index|getGlobalData) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/xxys.js,tag=小小影视

# > 爱美剧Vip (by huihui）(官网：app.meiju2018.com)
http-response ^https?:\/\/api.bjxkhc.com\/index\.php\/app\/ios\/(vod\/show|(user|vod|topic|type)\/index) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/aimeiju.js,tag=爱美剧

# > 网易蜗牛读书VIP (By yxiaocai and JO2EY)
http-response ^https?:\/\/p\.du\.163\.com\/gain\/readtime\/info\.json requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/wnyd.js,tag=网易蜗牛读书

# > 看漫画极速版vip (By HoGer)
http-response ^https?:\/\/getuserinfo\.321mh\.com\/app_api\/v5\/getuserinfo\/ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/kmh.js,tag=看漫画极速版

# > 哔哩哔哩番剧开启1080P+
http-response ^https?:\/\/api\.bilibili\.com\/pgc\/player\/api\/playurl requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/bilifj.js,tag=哔哩哔哩番剧开启1080P+

# > 知音漫客VIP (By mieqq)
http-response ^https://getuserinfo-globalapi.zymk.cn/app_api/v5/(getuserinfo|coin_account|getuserinfo_ticket|getcomicinfo)/ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/Zymh.js,tag=知音漫客

# > VSCO滤镜VIP
http-response ^https?:\/\/vsco\.co\/api\/subscriptions\/2.1\/user-subscriptions\/ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/vsco.js,tag=VSCO

# > 大片-视频编辑器 VIP
http-response ^https?:\/\/api\.vnision\.com\/v1\/(users\/|banners) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/dapian.js,tag=大片-视频编辑器

# > 91短视频
http-response ^https?:\/\/.+\.(my10api|(.*91.*))\.(com|tips|app|xyz)(:\d{2,5})?\/api.php$ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/91.js,tag=91短视频

# > 香蕉视频VIP
http-response ^https?:\/\/.*\.(lago|fuli|xiang(jiao|xiang))apps\.com\/(ucp\/index|getGlobalData|.+\/reqplay\/) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/xjsp.js,tag=香蕉视频

# > 用药助手解锁专业版 (By Primovist)
http-response ^https?:\/\/(i|newdrugs)\.dxy\.cn\/(snsapi\/username\/|app\/user\/(pro\/stat\?|init\?timestamp=)) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/yyzs.js,tag=用药助手

# > 优乐美, 小米粒, 彩色直播三合一 解锁收费房
http-response ^https?:\/\/(.+)\.(\w{2,3})(:?\d*)\/(api\/public\/\?service=Live\.checkLive$|public\/\/\?service=Live\.roomCharge$|lg\/video\/loadVideoFees\.do$) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/zhibo.js,tag=直播三合一

# > 陆琪讲故事
http-response ^https:\/\/www\.luqijianggushi\.com\/api\/v2\/user\/get requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/luqi.js,tag=陆琪讲故事

# > WPS (By eHpo)
http-response ^https://account.wps.*/api/users/ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Wps.js,tag=WPS

# > Gyroscope 解锁 pro (By Maasea)
http-response ^https:\/\/api\.gyrosco\.pe\/v1\/account\/$ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/gyroscope.js,tag=Gyroscope

# > 大千视界
http-response ^https:\/\/api\.mvmtv\.com\/index\.php.*(c=user.*a=info|a=addr.*vid=.*) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/dqsj.js,tag=大千视界

# JibJab解锁pro
http-response ^https:\/\/origin-prod-phoenix\.jibjab\.com\/v1\/user requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/jibjab.js,tag=JibJab

# Termius 解锁本地pro  (By Maasea)
http-response https:\/\/api\.termius\.com\/api\/v3\/bulk\/account\/ requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Termius.js,tag=Termius

# 小影 解锁Vip (By @hiepkimcdtk55)
http-response ^https:\/\/viva\.v21xy\.com\/api\/rest\/u\/vip requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/vivavideo.js,tag=小影

# 彩云天气 Vip
http-response ^https:\/\/biz\.caiyunapp\.com\/v2\/user\?app_name\=weather requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/ColorWeather.js,tag=彩云天气

# Keep 解锁私人课程和动作库 (QX存在bug 该脚本可能无法生效)
http-response ^https:\/\/api\.gotokeep\.com\/(.+\/subject|.+\/dynamic) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Keep.js,tag=Keep

# 扫描全能王 pro
http-response ^https:\/\/(api|api-cs)\.intsig\.net\/purchase\/cs\/query_property\? requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/CamScanner.js,tag=扫描全能王

# VUE pro
http-response ^https:\/\/api\.vuevideo\.net\/api\/v1\/(users\/.+\/profile|subtitle\/prepare) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/VUE.js,tag=VUE

# NiChi 解锁素材
http-response ^https?:\/\/mp\.bybutter\.com\/mood\/(official-templates|privileges) requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/NiChi.js,tag=NiChi

# PicsArt美易 pro
http-response ^https:\/\/api\.(picsart|meiease)\.c(n|om)\/users\/show\/me\.json requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/PicsArt.js,tag=PicsArt美易

# Splice 视频编辑器 pro
http-response ^https:\/\/splice\.oracle\.\w+\.com\/devices\/me requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Splice.js,tag=Splice

# 动画疯 去广告
http-request https:\/\/api\.gamer\.com\.tw\/mobile_app\/anime\/v3\/token\.php requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Bahamut.js,tag=动画疯去广告
http-response https:\/\/api\.gamer\.com\.tw\/mobile_app\/anime\/v3\/token\.php requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Bahamut.js,tag=动画疯去广告

# > 以下为nzw9314收集整理

#> superuv

# > 驾校一点通 (by @superuv)
http-response ^https:\/\/vipapi\.jxedt\.com\/vip\/check requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/jxydt.js,tag=驾校一点通

# > 海豚记账 (by @superuv)
http-response https:\/\/book\.haitunwallet\.com\/app\/vip\/status requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/HTJZ.js,tag=海豚记账

# > Pocket list (by @superuv)
http-response ^https:\/\/pocketlists\.com\/api\/v1\/pocketlists.me.get requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/pock.js,tag=Pocket list

# > 幕布(by @superuv)
http-response https:\/\/mubu\.com\/api\/app\/user\/info requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/mb.js,tag=幕布

# 智能证件照相机 (by @superuv)
http-response ^https:\/\/app\.xunjiepdf\.com\/api\/v4\/virtualactregister requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/znzj.js,tag=智能证件照相机

# 猫咪翻译(by @superuv)
http-response http:\/\/miaow\.yiyongcad\.com\/api\/v4\/memprofile requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/mmfy.js,tag=猫咪翻译

# 微商助手(by @superuv)
http-response https:\/\/api\.lennou\.com\/user\/info requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/wszs.js,tag=微商助手

# gk扫描仪(by @superuv)
http-response ^https:\/\/api\.gkocr\.com\/api\/userlogin1.php requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/smy.js,tag=gk扫描仪

# > Miao Miao

# > Bear熊掌记 (By Miao Miao)
// http-response ^https:\/\/buy\.itunes\.apple\.com\/verifyReceipt requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/bear.js,tag=Bear熊掌记

# > 第一弹  (By Miao Miao)
# > 去广告+原画
http-response ^https:\/\/api\.diyidan\.net\/v0\.3\/(user\/personal_homepage|vip_user\/info|tv_series\/index\?appChanne) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/Diyidan.js,tag=第一弹

# > syzzzf

# 轻颜相机 & ulike & 蒸汽波相机(vaporcam)三合一 解锁VIP(By @s y & Alex0510)
http-response ^https:\/\/commerce-.*api\.faceu\.mobi\/commerce\/v1\/subscription\/user_info requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/qyxj.js,tag=轻颜相机

# CPU Dasher破解(需要ios13 恢复购买后禁用掉 By @s y)
// http-response ^https:\/\/p.+-buy\.itunes\.apple\.com\/WebObjects\/MZFinance.woa\/wa\/inAppRegrantPurchaseHistory requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/cupdasher.js,tag=CPU Dasher

# 酷我换肤(已经有的皮肤需要先从本地皮肤删除再换 By@ s y)
http-response ^https?:\/\/vip1\.kuwo\.cn\/(vip\/v2\/theme) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/themekuwo.js,tag=酷我换肤


# > Alex0510

# > 水印精灵 vip (By Alex0510)
http-response ^https:\/\/api1\.dobenge\.cn\/api\/user\/getuserinfo requires-body=1,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/syjl.js,tag=水印精灵

# > 有道云笔记 (By Alex0510)
http-response https://note.youdao.com/yws/(mapi/payment|api/self) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/Alex0510/Eric/master/surge/Script/ydybj.js,tag=有道云笔记

# > 彩云小译 (By Alex0510)
http-response ^https:\/\/api\.interpreter\.caiyunai\.com\/v1\/user requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/cyxy.js,tag=彩云小译

# > 石墨文档 (By Alex0510)
http-response https://api.shimo.im/users/ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/shimo.js,tag=石墨文档

# 手机硬件管家 (By Alex0510)
http-response http:\/\/api\.591master\.com\:8081\/(1.0|3.6.8)\/ui(forum|common)\/(downloadwallpaper|getuser) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/sjyjgj.js,tag=手机硬件管家

# 花椒视频 (By Alex0510)
http-response http://user.shywck.com/user/userinfo requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/hjsp.js,tag=花椒视频

# > 凉意

# 韩剧TV (By 凉意)
# 下载地址请看脚本内说明
http-response https\:\/\/hjapi\.bjxkhc\.com\/v2d2\/users\/.*\/member requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/hanjuTV.js,tag=韩剧TV

# 筋斗云tv (By 凉意)
http-response ^http\:\/\/jdytv\.cn\/login\/login\/veifys requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/jdyTV.js,tag=筋斗云TV

# 闪电下载vip (By 凉意)
http-response ^http\:\/\/app\.flashdown365\.com\/ios\/login requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/sdxz.js,tag=闪电下载

# > JAV101无限观看 (By 凉意)
http-response ^https\:\/\/pwaapi\.gao1gps\.cn\/v1\/user\/info requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/JAV101.js,tag=JAV101

# > 黑黑酱

# > 小睡眠（by 黑黑酱）
http-response ^https:\/\/api\.psy-1\.com\/cosleep\/user\/info requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/xiaoshuimian.js,tag=小睡眠

# > 蜗牛睡眠会员（by 黑黑酱）
http-response ^https:\/\/snailsleep\.net\/snail\/v1\/profile\/get requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/wnsm.js,tag=蜗牛睡眠会员

# > 西窗烛 （By 黑黑酱）
http-response ^https:\/\/avoscloud\.com\/1\.1\/users\/ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/xcz.js,tag=西窗烛

# > 美颜相机一次性解锁内购（by黑黑酱）
http-response ^https:\/\/api\.meiyan\.com\/iap\/verify\.json requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/myxj.js,tag=美颜相机

# Fit健身会员 （by黑黑酱）
http-response ^https:\/\/bea\.sportq\.com\/SFitWeb\/sfit\/getUserBaseInfo requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/fit.js,tag=

# > LTribe

# > 万里影视 无限时常（by LTribe）
http-response ^http?:\/\/.*\.arten.cn/login/login requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/Wanliyingshi.js,tag=万里影视

# VideoStar Unlock（by LTribe）
http-response ^https?:\/\/.*\.videostarapp\.com\/scripts\/subsNew\.php requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/VideoStar.js,tag=VideoStar

# 迅捷应用6合1 （by LTribe）
http-response ^https?:\/\/.*\.xunjie.*\.com\/api\/v\d\/* requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/xunjie.js,tag=迅捷

# > 军哥哥

# > 洪恩双语绘本 (By 军哥哥)
http-response https:\/\/bookapi\.ihuman\.com\/(v1\/get\_user\_info|v1\/get\_purchase\_list) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/hnsyhb.js,tag=洪恩双语绘本

# > 中国体育直播unlock (By 军哥哥)
http-response http:\/\/rest\.zhibo\.tv\/room\/get\-room\-info\-v430 requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/zgtyzb.js,tag=中国体育直播

# > sunshy

# > Fantastical 内购解锁 (By @sunshy)
http-response ^https:\/\/api\.flexibits\.com\/v1\/(auth|account)\/(device|details|appstore-receipt)\/$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/fantastical.js,tag=Fantastical

# > SoloLearn Unlock PRO & Platinum Moderator (By @sunshy)
http-response https:\/\/api\.sololearn\.com\/(authenticateDevice|challenge\/GetContestFeed|Profile\/GetProfile)$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/sololearn.js,tag=SoloLearn

# > CheeryTodo

# Pillow (By @CheeryTodo)
http-response https:\/\/api\.revenuecat\.com\/v1\/(subscribers|receipts) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/pillow.js,tag=Pillow

# 马卡龙 (By @CheeryTodo)
http-response https://app.api.versa-ai.com/pay/order/iap/check requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/mkl.js,tag=马卡龙

# 流利说.阅读 (by@火羽&@singee)
http-response ^https?:\/\/vira\.llsapp\.com\/api\/v2\/readings\/(accessible|limitation) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/llyd.js,tag=流利说.阅读

# 云盘解析（Made by Meeta)
http-response ^https?:\/\/pan\.baidu\.com\/s\/ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/MeetaRules/master/Surge/Scripting/yun_analyze.js,tag=云盘解析

# 115离线 (请仔细阅读脚本内使用说明 By ikanam)
http-response ^http:\/\/115\.com\/lx.*$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/115lx.js,tag=115离线

# lake
http-response ^https:\/\/api\.lakecoloring\.com\/v1\/receipt requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/lake.js,tag=lake

# > 人人视频 解锁AI原画 (by@george Jiang & R)
http-response ^https:\/\/api\.rr\.tv(\/user\/privilege\/list|\/ad\/getAll|\/rrtv-video\/v4plus\/season\/detail) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/rrtv.js,tag=人人视频AI原画

# 每日英语阅读/每日外刊 解锁课程  (By chamberlen)
http-response ^https:\/\/dict\.eudic\.net\/jingting\/GetThisChapterTaskStatus? requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/mryy.js,tag=每日英语阅读

# > 菜谱大全解锁vip (By @photonmang)
http-response https?:\/\/api\.jiaonizuocai\.com requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/cpdq.js,tag=菜谱大全

# > 头脑吃鸡 (By chavyleung)
http-response ^https://tncj.hortorgames.com/chicken/fight/(answer|findQuiz) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/tncj/tncj.min.js,tag=头脑吃鸡

# > Pear雪梨 unlock vip
http-response ^https:\/\/(www\.baidu.com2\.club|ayk\.tmdidi\.com|m\.pearkin\.com|souhu\.mett\.me|bkcd\.b-cdn\.net)\/(api\/movie\/WatchMovie|api\/Account\/CheckVip|api\/account\/IndexDetail) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/pear.js,tag=Pear雪梨

# > 克拉壁纸  解锁付费壁纸 (By @Dachaw)
http-response ^https:\/\/claritywallpaper\.com\/clarity\/api\/(userInfo|special\/queryByCatalogAll) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/clarity.js,tag=克拉壁纸

# > Peak 解锁Pro
http-response ^https:\/\/billing\.peakcloud\.org\/billing\/2\/user\/me? requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/peak.js,tag=Peak

# > IT之家 去新闻列表广告
http-response ^https?:\/\/api\.ithome\.com\/json\/slide\/index requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/ITHome.js,tag=IT之家去列表广告
http-response ^https?:\/\/api\.ithome\.com\/json\/(newslist|listpage)\/news requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/ITHome.js,tag=IT之家去列表广告

# > XMind思维导图
http-response https:\/\/www\.xmind\.cn\/\_res\/devices requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/XMind.js,tag=XMind思维导图

# > 奇热小说 解锁收费章节(By @@ios4521)
http-response ^https://api.weiqire.com/api3/(visitor/|user/unlockCharpter) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/qrxs.js,tag=奇热小说

# 可可英语会员
http-response ^https:\/\/mob2015\.kekenet\.com\/keke\/mobile\/index\.php requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/kkyy.js,tag=可可英语

# 飒漫画 (By @u18888)
http-response ^https:\/\/m\.samh\.xndm\.tech\/userapi\/info\/v1\/getuserinfo requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/Smh.js,tag=飒漫画

# > Chavy box (多账号Cookie保存切换)
# 访问: https://8.8.8.8/home管理
http-request ^https://8.8.8.8/api script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, requires-body=true
http-response ^https://8.8.8.8/(home|sub|my|app|log\/) script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, requires-body=true

# > Langkhach越南老哥

# > all apps monkey
http-response ^https:\/\/www\.api\.monkeyuni\.net\/api\/.+\/mobile\/account\/load-update requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/monkey.js,script-update-interval=0

# > Ulysses
http-request ^https:\/\/sk\.ulysses\.app\/api\/v1\/user_offers$ script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/cleancacheulysses.js
http-response ^https:\/\/sk\.ulysses\.app\/api\/v1\/itunes_receipt_verify$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/ulysses.js

# > NOMO
http-response ^https:\/\/nomo\.dafork\.com\/api\/v2\/iap\/ios_product_list requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/nomo.js,script-update-interval=0

# > Faded
http-response ^https:\/\/api\.madewithfaded\.com\/api\/.+\/subscription\/validate$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/Faded.js,script-update-interval=0

# > playerxtreme
http-request ^https:\/\/secure\.istreamer\.com\/backend$ script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/remove-nonematch.js,script-update-interval=0
http-response ^https:\/\/secure\.istreamer\.com\/backend$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/playerxtreme.js,script-update-interval=0

# > grammarly
http-response ^https:\/\/subscription\.grammarly\.com\/api\/v1$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/grammarly.js,script-update-interval=0

# > splice
http-response https:\/\/splice\.oracle\.\w+\.com\/devices\/me requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/splice.js,script-update-interval=0

# > planner5d
http-response ^https:\/\/planner5d\.com\/api\/sets requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/planner5d.js,script-update-interval=0

# > Dayone
# 1.启用本脚本与 pre 脚本
# 2.重启 Day One，稍等片刻等待高级版出现
# 3.禁用掉 pre 脚本，重启 Day One，确认高级版状况不变
# pre_dayone
//http-request ^https:\/\/dayone\.me\/api\/users$ debug=1,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/dayone-pre.js
http-response ^https:\/\/dayone\.me\/api\/(users|v2\/users\/(account-status|receipt))$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/dayone.surge.js,script-update-interval=0

# > endel
http-response ^https:\/\/api-production\.endel\.io\/.*\/user$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/endel.js,script-update-interval=0

# > itranslate
http-response ^https:\/\/ssl-api\.itranslateapp\.com\/.*\/subscriptions\/.*\/ios$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/itranslate.js,script-update-interval=0

# > photoshop
http-response ^https:\/\/lcs-mobile-cops\.adobe\.io\/mobile_profile requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/photoshop.js,script-update-interval=0

# > draft
http-response ^https:\/\/backend\.getdrafts\.com\/api\/.*\/verification requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/draft.js,script-update-interval=0

# > workingcopy.js
http-response ^https:\/\/education\.github\.com\/api\/user$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/workingcopy.js,script-update-interval=0

# > speak&translate
http-response ^https:\/\/receipt-validator\.herewetest\.com\/apple\/verifyTransaction$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/speak&translate.js,script-update-interval=0

# > over
http-response ^https:\/\/api\.overhq\.com\/(user\/token\/refresh$|subscription\/verifyReceipt$) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/over.vip.js,script-update-interval=0

# > kinemaster
http-response ^https:\/\/api-kinemaster-assetstore\.(nexstreaming|kinemasters)\.com\/.+\/product\/verifyReceipt$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/kinemaster.js,script-update-interval=0

# > musicalm
http-response ^https:\/\/www\.peacefulsoundsapp\.com\/api\/v1\/init$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/musicalm.js,script-update-interval=0

# > lingokids
http-response ^https:\/\/api\.lingokids\.com\/v1\/renovate_session$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/lingokids.vip.js,script-update-interval=0

# > Bright
http-response ^https:\/\/engbright\.com\/app-portal\/apple\/receipt$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/verify_receipt.js,script-update-interval=0

# > #mojo&noto
http-response ^https:\/\/api\.revenuecat\.com\/.+\/(receipts$|subscribers\/[a-zA-Z0-9_-]*$) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/revenuecat.js,script-update-interval=0

# > mimo
http-response ^https:\/\/api\.getmimo\.com\/v1\/subscriptions$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/mimo.vip.js,script-update-interval=0

# > boom
http-response ^https:\/\/apimboom2\.globaldelight\.net\/itunesreceipt_v2\.php$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/verify_receipt.js,script-update-interval=0

# > musixmatch
http-response ^https:\/\/apic\.musixmatch\.com\/ws\/.*\/config\.get requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/musixmatch.miao.js,script-update-interval=0

# > productive&sleepzy
http-response ^https:\/\/subs\.platforms\.team\/.+\/apple\/verify$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/productive.js,script-update-interval=0

# > Pdfexpert
http-response ^https:\/\/license\.pdfexpert\.com\/api\/.+\/subscription\/(refresh$|check$) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/Pdfexpert.vip.js,script-update-interval=0

# > Lightroom
http-response ^https:\/\/photos\.adobe\.io\/v2\/accounts requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/Lightroom.js,script-update-interval=0

# > calm
http-response ^https:\/\/api\.calm\.com\/(me$|receipt$) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/calm.vip.js,script-update-interval=0

# > zingtv
http-response ^https?:\/\/api\.tv\.zing\.vn\/.+/user requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingtvvipv1.js,script-update-interval=0

# > camera360
http-response ^https:\/\/bmall\.camera360\.com\/api\/(iap\/check-receipt$|mix\/getinfo$) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/camera360.vip.js,script-update-interval=0

# > beautyplus
http-response ^https:\/\/api-intl\.mr\.meitu\.com/.*/subs_offer_elg$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/beautyplusvip.js,script-update-interval=0

# > elevate
http-response ^https:\/\/accounts\.elevateapp\.net\/api\/users\?user%5Bauthentication_token requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/elevate.vip.js,script-update-interval=0

# > busuu
http-response ^https:\/\/api\.busuu\.com\/users\/me requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/busuu.vip.js,script-update-interval=0

# > mondly
http-response ^https:\/\/api\.mondlylanguages\.com\/v1\/ios\/user\/sync$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/mondly.vip.js,script-update-interval=0

# > drops
http-response ^https:\/\/lambda\.us-east-1\.amazonaws\.com/.*/functions\/prod-4-syncPurchases\/invocations$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/drops.js,script-update-interval=0

# > elsa
http-response ^https:\/\/pool\.elsanow\.io\/user\/api\/v1\/purchase$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/elsa-response.js,script-update-interval=0

# > syn.me
http-response ^https:\/\/api\.sync\.me\/api\/purchases\/(report_purchases|get_purchases) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/syn.me.js,script-update-interval=0

# > memrise
http-response ^https:\/\/api\.memrise\.com\/.+\/(me\/$|dashboard\/$|leaderboards\/following\/) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/memrise.vip.js,script-update-interval=0

# > nhaccuatui
http-response ^https:\/\/graph\.nhaccuatui\.com\/.*\/users\/info requires-body=1,max-size=0,debug=1,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/nhaccuatui.js,script-update-interval=0
# > Unfold
http-response ^https:\/\/api\.unfold\.app\/v1\/ios\/receipts$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/Unfold.vip.js,script-update-interval=0

# > videoshow
http-response ^https:\/\/owa\.videoshowiosglobalserver\.com\/zone\/.+\/iosPayClient\/(payVerify|imeiVerify) requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/videoshow.vip.js,script-update-interval=0

# > BuyHack
http-response ^https:\/\/buy\.itunes\.apple\.com\/verifyReceipt$ requires-body=1,max-size=262144,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/verify_receipt.js,script-update-interval=0

# > zingmp3
http-response ^https:\/\/api\.global\.mp3\.zing\.vn\/.+\/getUserInfo\?data= requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingmp3.js,script-update-interval=0
http-response ^https:\/\/api\.global\.mp3\.zing\.vn\/1\.0\/getDownloadSongInfo\?data requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingmp3.downloadsong.js,script-update-interval=0
http-response ^https:\/\/api\.global\.mp3\.zing\.vn\/1\.0\/getSongInfo\?data requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/zingmp3.getsong.js,script-update-interval=0
