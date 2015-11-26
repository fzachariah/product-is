IF NOT  EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[IDN_AUTH_SESSION_STORE]') AND TYPE IN (N'U'))
CREATE TABLE IDN_AUTH_SESSION_STORE (
        SESSION_ID VARCHAR (100) DEFAULT NULL,
        SESSION_TYPE VARCHAR(100) DEFAULT NULL,
        SESSION_OBJECT VARBINARY(MAX),
        TIME_CREATED DATETIME,
        PRIMARY KEY (SESSION_ID, SESSION_TYPE)
);

UPDATE IDP_AUTHENTICATOR SET NAME='samlsso' WHERE NAME = 'saml2sso' AND TENANT_ID = '-1234';