-- CREATE TABLES
-- REFERENCE TABLES
DROP TABLE IF EXISTS REFDATA_APPLICATIONS CASCADE;
CREATE TABLE REFDATA_APPLICATIONS
(
    APP_GUID               CHAR(38) DEFAULT GEN_RANDOM_UUID() NOT NULL,
    APPLICATION_CUSTOMCODE VARCHAR(15),
    APPLICATION_DESC       VARCHAR(50),
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    CREATED_DATE           TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID              VARCHAR(10) DEFAULT 'Active',
    VENDOR_ID              CHAR(38),
    INDUSTRY_OID           VARCHAR(49),
    ORGANIZATION_GUID      VARCHAR(38),
    PRIMARY KEY (APP_GUID)
);

DROP TABLE IF EXISTS REFDATA_CODESETS CASCADE;
CREATE TABLE REFDATA_CODESETS
(
    CODESETS_ID        CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    CODESET_NAME       VARCHAR(50),
    INDUSTRY_STD       VARCHAR(6),
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    FIELD_MAPPING      VARCHAR(40),
    SENSITIVITYFLAG_ID VARCHAR(5)  DEFAULT 'UNDF',
    EXTERNALTABLE_ID   VARCHAR(20),
    EXTERNAL_NOTES     VARCHAR(149),
    EXTERNAL_LINK      VARCHAR(99),
    PRIMARY KEY (CODESETS_ID)
);

DROP TABLE IF EXISTS REFDATA_DATAATTRIBUTES CASCADE;
CREATE TABLE REFDATA_DATAATTRIBUTES
(
    DATAATTRIBUTE_ID   CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATAATTRIBUTE_NAME VARCHAR(50),
    SENSITIVITYFLAG_ID VARCHAR(5)  DEFAULT 'UNDF',
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    CREATED_USER       VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID CHAR(38),
    ATTRIBUTE_TYPE     VARCHAR(10),
    PRIMARY KEY (DATAATTRIBUTE_ID)
);

DROP TABLE IF EXISTS PLATFORM_DATASTRUCTURES CASCADE;
DROP TABLE IF EXISTS REFDATA_DATASTRUCTURES CASCADE;
CREATE TABLE REFDATA_DATASTRUCTURES
(
    DATASTRUCTURE_ID   CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATASTRUCTURE_NAME VARCHAR(50),
    SENSITIVITYFLAG_ID VARCHAR(5)  DEFAULT 'UNDF',
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID CHAR(38),
    PRIMARY KEY (DATASTRUCTURE_ID)
);

DROP TABLE IF EXISTS REFDATA_DEVICETYPES CASCADE;
CREATE TABLE REFDATA_DEVICETYPES
(
    DEVICETYPE_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DEVICETYPE    VARCHAR(30),
    CREATED_DATE  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER  VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID     VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (DEVICETYPE_ID)
);

DROP TABLE IF EXISTS REFDATA_INDUSTRYSTDS_EVENTTYPES CASCADE;
CREATE TABLE REFDATA_INDUSTRYSTDS_EVENTTYPES
(
    EVENTTYPE_ID   VARCHAR(10) NOT NULL,
    EVENTTYPE_DESC VARCHAR(30),
    INDUSTRY_STD   VARCHAR(6),
    CREATED_DATE   TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID      VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (EVENTTYPE_ID)
);

DROP TABLE IF EXISTS REFDATA_INDUSTRIES CASCADE;
CREATE TABLE REFDATA_INDUSTRIES
(
    INDUSTRY_ID   CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    INDUSTRY_NAME VARCHAR(45),
    CREATED_DATE  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
     CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID     VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (INDUSTRY_ID)
);

DROP TABLE IF EXISTS REFDATA_INDUSTRIES_BUSINESS CASCADE;
CREATE TABLE REFDATA_INDUSTRIES_BUSINESS
(
    INDUSTRYTOBUSINESS_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    INDUSTRY_ID           CHAR(38),
    BUSINESS_AREA         VARCHAR(50),
    CREATED_DATE          TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
     CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID             VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (INDUSTRYTOBUSINESS_ID)
);

DROP TABLE IF EXISTS REFDATA_INDUSTRYSTDS CASCADE;
CREATE TABLE REFDATA_INDUSTRYSTDS
(
    INDUSTRY_STD     VARCHAR(6) NOT NULL,
    INDUSTRYSTD_DESC VARCHAR(30),
    CREATED_DATE     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID        VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (INDUSTRY_STD)
);

