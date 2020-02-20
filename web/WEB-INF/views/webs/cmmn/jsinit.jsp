<script src="../../../../js/jquery.min.js"></script>
<script src="../../../../js/jquery-migrate-3.0.1.min.js"></script>
<script src="../../../../js/popper.min.js"></script>
<script src="../../../../js/bootstrap.min.js"></script>
<script src="../../../../js/jquery.easing.1.3.js"></script>
<script src="../../../../js/jquery.waypoints.min.js"></script>
<script src="../../../../js/jquery.stellar.min.js"></script>
<script src="../../../../js/owl.carousel.min.js"></script>
<script src="../../../../js/jquery.magnific-popup.min.js"></script>
<script src="../../../../js/aos.js"></script>
<script src="../../../../js/jquery.animateNumber.min.js"></script>
<script src="../../../../js/bootstrap-datepicker.js"></script>
<script src="../../../../js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="../../../../js/google-map.js"></script>
<script src="../../../../js/main.js"></script>
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
            },
            fail:function(err){
                alert(JSON.stringify(err));
            }
        })
    }

    //]]>
</script>