/* ��� */
insert into MEMBER values(1, 'aaaa@naver.com', 'bit1111', '�ӿ���', '���ֽ� �ȴ���',SYSDATE);
insert into MEMBER values(2, 'bbbb@gmail.com', 'bit2222', '�̿���', '����� ��걸',SYSDATE);
insert into MEMBER values(3, 'cccc@naver.com', 'bit3333', '������', '����� ������',SYSDATE);
insert into MEMBER values(4, 'dddd@naver.com', 'bit4444', '������', '����� ������',SYSDATE);
insert into MEMBER values(5, 'eeee@daum.com', 'bit5555', '�̼���', '��⵵ ��õ��',SYSDATE);
insert into MEMBER values(6, 'ffff@gmail.com', 'bit6666', '�ֿ���', '����� ��������',SYSDATE);

/* �޼���  */
insert into MEMBER_MESSAGE values(1, '�ӿ���', '�����ο��� �������ϴ�', SYSDATE);
insert into MEMBER_MESSAGE values(2, '�ӿ���', '������ �ȳ�', SYSDATE);
insert into MEMBER_MESSAGE values(3, '�ӿ���', '���Ͽ���', SYSDATE);
insert into MEMBER_MESSAGE values(4, '�ӿ���', '�ɳ���', SYSDATE);
insert into MEMBER_MESSAGE values(5, '�ӿ���', '����', SYSDATE);
insert into MEMBER_MESSAGE values(6, '�ӿ���', '����', SYSDATE);

/* �ȷ��� */
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

/* ���������� */
/* �̰Ŵ� ���ð�� �־�� �ϴϱ�, ���߿� insert �� ����� �׶� �־�°� ������ */

/* ī�װ� */
INSERT INTO CATGO VALUES (1, '��');
INSERT INTO CATGO VALUES (2, '�漮');
INSERT INTO CATGO VALUES (3, '���');
INSERT INTO CATGO VALUES (4, '�ϳ׽�');
INSERT INTO CATGO VALUES (5, '���');
INSERT INTO CATGO VALUES (6, 'ī��Ʈ');

/* ��ǰ */
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 1, '�ܿ� �е�', 12000, '�е� �ܿ� ������', '#BEST', sysdate, 32);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 2, '�ƴ��� �漮', 15900, '�ƴ��� ��� �漮', '#�����', sysdate, 21);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 3, '�ǰ����', 49900, '���簡�� �ǰ����', '#�ǰ�����', sysdate, 30);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 4, '��å�� �ϳ׽�', 5900, '#��å�ʼ�ǰ', 'PRODUCT_TAG 4', sysdate, 18);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 5, '���ð��', 19900, '������ ��� 2�� 3��', '#BEST', sysdate, 20);
INSERT INTO PRODUCT VALUES (PRODUCT_SEQ.NEXTVAL, 6, '������ ī��Ʈ', 19900, '���� ������', '#�������� ������', sysdate, 40);


/* īƮ */
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 1, 1);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 2, 2);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 3, 3);
INSERT INTO CART VALUES (CART_SEQ.NEXTVAL, 4, 4);

/* ���ϱ� */
INSERT INTO LIKELIST VALUES (1, 1);
INSERT INTO LIKELIST VALUES (2, 2);
INSERT INTO LIKELIST VALUES (3, 3);
INSERT INTO LIKELIST VALUES (4, 4);

/* �ֹ� */
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 1, 1);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 2, 2);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 3, 3);
INSERT INTO ORDERLIST VALUES (ORDERLIST_SEQ.NEXTVAL, 4, 4);

/* ���� */
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 1, 210203, '12000', '�ſ�ī��', '�Ե�ī��', '����� �������� ������', '������');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 2, 210208, '15900', '������ü', '�츮����', '����� ������ ���빮��', '�����Ϸ�');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 3, 210201, '49900', '�ſ�ī��', '����ī��', '����� ������ �Ű�����', '�����Ϸ�');
INSERT INTO PAY VALUES (PAY_SEQ.NEXTVAL, 4, 210103, '19900', '�ſ�ī��', '����ī��', '����� ����� ������', '�����Ϸ�');