DROP TABLE IF EXISTS REFDATA_LEGALENTITIES CASCADE;
CREATE TABLE REFDATA_LEGALENTITIES
(
    LEGALENTITY_GUID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    LOCATION_NAME    VARCHAR(50),
    ADDRESS          VARCHAR(75),
    CITY             VARCHAR(60),
    STATE_ID         VARCHAR(2),
    ZIPCODE          VARCHAR(12),
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID        VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP NOT NULL,
    LOCATION_URL     VARCHAR(99),
    LOCATION_PHONE   VARCHAR(12),
    PRIMARY KEY (LEGALENTITY_GUID)
);

DROP TABLE IF EXISTS REFDATA_OPERATIONTYPES CASCADE;
CREATE TABLE REFDATA_OPERATIONTYPES
(
    OPERATIONTYPE_ID   VARCHAR(10) NOT NULL,
    OPERATIONTYPE_NAME VARCHAR(60),
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (OPERATIONTYPE_ID)
);

DROP TABLE IF EXISTS REFDATA_ORGANIZATIONS CASCADE;
CREATE TABLE REFDATA_ORGANIZATIONS
(
    ORGANIZATION_GUID          CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    ORGANIZATION_INTERNAL_CODE VARCHAR(10),
    ORGANIZATION_INTERNAL_ID   VARCHAR(10),
    ORGANIZATION_NAME          VARCHAR(50),
    ADDRESS                    VARCHAR(75),
    CITY                       VARCHAR(60),
    STATE_ID                   VARCHAR(2),
    ZIPCODE                    VARCHAR(12),
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID                  VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE               TIMESTAMP   DEFAULT CURRENT_TIMESTAMP NOT NULL,
    LEGALENTITY_GUID           CHAR(38),
    PRIMARY KEY (ORGANIZATION_GUID)
);

DROP TABLE IF EXISTS REFDATA_PROFESSIONTYPES CASCADE;
CREATE TABLE REFDATA_PROFESSIONTYPES
(
    PROFESSIONTYPE_ID   CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    PROFESSIONTYPE_NAME VARCHAR(65),
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    CREATED_DATE        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID           VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (PROFESSIONTYPE_ID)
);

DROP TABLE IF EXISTS REFDATA_RULESETS CASCADE;
CREATE TABLE REFDATA_RULESETS
(
    RULE_ID         CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    RULE_NAME       VARCHAR(65),
    CREATED_USER    VARCHAR(20) DEFAULT 'Platform',
    CREATED_DATE    TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID       VARCHAR(10) DEFAULT 'Active',
    EXPIRATION_DATE TIMESTAMP,
    PRIMARY KEY (RULE_ID)
);

DROP TABLE IF EXISTS REFDATA_SENSITIVITYFLAGS CASCADE;
CREATE TABLE REFDATA_SENSITIVITYFLAGS
(
    SENSITIVITYFLAG_ID   VARCHAR(5) NOT NULL,
    SENSITIVITYFLAG_DESC VARCHAR(50),
    CREATED_DATE         TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID            VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (SENSITIVITYFLAG_ID)
);

DROP TABLE IF EXISTS REFDATA_STATUS CASCADE;
CREATE TABLE REFDATA_STATUS
(
    STATUS_ID          VARCHAR(10) NOT NULL,
    STATUS_DESCRIPTION VARCHAR(45) NOT NULL,
    CREATED_DATE       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    PRIMARY KEY (STATUS_ID)
);

DROP TABLE IF EXISTS REFDATA_TERMINOLOGYSTDS CASCADE;
CREATE TABLE REFDATA_TERMINOLOGYSTDS
(
    TERMINOLOGY_STD        VARCHAR(25) NOT NULL,
    TERMINOLOGYSTD_VERSION VARCHAR(10) NOT NULL,
    TERMINOLOGYSTD_DESC    VARCHAR(129),
    CREATED_DATE           TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID              VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (TERMINOLOGY_STD)
);

DROP TABLE IF EXISTS REFDATA_TIMEZONES CASCADE;
CREATE TABLE REFDATA_TIMEZONES
(
    TIMEZONE_ID   VARCHAR(3) NOT NULL,
    TIMEZONE_DESC VARCHAR(25),
    CREATED_DATE  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID     VARCHAR(10) DEFAULT 'Active',
    PRIMARY KEY (TIMEZONE_ID)
);

DROP TABLE IF EXISTS REFDATA_USSTATES CASCADE;
CREATE TABLE REFDATA_USSTATES
(
    STATE_ID          VARCHAR(2) NOT NULL,
    STATE_DESCRIPTION VARCHAR(65),
    LATTITUDE         VARCHAR(12),
    LONGITUDE         VARCHAR(12),
    CREATED_DATE      TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID         VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    PRIMARY KEY (STATE_ID)
);

