
CREATE TABLE PARTY_DIM(
        ID BIGINT AUTO_INCREMENT,
        NAME VARCHAR(50),
	PRIORITY INTEGER,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_PARTY_DIM PRIMARY KEY(ID)
) ENGINE=INNODB CHARSET=UTF8;
