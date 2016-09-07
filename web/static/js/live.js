var Live = function(){
    var username, password, token;
    var oneBarrageContentSeletor = '#one-barrage-content';
    var barrageContentSeletor = '#barrage-content';

    var logger;

    return{
        init: function(userPara){
            var c = Live;
            c.initEvent();
            c.initUserInfo(userPara);
            c.initData();

            logger = new window.Tracker('cn-hangzhou.log.aliyuncs.com','livestreaming','phoneencoder');

            c.sendLog();
        },

        sendLog: function(){
            setInterval(function(){
                logger.push('b', 'livestreaming');
                logger.push('cdn_ip', '0.0.0.0');
                logger.push('clientTime', '0');
                logger.push('ct', '' + new Date().getTime());
                logger.push('cycledelay', '' + Live.rd(5,30));
                logger.push('d', 'mResDefinition');
                logger.push('e', '9002');
                logger.push('fps', Live.rd(24,26) + '');
                logger.push('gps', '北京');
                logger.push('gpsx', '39.5957');
                logger.push('gpsy', '116.2853');
                logger.push('lv', '1');
                logger.push('m', 'pc,web');
                logger.push('networktype', '1');
                logger.push('packetloss', '' + Live.rd(0,5));
                logger.push('pv', '1.0.0');
                logger.push('s', 'mSessionId');
                logger.push('serverTime', '0');
                logger.push('t', 'pc');
                logger.push('u', 'muserid');
                logger.push('ubps', Live.rd(790,810) + '');
                logger.push('uuid', '' + new Date().getTime());
                logger.push('z', '1');
                logger.logger();
            }, 1000);
        },

        rd: function(){
            var c = m-n+1;
            return Math.floor(Math.random() * c + n);
        },


        initEvent: function(){
            var c = Live;
            $(document).on("click", "#send-barrage", function (event) {
                var oneBarrageContent = $(oneBarrageContentSeletor).val();
                if ( !oneBarrageContent || oneBarrageContent.length == 0 ){
//                    $(oneBarrageContentSeletor).attr('placeholder', '请输入内容');
                    return;
                }

                c.sendBarrage(username,oneBarrageContent);
            });

        },

        initData: function(){
            $('.username').html(username);
        },

        initUserInfo: function(userPara){
            var userData = userPara || {};
            username = userData.username;
            password = userData.password;
            token = userData.token;
        },

        sendBarrage: function(username,oneBarrageContent){
//            $(barrageContentSeletor).find('.msg-end').removeClass('msg-end');
            $(barrageContentSeletor).append("<p><span style='color: blue'>" + username + ":</span>"
                + "<span>&nbsp;&nbsp;" + oneBarrageContent + "</span></p>");

//            $(barrageContentSeletor).find('.msg-end').click();
            $(barrageContentSeletor).scrollTop( $(barrageContentSeletor)[0].offsetHeight );
        },

        empty:null
    }
}();