DROP TABLE IF EXISTS REFDATA_VENDORS CASCADE;
CREATE TABLE REFDATA_VENDORS
(
    VENDOR_ID    CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    VENDOR_NAME  VARCHAR(50),
    CREATED_DATE TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID    VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    PRIMARY KEY (VENDOR_ID)
);

ALTER TABLE REFDATA_APPLICATIONS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_APPLICATIONS
    ADD FOREIGN KEY (VENDOR_ID)
        REFERENCES REFDATA_VENDORS (VENDOR_ID);

ALTER TABLE REFDATA_APPLICATIONS
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE REFDATA_CODESETS
    ADD FOREIGN KEY (INDUSTRY_STD)
        REFERENCES REFDATA_INDUSTRYSTDS (INDUSTRY_STD);

ALTER TABLE REFDATA_CODESETS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_CODESETS
    ADD FOREIGN KEY (SENSITIVITYFLAG_ID)
        REFERENCES REFDATA_SENSITIVITYFLAGS (SENSITIVITYFLAG_ID);

ALTER TABLE REFDATA_DATAATTRIBUTES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_DATAATTRIBUTES
    ADD FOREIGN KEY (SENSITIVITYFLAG_ID)
        REFERENCES REFDATA_SENSITIVITYFLAGS (SENSITIVITYFLAG_ID);

ALTER TABLE REFDATA_DATAATTRIBUTES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE REFDATA_DATASTRUCTURES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_DATASTRUCTURES
    ADD FOREIGN KEY (SENSITIVITYFLAG_ID)
        REFERENCES REFDATA_SENSITIVITYFLAGS (SENSITIVITYFLAG_ID);

ALTER TABLE REFDATA_DATASTRUCTURES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE REFDATA_DEVICETYPES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_INDUSTRYSTDS_EVENTTYPES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_INDUSTRYSTDS_EVENTTYPES
    ADD FOREIGN KEY (INDUSTRY_STD)
        REFERENCES REFDATA_INDUSTRYSTDS (INDUSTRY_STD);

ALTER TABLE REFDATA_INDUSTRIES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_INDUSTRIES_BUSINESS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_INDUSTRIES_BUSINESS
    ADD FOREIGN KEY (INDUSTRY_ID)
        REFERENCES REFDATA_INDUSTRIES (INDUSTRY_ID);

ALTER TABLE REFDATA_INDUSTRYSTDS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_LEGALENTITIES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_LEGALENTITIES
    ADD FOREIGN KEY (STATE_ID)
        REFERENCES REFDATA_USSTATES (STATE_ID);

ALTER TABLE REFDATA_OPERATIONTYPES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_ORGANIZATIONS
    ADD FOREIGN KEY (LEGALENTITY_GUID)
        REFERENCES REFDATA_LEGALENTITIES (LEGALENTITY_GUID);

ALTER TABLE REFDATA_ORGANIZATIONS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_ORGANIZATIONS
    ADD FOREIGN KEY (STATE_ID)
        REFERENCES REFDATA_USSTATES (STATE_ID);

ALTER TABLE REFDATA_PROFESSIONTYPES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_RULESETS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_SENSITIVITYFLAGS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_TERMINOLOGYSTDS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_TIMEZONES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_USSTATES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE REFDATA_VENDORS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

-- DATAMODEL
DROP TABLE IF EXISTS DATAMODEL_APIS CASCADE;
CREATE TABLE DATAMODEL_APIS
(
    API_ID             CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    TECHNOLOGY         VARCHAR(30),
    DATAATTRIBUTE_ID   CHAR(38),
    BASEURLLOCATION    VARCHAR(99),
    APINAME            VARCHAR(79),
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    PURPOSE            VARCHAR(49),
    DATMODEL_TABLENAME VARCHAR(99),
    APIPARAMS          VARCHAR(59),
    APIEXAMPLE         VARCHAR(149),
    PRIMARY KEY (API_ID)
);

ALTER TABLE DATAMODEL_APIS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS DATAMODEL_DOMAINS CASCADE;
CREATE TABLE DATAMODEL_DOMAINS
(
    DOMAINNAME        VARCHAR(64) NOT NULL,
    DOMAININFORMATION VARCHAR(249),
    STATUS_ID         VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE      TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    PRIMARY KEY (DOMAINNAME)
);

