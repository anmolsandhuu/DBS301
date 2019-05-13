CREATE TABLE MEMBER
(
    MEMBER_ID   NUMBER(10)
                CONSTRAINT member_member_id_pk PRIMARY KEY,
    LAST_NAME   VARCHAR2(25) NOT NULL,
    FIRST_NAME  VARCHAR2(25),
    ADDRESS     VARCHAR2(100),
    CITY        VARCHAR2(30),
    PHONE       VARCHAR2(15),
    JOIN_DATE   DATE DEFAULT SYSDATE
                CONSTRAINT member_join_date_nn NOT NULL
);

CREATE TABLE TITLE
(
    TITLE_ID    NUMBER(10)
                CONSTRAINT title_title_id_pk PRIMARY KEY,
    TITLE       VARCHAR2(60) NOT NULL,
    DESCRIPTION VARCHAR2(400) NOT NULL,
    RATING      VARCHAR(4)
                CONSTRAINT title_rating_ck CHECK
                (rating IN ('G','PG','R','NC17','NR')),
    CATEGORY    VARCHAR2(20) 
                CONSTRAINT title_category_ck CHECK
                (category IN('DRAMA', 'COMEDY', 'ACTION','CHILD','SCIFI','DOCUMENTARY')),
    RELEASE_DATE DATE
);

CREATE TABLE TITLE_COPY
(
    COPY_ID     NUMBER(10),
    TITLE_ID    NUMBER(10)
                CONSTRAINT title_copy_title_id_fk REFERENCES TITLE(TITLE_ID),
    STATUS      VARCHAR2(15) NOT NULL
                CONSTRAINT title_copy_status_ck CHECK (status IN('AVAILABLE','DESTROYED','RENTED','RESERVED')),
    
    CONSTRAINT title_copy_copy_id_title_id_pk PRIMARY KEY(COPY_ID,TITLE_ID)
);







CREATE SEQUENCE MEMBER_ID_SEQ
START WITH 101
NOCACHE;

CREATE SEQUENCE TITLE_ID_SEQ
START WITH 92
NOCACHE;

SELECT sequence_name, increment_by, last_number
FROM USER_SEQUENCES
WHERE sequence_name IN('MEMBER_ID_SEQ','TITLE_ID_SEQ');


