/* 멤버 */
insert into MEMBER values(1, 'aaaa@naver.com', 'bit1111', '임연지', '제주시 안덕면',SYSDATE);
insert into MEMBER values(2, 'bbbb@gmail.com', 'bit2222', '이옥석', '서울시 용산구',SYSDATE);
insert into MEMBER values(3, 'cccc@naver.com', 'bit3333', '성진희', '서울시 마포구',SYSDATE);
insert into MEMBER values(4, 'dddd@naver.com', 'bit4444', '차지현', '서울시 강서구',SYSDATE);
insert into MEMBER values(5, 'eeee@daum.com', 'bit5555', '이수진', '경기도 부천시',SYSDATE);
insert into MEMBER values(6, 'ffff@gmail.com', 'bit6666', '최우재', '서울시 영등포구',SYSDATE);

/* 메세지  */
insert into MEMBER_MESSAGE values(1, '임연지', '스스로에게 보내봅니다', SYSDATE);
insert into MEMBER_MESSAGE values(2, '임연지', '옥오빠 안녕', SYSDATE);
insert into MEMBER_MESSAGE values(3, '임연지', '지니요정', SYSDATE);
insert into MEMBER_MESSAGE values(4, '임연지', '냥냥이', SYSDATE);
insert into MEMBER_MESSAGE values(5, '임연지', '수재', SYSDATE);
insert into MEMBER_MESSAGE values(6, '임연지', '우진', SYSDATE);

/* 팔로잉 */
insert into FOLLOW values(1, 2,'follower');
insert into FOLLOW values(1, 2,'following');
insert into FOLLOW values(1, 3,'follower');
insert into FOLLOW values(1, 3,'following');
insert into FOLLOW values(1, 4,'follower');
insert into FOLLOW values(1, 5,'following');

insert into FOLLOW values(2, 1,'follower');
insert into FOLLOW values(2, 3,'following');
insert into FOLLOW values(2, 3,'follower');
insert into FOLLOW values(2, 4,'following');
insert into FOLLOW values(2, 5,'follower');
insert into FOLLOW values(2, 6,'following');

insert into FOLLOW values(3, 1,'follower');
insert into FOLLOW values(3, 2,'following');
insert into FOLLOW values(3, 2,'follower');
insert into FOLLOW values(3, 4,'following');
insert into FOLLOW values(3, 5,'follower');
insert into FOLLOW values(3, 6,'following');

insert into FOLLOW values(4, 1,'follower');
insert into FOLLOW values(4, 2,'following');
insert into FOLLOW values(4, 3,'follower');
insert into FOLLOW values(4, 5,'following');
insert into FOLLOW values(4, 5,'follower');
insert into FOLLOW values(4, 6,'following');

insert into FOLLOW values(5, 1,'follower');
insert into FOLLOW values(5, 2,'following');
insert into FOLLOW values(5, 3,'follower');
insert into FOLLOW values(5, 4,'following');
insert into FOLLOW values(5, 6,'follower');
insert into FOLLOW values(5, 6,'following');

insert into FOLLOW values(6, 1,'follower');
insert into FOLLOW values(6, 2,'following');
insert into FOLLOW values(6, 3,'follower');
insert into FOLLOW values(6, 4,'following');
insert into FOLLOW values(6, 5,'follower');
insert into FOLLOW values(6, 5,'following');

/* 마이페이지 */
/* 이거는 로컬경로 있어야 하니까, 나중에 insert 폼 생기면 그때 넣어보는게 좋을듯 */

/* 카테고리 */
INSERT INTO CATGO VALUES (1, '옷');
INSERT INTO CATGO VALUES (2, '방석');
INSERT INTO CATGO VALUES (3, '사료');
INSERT INTO CATGO VALUES (4, '하네스');
INSERT INTO CATGO VALUES (5, '계단');
INSERT INTO CATGO VALUES (6, '카시트');

/* 상품 */
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 1, '겨울 패딩', 12000, '패딩 겨울 대유행', '#BEST', sysdate, 32);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 2, '아늑한 방석', 15900, '아늑한 쿠션 방석', '#편안함', sysdate, 21);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 3, '건강사료', 49900, '영양가득 건강사료', '#건강관리', sysdate, 30);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 4, '산책용 하네스', 5900, '#산책필수품', 'PRODUCT_TAG 4', sysdate, 18);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 5, '심플계단', 19900, '심플한 계단 2단 3단', '#BEST', sysdate, 20);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 6, '베이직 카시트', 19900, '가방 슬링백', '#베이직한 디자인', sysdate, 40);


/* 카트 */
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 1, 1);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 2, 2);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 3, 3);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 4, 4);