ALTER TABLE DATAMODEL_DOMAINS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS DATAMODEL_DATATABLES CASCADE;
CREATE TABLE DATAMODEL_DATATABLES
(
    TABLENAME        VARCHAR(64) NOT NULL,
    TABLEINFORMATION VARCHAR(249),
    STATUS_ID        VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE     TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER     VARCHAR(20) DEFAULT 'Platform',
    DATADOMAIN       VARCHAR(64),
    PRIMARY KEY (TABLENAME)
);

ALTER TABLE DATAMODEL_DATATABLES
    ADD FOREIGN KEY (DATADOMAIN)
        REFERENCES DATAMODEL_DOMAINS (DOMAINNAME);

ALTER TABLE DATAMODEL_DATATABLES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

-- DATATIER
DROP TABLE IF EXISTS DATATIER_CRAWLERS CASCADE;
CREATE TABLE DATATIER_CRAWLERS
(
    DATACRAWLER_ID      BIGSERIAL,
    TOKEN               CHAR(128),
    CRAWLEDTEXT_DETAILS TEXT,
    CREATED_DATE        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID           VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID  CHAR(38),
    ORGANIZATION_GUID   CHAR(38),
    PRIMARY KEY (DATACRAWLER_ID)
);

ALTER TABLE DATATIER_CRAWLERS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE DATATIER_CRAWLERS
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE DATATIER_CRAWLERS
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

DROP TABLE IF EXISTS DATATIER_SDP_DATAATTRIBUTES CASCADE;
CREATE TABLE DATATIER_SDP_DATAATTRIBUTES
(
    DATATIER_ID        BIGSERIAL,
    BASEVALUE          VARCHAR(99),
    SUPPORTINGVALUE1   VARCHAR(169),
    SUPPORTINGVALUE2   VARCHAR(50),
    SUPPORTINGVALUE3   VARCHAR(50),
    SUPPORTINGVALUE4   VARCHAR(50),
    SUPPORTINGVALUE5   VARCHAR(50),
    SUPPORTINGVALUE6   VARCHAR(50),
    SUPPORTINGVALUE7   VARCHAR(50),
    CREATED_DATE       TIMESTAMP,
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    DATAATTRIBUTE_ID   CHAR(38),
    CREATED_USER       VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID CHAR(38),
    DATAGENTYPE_ID     INTEGER,
    PRIMARY KEY (DATATIER_ID)
);

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

DROP TABLE IF EXISTS DATATIER_SDP_DATAATTRIBUTES_METADATA CASCADE;
CREATE TABLE IF NOT EXISTS DATATIER_SDP_DATAATTRIBUTES_METADATA
(
    SDP_DATAATTRIBUTE_METADATA_ID SERIAL,
    DATAATTRIBUTE_PARAM VARCHAR(99),
    DATAATTRIBUTE_VALUE VARCHAR(169),
    CREATED_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID VARCHAR(10) DEFAULT 'Active',
    DATAATTRIBUTE_ID CHAR(38),
    CREATED_USER   VARCHAR(20) DEFAULT 'Platform',
    DATAATTRIBUTE_GUID CHAR(38),
    REGISTEREDAPP_GUID CHAR(38),
    PRIMARY KEY(SDP_DATAATTRIBUTE_ID)
    );

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES_METADATA
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES_METADATA
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE DATATIER_SDP_DATAATTRIBUTES_METADATA
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);


DROP TABLE IF EXISTS DATATIER_SDP_DATASTRUCTURES CASCADE;
CREATE TABLE DATATIER_SDP_DATASTRUCTURES
(
    DATASTRUCTURE_CORE_ID BIGSERIAL,
    DATASTRUCTURE_NAME    VARCHAR(29),
    DATASTRUCTURE_ID      VARCHAR(38),
    DATASTRUCTURE_DETAILS TEXT,
    CREATED_DATE          TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    STATUS_ID             VARCHAR(10) DEFAULT 'Active',
    REGISTEREDAPP_GUID    CHAR(38),
    PRIMARY KEY (DATASTRUCTURE_CORE_ID)
);

ALTER TABLE DATATIER_SDP_DATASTRUCTURES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE DATATIER_SDP_DATASTRUCTURES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE DATATIER_SDP_DATASTRUCTURES
    ADD FOREIGN KEY (DATASTRUCTURE_ID)
        REFERENCES REFDATA_DATASTRUCTURES (DATASTRUCTURE_ID);

DROP TABLE IF EXISTS DATATIER_TOKENS;
CREATE TABLE DATATIER_TOKENS
(
    DATATOKEN_ID       BIGSERIAL,
    TOKEN              CHAR(128),
    CREATED_DATE       TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID          VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID CHAR(38),
    ORGANIZATION_GUID  CHAR(38),
    INTFC_TYPE         VARCHAR(10) DEFAULT 'API',
    DATASOURCE_ID      CHAR(38),
    PRIMARY KEY (DATATOKEN_ID)
);

