

-------------------------------------------------------------------------------
--  form schema
-------------------------------------------------------------------------------
CREATE TABLE Form_SCHEMA(
        ID BIGINT AUTO_INCREMENT,
	CODE VARCHAR(50),
        NAME VARCHAR(50),
        TYPE VARCHAR(200),
	READ_ONLY INTEGER,
	NOT_NULL INTEGER,
	UNIQUE_CONSTRAINT INTEGER,
	VALIDATOR VARCHAR(200),
	CONVERSION_PATTERN VARCHAR(200),
	MULTIPLE INTEGER,
	ENUMERATION_KEYS VARCHAR(200),
	ENUMERATION_VALUES VARCHAR(200),
	FORM_TEMPLATE_ID BIGINT,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_FORM_SCHEMA PRIMARY KEY(ID),
        CONSTRAINT FK_FORM_SCHEMA_TEMPLATE FOREIGN KEY(FORM_TEMPLATE_ID) REFERENCES FORM_TEMPLATE(ID)
) ENGINE=INNODB CHARSET=UTF8;

