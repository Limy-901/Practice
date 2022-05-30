<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
        <title>테스트 페이지</title>
    </head>
    <body>
<p>
    <p>with my pet 결제 테스트</p>
    <button id="check_module" type="button">with my pet 결제 모듈 테스트 해보기</button>
</p>
<script>
    $("#check_module").click(function () {
        var IMP = window.IMP; // 생략가능 
        IMP.init('imp58118110'); //가맹점 식별코드
        IMP.request_pay({
            pg: 'kakao', // version 1.1.0부터 지원.           
            pay_method: 'card',           
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '주문명:결제테스트',
            //결제창에서 보여질 이름
            amount: 1000, 
            //가격 
            buyer_email: 'withmypetadmin@naver.com',
            buyer_name: '관리자',
            buyer_tel: '010-1234-5678',
            buyer_addr: '서울특별시 강남구 삼성동',
            buyer_postcode: '123-456',
            m_redirect_url: 'https://www.naver.com'
           
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
    });
</script>
    </body>
    </html>
      