ALTER TABLE DATATIER_TOKENS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE DATATIER_TOKENS
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE DATATIER_TOKENS
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

-- PLATFORM

DROP TABLE IF EXISTS PLATFORM_CODESETS CASCADE;
CREATE TABLE PLATFORM_CODESETS
(
    PLATFORM_CODESET_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    APPLICATION_GUID    CHAR(38),
    ORGANIZATION_GUID   CHAR(38),
    CODESETS_ID         CHAR(38),
    CREATED_DATE        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID           VARCHAR(10) DEFAULT 'Active',
    CREATED_USER        VARCHAR(20) DEFAULT 'Platform',
    ORIGINALCODE_VALUE  VARCHAR(40),
    ORIGINALCODE_DESC   VARCHAR(149),
    PRIMARY KEY (CODESETS_ID)
);

ALTER TABLE PLATFORM_CODESETS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE PLATFORM_CODESETS
    ADD FOREIGN KEY (CODESETS_ID)
        REFERENCES REFDATA_CODESETS (CODESETS_ID);

DROP TABLE IF EXISTS PLATFORM_CODESETS_INDUSTRYSTDS;
CREATE TABLE PLATFORM_CODESETS_INDUSTRYSTDS
(
    TERMCODESET_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    CREATED_DATE   TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID      VARCHAR(10) DEFAULT 'Active',
    CUI            VARCHAR(8) NULL,
    LAT            VARCHAR(3) NULL,
    TS             VARCHAR(1) NULL,
    LUI            VARCHAR(10) NULL,
    STT            VARCHAR(3) NULL,
    SUI            VARCHAR(10) NULL,
    ISPREF         VARCHAR(1) NULL,
    AUI            VARCHAR(9) NULL,
    SAUI           VARCHAR(50) NULL,
    SCUI           VARCHAR(50) NULL,
    SDUI           VARCHAR(50) NULL,
    SAB            VARCHAR(25) NULL,
    TTY            VARCHAR(20) NULL,
    CODE           VARCHAR(50) NULL,
    STR            TEXT NULL,
    SRL            INT NULL,
    SUPPRESS       VARCHAR(1) NULL,
    CVF            INT NULL,
    PRIMARY KEY (TERMCODESET_ID)
);

ALTER TABLE PLATFORM_CODESETS_INDUSTRYSTDS
    ADD FOREIGN KEY (SAB)
        REFERENCES REFDATA_TERMINOLOGYSTDS (TERMINOLOGY_STD);