/* 찜하기 */
INSERT INTO LIKELIST VALUES (1, 1);
INSERT INTO LIKELIST VALUES (2, 2);
INSERT INTO LIKELIST VALUES (3, 3);
INSERT INTO LIKELIST VALUES (4, 4);

/* 주문 */
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 1, 1);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 2, 2);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 3, 3);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 4, 4);

/* 결제 */
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 1, 210203, '12000', '신용카드', '롯데카드', '서울시 영등포구 문래동', '결제전');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 2, 210208, '15900', '계좌이체', '우리은행', '서울시 마포구 서대문구', '결제완료');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 3, 210201, '49900', '신용카드', '신한카드', '서울시 마포구 신공덕동', '결제완료');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 4, 210103, '19900', '신용카드', '신한카드', '서울시 노원구 공릉동', '결제완료');

/* 게시판구분 */
insert into BOARD_SEP values(1, '공지사항');
insert into BOARD_SEP values(2, '일상이야기');
insert into BOARD_SEP values(3, '상품리뷰');
insert into BOARD_SEP values(4, '산책후기');

/* 게시판 */
insert into BOARD values(board_seq.nextval,1,1,'임연지','공지사항1','공지내용1입니다~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'임연지','공지사항2','공지내용2입니다~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,1,1,'임연지','일상1','일상내용1입니다~~~~',SYSDATE,2,3);
insert into BOARD values(board_seq.nextval,2,1,'임연지','일상2','일상내용2입니다~~~~',SYSDATE,1,0);
insert into BOARD values(board_seq.nextval,1,1,'임연지','상품리뷰1','리뷰내용1입니다~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'임연지','상품리뷰2','리뷰내용2입니다~~~~',SYSDATE,1,1);
insert into BOARD values(board_seq.nextval,1,1,'임연지','상품리뷰1','리뷰내용1입니다~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'임연지','상품리뷰2','리뷰내용2입니다~~~~',SYSDATE,1,1);

/* 댓글 */
insert into BOARD_CMT values(1,1,1,3,'공지읽는중','성진희',SYSDATE);
insert into BOARD_CMT values(2,1,1,2,'일상읽는중','이옥석',SYSDATE);
insert into BOARD_CMT values(3,2,1,3,'리뷰읽는중','성진희',SYSDATE);
insert into BOARD_CMT values(4,1,1,3,'산책읽는중','차지현',SYSDATE);
insert into BOARD_CMT values(1,1,1,5,'공지읽는중','이수진',SYSDATE);
insert into BOARD_CMT values(1,1,1,6,'공지읽는중','최우재',SYSDATE);

/* 산책 */
insert into WALK values(WALK_SEQ.nextval, 4, '차지현', '1','산책모집1','저는 개는 없어요.',SYSDATE,3,'공덕',SYSDATE);
insert into WALK values(WALK_SEQ.nextval, 1, '임연지', 'n','산책모집2','우리 귀요미',SYSDATE,4,'제주',SYSDATE);
insert into WALK values(WALK_SEQ.nextval, 5, '이수진', '1','산책모집3','저는 개는 없어요.',SYSDATE,1,'공덕',SYSDATE);

/* 태그 */
insert into WALK_TAG values(1,'인덱스1');
insert into WALK_TAG values(1,'인덱스2');
insert into WALK_TAG values(2,'인덱스1');
insert into WALK_TAG values(2,'인덱스2');
insert into WALK_TAG values(3,'인덱스1');
insert into WALK_TAG values(3,'인덱스2');


/* 산책사진 */

/* 마이페이지 */
insert into PET_MYPAGE values(1,'쿠키','female','2020-02-15','서귀포',3000,null,null,0);
insert into PET_MYPAGE values(3,'덕자','female','2020-09-06','여주',5000,null,null,0);

/* 산책댓글 */
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,1,'임연지','댓글1입니다',SYSDATE);
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,2,'차지현','댓글2입니다',SYSDATE);
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,3,'성진희','댓글3입니다',SYSDATE);

/*산책조인*/
insert into WALK_JOIN values(1,1);
insert into WALK_JOIN values(1,2);
insert into WALK_JOIN values(2,1);
insert into WALK_JOIN values(2,2);
insert into WALK_JOIN values(3,1);
insert into WALK_JOIN values(3,2);

/* 태그 */
insert into TAG values(1, 1,'안녕');
insert into TAG values(1, 2,'안녕');
insert into TAG values(2, 1,'안녕');
insert into TAG values(2, 2,'안녕');
insert into TAG values(3, 1,'안녕');

/* 주문 */
insert into ORDERLIST 








