<%--
  Created by IntelliJ IDEA.
  User: curonsys
  Date: 2020-02-20
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/webs/cmmn/init.jsp"%>

<html>
<head>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Whisper Music Login</title>
</head>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<body>
    <c:import url="/cmmn/header.do"/>
    <div class="container">
        <div class="overlay"></div>
        <div style="margin-top:20em; margin-left:20em;">
            <form method="post" action="">
                <label for="userId"/>
                <input Type="text" class="login-Box" id="userId" name="userId" placeholder="example123@example.com">
                <label for="userPassword"/>
                <input type="text" class="login-box" id="userPassword" name="userPassword" placeholder="*******">
                <input type="button" value="submit">
            </form>
            <div class="sns-login-btn">
                <a id="kakao-login-btn"></a>
                <a href="http://developers.kakao.com/logout"></a>
            </div>
        </div>
    </div>
    <c:import url="/cmmn/footer.do"/>
</body>
<script type='text/javascript'>
    //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('702e14d3499938abfa5ff0992cdfe7c4');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {
            alert(JSON.stringify(authObj));
        },
        fail: function(err) {
            alert(JSON.stringify(err));
        }
    });
    function loginWithKakao(){
        Kakao.Auth.login({
            success:function(authObj){
                alert(JSON.stringify(authObj))
                location.href="/main/main.do";
            },
            fail:function(err){
                alert(JSON.stringify(err));
            }
        })
    }

    //]]>
</script>
<%@ include file="/WEB-INF/views/webs/cmmn/jsinit.jsp"%>
</html>