ALTER TABLE PLATFORM_CODESETS_INDUSTRYSTDS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_CODESETS_XMAPS CASCADE;
CREATE TABLE PLATFORM_CODESETS_XMAPS
(
    CODESETCROSSMAP_ID  CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    APPLICATION_GUID    CHAR(38),
    ORGANIZATION_GUID   CHAR(38),
    TERMINOLOGYSTD_FROM CHAR(38),
    TERMINOLOGYSTD_TO   CHAR(38),
    CREATED_DATE        TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID           VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    TRANSFORMCODE_VALUE VARCHAR(40),
    TRANSFORMCODE_DESC  VARCHAR(129),
    ORIGINALCODE_VALUE  VARCHAR(40),
    ORIGINALCODE_DESC   VARCHAR(129),
    PRIMARY KEY (CODESETCROSSMAP_ID)
);
ALTER TABLE PLATFORM_CODESETS_XMAPS
    ADD FOREIGN KEY (APPLICATION_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_CODESETS_XMAPS
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_CODESETS_XMAPS
    ADD FOREIGN KEY (TERMINOLOGYSTD_FROM)
        REFERENCES REFDATA_CODESETS (CODESETS_ID);

ALTER TABLE PLATFORM_CODESETS_XMAPS
    ADD FOREIGN KEY (TERMINOLOGYSTD_TO)
        REFERENCES REFDATA_CODESETS (CODESETS_ID);

ALTER TABLE PLATFORM_CODESETS_XMAPS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_DATAGENERATION_DATAATTRIBUTES CASCADE;
CREATE TABLE PLATFORM_DATAGENERATION_DATAATTRIBUTES
(
    DATAGENTYPE_ID          CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATAGENTYPE_DESCRIPTION VARCHAR(65),
    DEFINITION              VARCHAR(255),
    DATAATTRIBUTE_ID        CHAR(38),
    CREATED_DATE            TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID               VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    QUANTITY                INTEGER,
    MAXRECORDS_IN_SOURCE    INTEGER,
    REGISTEREDAPP_GUID      CHAR(38),
    ORGANIZATION_GUID       CHAR(38),
    PRIMARY KEY (DATAGENTYPE_ID)
);

ALTER TABLE PLATFORM_DATAGENERATION_DATAATTRIBUTES
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

ALTER TABLE PLATFORM_DATAGENERATION_DATAATTRIBUTES
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_DATAGENERATION_DATAATTRIBUTES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_DATAGENERATION_DATAATTRIBUTES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_DATABUILDING_DATAATTRIBUTES CASCADE;
CREATE TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES
(
    DATABUILD_DATAATTRIBUTE_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATABUILD_DESCRIPTION      VARCHAR(65),
    CREATED_DATE               TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    EXPIRATION_DATE            TIMESTAMP,
    STATUS_ID                  VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    QUANTITY                   INTEGER,
    MAXRECORDS_IN_SOURCE       INTEGER,
    REGISTEREDAPP_GUID         CHAR(38),
    ORGANIZATION_GUID          CHAR(38)
        PRIMARY KEY (DATABUILD_DATAATTRIBUTE_ID)
);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL CASCADE;
CREATE TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL
(
    DATABUILD_DATAATTRIBUTE_DTL_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL PRIMARY KEY,
    DATABUILD_DATAATTRIBUTE_ID     VARCHAR(38),
    DATAATTRIBUTE_ID               CHAR(38),
    CREATED_DATE                   TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    EXPIRATION_DATE                TIMESTAMP,
    PARAM_NAME                     VARCHAR(30),
    PARAM_OPERATOR                 VARCHAR(7),
    PARAM_VALUE                    VARCHAR(65),
    STATUS_ID                      VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform'
);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL
    ADD FOREIGN KEY (DATABUILD_DATAATTRIBUTE_ID)
        REFERENCES PLATFORM_DATABUILDING_DATAATTRIBUTES (DATABUILD_DATAATTRIBUTE_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL
    ADD FOREIGN KEY (PARAM_OPERATOR)
        REFERENCES REFDATA_OPERATIONTYPES (OPERATIONTYPE_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATAATTRIBUTES_DTL
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

DROP TABLE IF EXISTS PLATFORM_DATABUILDING_DATASTRUCTURES CASCADE;
CREATE TABLE PLATFORM_DATABUILDING_DATASTRUCTURES
(
    DATABUILD_DATASTRUCTURES_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATABUILD_DESCRIPTION       VARCHAR(65),
    CREATED_DATE                TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    EXPIRATION_DATE             TIMESTAMP,
    STATUS_ID                   VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    QUANTITY                    INTEGER,
    MAXRECORDS_IN_SOURCE        INTEGER,
    REGISTEREDAPP_GUID          CHAR(38),
    ORGANIZATION_GUID           CHAR(38),
    PRIMARY KEY (DATABUILD_DATASTRUCTURES_ID)
);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_DATABUILDING_DATASTRUCTURES_DTL CASCADE;
CREATE TABLE PLATFORM_DATABUILDING_DATASTRUCTURES_DTL
(
    DATABUILD_DATASTRUCTURES_DTL_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL PRIMARY KEY,
    DATABUILD_DATASTRUCTURES_ID     VARCHAR(38),
    DATAATTRIBUTE_ID                CHAR(38),
    CREATED_DATE                    TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    EXPIRATION_DATE                 TIMESTAMP,
    PARAM_NAME                      VARCHAR(30),
    PARAM_OPERATOR                  VARCHAR(7),
    PARAM_VALUE                     VARCHAR(65),
    STATUS_ID                       VARCHAR(10) DEFAULT 'ACTIVE',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform'
);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (DATABUILD_DATASTRUCTURES_ID)
        REFERENCES PLATFORM_DATABUILDING_DATASTRUCTURES (DATABUILD_DATASTRUCTURES_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (PARAM_OPERATOR)
        REFERENCES REFDATA_OPERATIONTYPES (OPERATIONTYPE_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE PLATFORM_DATABUILDING_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

DROP TABLE IF EXISTS PLATFORM_DATASOURCES CASCADE;
CREATE TABLE PLATFORM_DATASOURCES
(
    PLATFORM_DATASOURCES_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATASOURCE_NAME         VARCHAR(50),
    DATASOURCE_TYPE         VARCHAR(10),
    CREATED_DATE            TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID               VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    ORGANIZATION_GUID       CHAR(38),
    REGISTEREDAPP_GUID      CHAR(38),
    PRIMARY KEY (PLATFORM_DATASOURCES_ID)
);

ALTER TABLE PLATFORM_DATASOURCES
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_DATASOURCES
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_DATASOURCES
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);
-- ADDED TO ENSURE A REFERENCE TO IT OCCURS IN TABLE CREATED WELL BEFORE IN SCRIPT
ALTER TABLE DATATIER_TOKENS
    ADD FOREIGN KEY (DATASOURCE_ID)
        REFERENCES PLATFORM_DATASOURCES (PLATFORM_DATASOURCES_ID);

DROP TABLE IF EXISTS PLATFORM_DATASTRUCTURES_DTL CASCADE;
CREATE TABLE PLATFORM_DATASTRUCTURES_DTL
(
    PLATFORM_DATASTRUCTURESDTL_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    DATASTRUCTURE_ID              CHAR(38),
    COMPOSITE_DATASTRUCTURE_NAME  VARCHAR(50),
    SENSITIVITYFLAG_ID            VARCHAR(5)  DEFAULT 'UNDF',
    CREATED_DATE                  TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID                     VARCHAR(10) DEFAULT 'Active',
    CREATED_USER                  VARCHAR(20) DEFAULT 'Platform' ,
    REGISTEREDAPP_GUID            CHAR(38),
    DATAATTRIBUTE_ID              CHAR(38),
    PRIMARY KEY (PLATFORM_DATASTRUCTURESDTL_ID)
);

ALTER TABLE PLATFORM_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

ALTER TABLE PLATFORM_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (DATASTRUCTURE_ID)
        REFERENCES REFDATA_DATASTRUCTURES (DATASTRUCTURE_ID);

ALTER TABLE PLATFORM_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

ALTER TABLE PLATFORM_DATASTRUCTURES_DTL
    ADD FOREIGN KEY (SENSITIVITYFLAG_ID)
        REFERENCES REFDATA_SENSITIVITYFLAGS (SENSITIVITYFLAG_ID);

DROP TABLE IF EXISTS PLATFORM_RULESETS_DEFINITIONS CASCADE;
CREATE TABLE PLATFORM_RULESETS_DEFINITIONS
(
    RULESETDEFINITIONS_ID   CHAR(38)    DEFAULT GEN_RANDOM_UUID() NOT NULL,
    RULESETDEFINITIONS_NAME VARCHAR(50),
    RULESET_ID              CHAR(38),
    STEPORDER_ID            INTEGER,
    OPERATIONTYPE_ID        VARCHAR(10),
    RULESET_DEFVALUE        CHAR(40),
    STATUS_ID               VARCHAR(10) DEFAULT 'Active',
    CREATED_DATE            TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    EFFECTIVE_DATE          TIMESTAMP,
    APPLICATION_GUID        CHAR(38),
    TERM_DATE               TIMESTAMP,
    DATAATTRIBUTE_ID        CHAR(38),
    PRIMARY KEY (RULESETDEFINITIONS_ID)
);

ALTER TABLE PLATFORM_RULESETS_DEFINITIONS
    ADD FOREIGN KEY (APPLICATION_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

ALTER TABLE PLATFORM_RULESETS_DEFINITIONS
    ADD FOREIGN KEY (RULESET_ID)
        REFERENCES REFDATA_RULESETS (RULE_ID);

ALTER TABLE PLATFORM_RULESETS_DEFINITIONS
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

ALTER TABLE PLATFORM_RULESETS_DEFINITIONS
    ADD FOREIGN KEY (OPERATIONTYPE_ID)
        REFERENCES REFDATA_OPERATIONTYPES (OPERATIONTYPE_ID);

ALTER TABLE PLATFORM_RULESETS_DEFINITIONS
    ADD FOREIGN KEY (STATUS_ID)
        REFERENCES REFDATA_STATUS (STATUS_ID);

DROP TABLE IF EXISTS PLATFORM_TOKENS_XMAPS CASCADE;
CREATE TABLE PLATFORM_TOKENS_XMAPS
(
    PLATFORM_TOKENS_XMAP_ID CHAR(38)    DEFAULT GEN_RANDOM_UUID(),
    DATASTRUCTURES_ID       INTEGER,
    XMAP_DETAILS            VARCHAR(149),
    DATAATTRIBUTE_ID        CHAR(38),
    FIELDORDER_ID           INTEGER     DEFAULT 1,
    CREATED_DATE            TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    STATUS_ID               VARCHAR(10) DEFAULT 'Active',
    CREATED_USER           VARCHAR(20) DEFAULT 'Platform',
    REGISTEREDAPP_GUID      CHAR(38),
    ORGANIZATION_GUID       CHAR(38),
    PRIMARY KEY (PLATFORM_TOKENS_XMAP_ID)
);

ALTER TABLE PLATFORM_TOKENS_XMAPS
    ADD FOREIGN KEY (DATAATTRIBUTE_ID)
        REFERENCES REFDATA_DATAATTRIBUTES (DATAATTRIBUTE_ID);

ALTER TABLE PLATFORM_TOKENS_XMAPS
    ADD FOREIGN KEY (ORGANIZATION_GUID)
        REFERENCES REFDATA_ORGANIZATIONS (ORGANIZATION_GUID);

ALTER TABLE PLATFORM_TOKENS_XMAPS
    ADD FOREIGN KEY (REGISTEREDAPP_GUID)
        REFERENCES REFDATA_APPLICATIONS (APP_GUID);

-- INDEXES
DROP INDEX IF EXISTS DATATIER_SDP_DATAATTRIBUTES_INDEX;
CREATE INDEX IF NOT EXISTS DATATIER_SDP_DATAATTRIBUTES_INDEX
    ON DATATIER_SDP_DATAATTRIBUTES (DATATIER_ID, BASEVALUE, SUPPORTINGVALUE1, SUPPORTINGVALUE2, SUPPORTINGVALUE3, SUPPORTINGVALUE4,
    SUPPORTINGVALUE5, SUPPORTINGVALUE6, SUPPORTINGVALUE7, CREATED_DATE, DATAATTRIBUTE_ID,
    DATAGENTYPE_ID, STATUS_ID, CREATED_USER, REGISTEREDAPP_GUID);

DROP INDEX IF EXISTS DATATIER_CRAWLER_INDX;
CREATE INDEX DATATIER_CRAWLER_INDX ON DATATIER_CRAWLERS
    (DATACRAWLER_ID ASC, TOKEN ASC, CREATED_DATE ASC,
     STATUS_ID ASC, REGISTEREDAPP_GUID ASC, ORGANIZATION_GUID ASC);

DROP INDEX IF EXISTS DATATIER_SDP_DATAATTRIBUTES_INDX;
CREATE INDEX DATATIER_SDP_DATAATTRIBUTES_INDX ON DATATIER_SDP_DATAATTRIBUTES
    (
     DATATIER_ID ASC, BASEVALUE ASC, SUPPORTINGVALUE1 ASC,
     SUPPORTINGVALUE2 ASC, SUPPORTINGVALUE3 ASC, SUPPORTINGVALUE4 ASC,
     SUPPORTINGVALUE5 ASC, SUPPORTINGVALUE6 ASC, SUPPORTINGVALUE7 ASC,
     CREATED_DATE ASC, STATUS_ID ASC, DATAATTRIBUTE_ID ASC, CREATED_USER ASC, REGISTEREDAPP_GUID ASC,
     DATAGENTYPE_ID ASC);

DROP INDEX IF EXISTS DATATIER_SDP_DATASTRUCTURES_INDX;
CREATE INDEX DATATIER_SDP_DATASTRUCTURES_INDEX ON DATATIER_SDP_DATASTRUCTURES
    ( DATASTRUCTURE_CORE_ID ASC, DATASTRUCTURE_NAME ASC,
     CREATED_DATE ASC, STATUS_ID ASC, REGISTEREDAPP_GUID ASC);

DROP INDEX IF EXISTS DATATIER_TOKENS_INDX;
CREATE INDEX DATATIER_TOKENS_INDEX ON DATATIER_TOKENS
    (
     DATATOKEN_ID ASC, TOKEN ASC, CREATED_DATE ASC,
     STATUS_ID ASC, REGISTEREDAPP_GUID ASC, ORGANIZATION_GUID ASC, INTFC_TYPE ASC, DATASOURCE_ID ASC);

DROP INDEX IF EXISTS PLATFORM_CODESETS_INDUSTRYSTDS_INDX;
CREATE INDEX PLATFORM_CODESETS_INDUSTRYSTDS_INDX ON PLATFORM_CODESETS_INDUSTRYSTDS
    ( TERMCODESET_ID ASC, CREATED_DATE ASC, STATUS_ID ASC,
     CUI ASC, LAT ASC, TS ASC,LUI ASC, STT ASC, SUI ASC, ISPREF ASC,
     AUI ASC, SAUI ASC, SCUI ASC,SDUI ASC, SAB ASC, TTY ASC, CODE ASC, SRL ASC, SUPPRESS ASC,
     CVF ASC);