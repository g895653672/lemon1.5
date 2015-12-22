

ALTER TABLE PARTY_STRUCT_RULE DROP FOREIGN KEY FK_PARTY_STRUCT_RULE_TYPE;
ALTER TABLE PARTY_STRUCT_RULE DROP FOREIGN KEY FK_PARTY_STRUCT_RULE_TYPE_PARENT;
ALTER TABLE PARTY_STRUCT_RULE DROP FOREIGN KEY FK_PARTY_STRUCT_RULE_TYPE_CHILD;
ALTER TABLE PARTY_STRUCT_RULE DROP PRIMARY KEY;

ALTER TABLE PARTY_STRUCT_RULE DROP FOREIGN KEY FK_PARTY_STRUCT_RULE_DIM;
ALTER TABLE PARTY_STRUCT_RULE DROP COLUMN DIM_ID;
ALTER TABLE PARTY_STRUCT_RULE CHANGE COLUMN PARENT_TYPE_ID PARENT_TYPE_ID BIGINT NULL;
ALTER TABLE PARTY_STRUCT_RULE ADD COLUMN ID BIGINT;
ALTER TABLE PARTY_STRUCT_RULE ADD CONSTRAINT PK_PARTY_STRUCT_RULE PRIMARY KEY(ID);
ALTER TABLE PARTY_STRUCT_RULE MODIFY COLUMN ID BIGINT AUTO_INCREMENT;

ALTER TABLE PARTY_STRUCT_RULE ADD CONSTRAINT FK_PARTY_STRUCT_RULE_TYPE FOREIGN KEY(STRUCT_TYPE_ID) REFERENCES PARTY_STRUCT_TYPE(ID);
ALTER TABLE PARTY_STRUCT_RULE ADD CONSTRAINT FK_PARTY_STRUCT_RULE_TYPE_PARENT FOREIGN KEY(PARENT_TYPE_ID) REFERENCES PARTY_TYPE(ID);
ALTER TABLE PARTY_STRUCT_RULE ADD CONSTRAINT FK_PARTY_STRUCT_RULE_TYPE_CHILD FOREIGN KEY(CHILD_TYPE_ID) REFERENCES PARTY_TYPE(ID);
