
CREATE TABLE BPM_MAIL_TEMPLATE(
	ID BIGINT AUTO_INCREMENT,
	NAME VARCHAR(50),
	SUBJECT VARCHAR(100),
	CONTENT VARCHAR(200),
        CONSTRAINT PK_BPM_MAIL_TEMPLATE PRIMARY KEY(ID)
) ENGINE=INNODB CHARSET=UTF8;