/* �Խ��Ǳ��� */
insert into BOARD_SEP values(1, '��������');
insert into BOARD_SEP values(2, '�ϻ��̾߱�');
insert into BOARD_SEP values(3, '��ǰ����');
insert into BOARD_SEP values(4, '��å�ı�');

/* �Խ��� */
insert into BOARD values(board_seq.nextval,1,1,'�ӿ���','��������1','��������1�Դϴ�~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'�ӿ���','��������2','��������2�Դϴ�~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,1,1,'�ӿ���','�ϻ�1','�ϻ󳻿�1�Դϴ�~~~~',SYSDATE,2,3);
insert into BOARD values(board_seq.nextval,2,1,'�ӿ���','�ϻ�2','�ϻ󳻿�2�Դϴ�~~~~',SYSDATE,1,0);
insert into BOARD values(board_seq.nextval,1,1,'�ӿ���','��ǰ����1','���䳻��1�Դϴ�~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'�ӿ���','��ǰ����2','���䳻��2�Դϴ�~~~~',SYSDATE,1,1);
insert into BOARD values(board_seq.nextval,1,1,'�ӿ���','��ǰ����1','���䳻��1�Դϴ�~~~~',SYSDATE,3,5);
insert into BOARD values(board_seq.nextval,2,1,'�ӿ���','��ǰ����2','���䳻��2�Դϴ�~~~~',SYSDATE,1,1);

/* ��� */
insert into BOARD_CMT values(1,1,1,3,'�����д���','������',SYSDATE);
insert into BOARD_CMT values(2,1,1,2,'�ϻ��д���','�̿���',SYSDATE);
insert into BOARD_CMT values(3,2,1,3,'�����д���','������',SYSDATE);
insert into BOARD_CMT values(4,1,1,3,'��å�д���','������',SYSDATE);
insert into BOARD_CMT values(1,1,1,5,'�����д���','�̼���',SYSDATE);
insert into BOARD_CMT values(1,1,1,6,'�����д���','�ֿ���',SYSDATE);

/* ��å */
insert into WALK values(WALK_SEQ.nextval, 4, '������', '1','��å����1','���� ���� �����.',SYSDATE,3,'����',SYSDATE);
insert into WALK values(WALK_SEQ.nextval, 1, '�ӿ���', 'n','��å����2','�츮 �Ϳ��',SYSDATE,4,'����',SYSDATE);
insert into WALK values(WALK_SEQ.nextval, 5, '�̼���', '1','��å����3','���� ���� �����.',SYSDATE,1,'����',SYSDATE);

/* �±� */
insert into WALK_TAG values(1,'�ε���1');
insert into WALK_TAG values(1,'�ε���2');
insert into WALK_TAG values(2,'�ε���1');
insert into WALK_TAG values(2,'�ε���2');
insert into WALK_TAG values(3,'�ε���1');
insert into WALK_TAG values(3,'�ε���2');


/* ��å���� */

/* ���������� */
insert into PET_MYPAGE values(1,'��Ű','female','2020-02-15','������',3000,null,null,0);
insert into PET_MYPAGE values(3,'����','female','2020-09-06','����',5000,null,null,0);

/* ��å��� */
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,1,'�ӿ���','���1�Դϴ�',SYSDATE);
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,2,'������','���2�Դϴ�',SYSDATE);
insert into WALK_CMT values(WALK_CMT_SEQ.nextval,3,'������','���3�Դϴ�',SYSDATE);

/*��å����*/
insert into WALK_JOIN values(1,1);
insert into WALK_JOIN values(1,2);
insert into WALK_JOIN values(2,1);
insert into WALK_JOIN values(2,2);
insert into WALK_JOIN values(3,1);
insert into WALK_JOIN values(3,2);

/* �±� */
insert into TAG values(1, 1,'�ȳ�');
insert into TAG values(1, 2,'�ȳ�');
insert into TAG values(2, 1,'�ȳ�');
insert into TAG values(2, 2,'�ȳ�');
insert into TAG values(3, 1,'�ȳ�');

/* �ֹ� */
insert into ORDERLIST 








