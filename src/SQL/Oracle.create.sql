



CREATE TABLE "Клиенты"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"ФИО" NVARCHAR2(255) NULL,

	"ДатаРождения" DATE NULL,

	"НомерТелефона" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Поставщики"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Наименование" NVARCHAR2(255) NULL,

	"НомерТелефона" NUMBER(10) NULL,

	"Адрес" NVARCHAR2(255) NULL,

	"Почта" NVARCHAR2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Регистр"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"ПриходДенег" RAW(16) NOT NULL,

	"РасходДенег" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Товары"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Наименование" NVARCHAR2(255) NULL,

	"Стоимость" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "СоставТовара"
(

	"primaryKey" RAW(16) NOT NULL,

	"Количество" NUMBER(10) NULL,

	"Материалы" RAW(16) NOT NULL,

	"Товары" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ПриходДенег"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Дата" DATE NULL,

	"ТипПрихода" NVARCHAR2(1) NULL,

	"Сумма" NUMBER(10) NULL,

	"Клиенты" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Услуги"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Наименование" NVARCHAR2(255) NULL,

	"Стоимость" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "СоставУслуги"
(

	"primaryKey" RAW(16) NOT NULL,

	"Количество" NUMBER(10) NULL,

	"Услуги" RAW(16) NOT NULL,

	"ПриходДенег" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "СоставМатериалы"
(

	"primaryKey" RAW(16) NOT NULL,

	"Количество" NUMBER(10) NULL,

	"Материалы" RAW(16) NOT NULL,

	"РасходДенег" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "СоставТовары"
(

	"primaryKey" RAW(16) NOT NULL,

	"Количество" NUMBER(10) NULL,

	"Товары" RAW(16) NOT NULL,

	"ПриходДенег" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "Материалы"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Наименование" NVARCHAR2(255) NULL,

	"Марка" NVARCHAR2(255) NULL,

	"Единицы" NVARCHAR2(1) NULL,

	"Стоимость" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "РасходДенег"
(

	"primaryKey" RAW(16) NOT NULL,

	"ID" NUMBER(10) NULL,

	"Дата" DATE NULL,

	"Банк" NVARCHAR2(8) NULL,

	"Счет" NUMBER(10) NULL,

	"ИНН" NUMBER(10) NULL,

	"БИК" NUMBER(10) NULL,

	"Сумма" NUMBER(10) NULL,

	"Поставщики" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMNETLOCKDATA"
(

	"LockKey" NVARCHAR2(300) NOT NULL,

	"UserName" NVARCHAR2(300) NOT NULL,

	"LockDate" DATE NULL,

	 PRIMARY KEY ("LockKey")
) ;


CREATE TABLE "STORMSETTINGS"
(

	"primaryKey" RAW(16) NOT NULL,

	"Module" nvarchar2(1000) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"User" nvarchar2(255) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMAdvLimit"
(

	"primaryKey" RAW(16) NOT NULL,

	"User" nvarchar2(255) NULL,

	"Published" NUMBER(1) NULL,

	"Module" nvarchar2(255) NULL,

	"Name" nvarchar2(255) NULL,

	"Value" CLOB NULL,

	"HotKeyData" NUMBER(10) NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERSETTING"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMWEBSEARCH"
(

	"primaryKey" RAW(16) NOT NULL,

	"Name" nvarchar2(255) NOT NULL,

	"Order" NUMBER(10) NOT NULL,

	"PresentView" nvarchar2(255) NOT NULL,

	"DetailedView" nvarchar2(255) NOT NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERDETAIL"
(

	"primaryKey" RAW(16) NOT NULL,

	"Caption" nvarchar2(255) NOT NULL,

	"DataObjectView" nvarchar2(255) NOT NULL,

	"ConnectMasterProp" nvarchar2(255) NOT NULL,

	"OwnerConnectProp" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "STORMFILTERLOOKUP"
(

	"primaryKey" RAW(16) NOT NULL,

	"DataObjectType" nvarchar2(255) NOT NULL,

	"Container" nvarchar2(255) NULL,

	"ContainerTag" nvarchar2(255) NULL,

	"FieldsToView" nvarchar2(255) NULL,

	"FilterSetting_m0" RAW(16) NOT NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "UserSetting"
(

	"primaryKey" RAW(16) NOT NULL,

	"AppName" nvarchar2(256) NULL,

	"UserName" nvarchar2(512) NULL,

	"UserGuid" RAW(16) NULL,

	"ModuleName" nvarchar2(1024) NULL,

	"ModuleGuid" RAW(16) NULL,

	"SettName" nvarchar2(256) NULL,

	"SettGuid" RAW(16) NULL,

	"SettLastAccessTime" DATE NULL,

	"StrVal" nvarchar2(256) NULL,

	"TxtVal" CLOB NULL,

	"IntVal" NUMBER(10) NULL,

	"BoolVal" NUMBER(1) NULL,

	"GuidVal" RAW(16) NULL,

	"DecimalVal" NUMBER(20,10) NULL,

	"DateTimeVal" DATE NULL,

	 PRIMARY KEY ("primaryKey")
) ;


CREATE TABLE "ApplicationLog"
(

	"primaryKey" RAW(16) NOT NULL,

	"Category" nvarchar2(64) NULL,

	"EventId" NUMBER(10) NULL,

	"Priority" NUMBER(10) NULL,

	"Severity" nvarchar2(32) NULL,

	"Title" nvarchar2(256) NULL,

	"Timestamp" DATE NULL,

	"MachineName" nvarchar2(32) NULL,

	"AppDomainName" nvarchar2(512) NULL,

	"ProcessId" nvarchar2(256) NULL,

	"ProcessName" nvarchar2(512) NULL,

	"ThreadName" nvarchar2(512) NULL,

	"Win32ThreadId" nvarchar2(128) NULL,

	"Message" nvarchar2(2000) NULL,

	"FormattedMessage" nvarchar2(2000) NULL,

	 PRIMARY KEY ("primaryKey")
) ;



ALTER TABLE "Регистр"
	ADD CONSTRAINT "Регистр_FПрих_3516" FOREIGN KEY ("ПриходДенег") REFERENCES "ПриходДенег" ("primaryKey");

CREATE INDEX "Регистр_IПрих_7188" on "Регистр" ("ПриходДенег");

ALTER TABLE "Регистр"
	ADD CONSTRAINT "Регистр_FРасх_7664" FOREIGN KEY ("РасходДенег") REFERENCES "РасходДенег" ("primaryKey");

CREATE INDEX "Регистр_IРасх_9775" on "Регистр" ("РасходДенег");

ALTER TABLE "СоставТовара"
	ADD CONSTRAINT "СоставТовара__8886" FOREIGN KEY ("Материалы") REFERENCES "Материалы" ("primaryKey");

CREATE INDEX "СоставТовара__9804" on "СоставТовара" ("Материалы");

ALTER TABLE "СоставТовара"
	ADD CONSTRAINT "СоставТовара__2401" FOREIGN KEY ("Товары") REFERENCES "Товары" ("primaryKey");

CREATE INDEX "СоставТовара__3065" on "СоставТовара" ("Товары");

ALTER TABLE "ПриходДенег"
	ADD CONSTRAINT "ПриходДенег_F_5719" FOREIGN KEY ("Клиенты") REFERENCES "Клиенты" ("primaryKey");

CREATE INDEX "ПриходДенег_I_8061" on "ПриходДенег" ("Клиенты");

ALTER TABLE "СоставУслуги"
	ADD CONSTRAINT "СоставУслуги__5595" FOREIGN KEY ("Услуги") REFERENCES "Услуги" ("primaryKey");

CREATE INDEX "СоставУслуги__3045" on "СоставУслуги" ("Услуги");

ALTER TABLE "СоставУслуги"
	ADD CONSTRAINT "СоставУслуги__3821" FOREIGN KEY ("ПриходДенег") REFERENCES "ПриходДенег" ("primaryKey");

CREATE INDEX "СоставУслуги__8997" on "СоставУслуги" ("ПриходДенег");

ALTER TABLE "СоставМатериалы"
	ADD CONSTRAINT "СоставМатериа_953" FOREIGN KEY ("Материалы") REFERENCES "Материалы" ("primaryKey");

CREATE INDEX "СоставМатери_6094" on "СоставМатериалы" ("Материалы");

ALTER TABLE "СоставМатериалы"
	ADD CONSTRAINT "СоставМатери_9258" FOREIGN KEY ("РасходДенег") REFERENCES "РасходДенег" ("primaryKey");

CREATE INDEX "СоставМатери_3054" on "СоставМатериалы" ("РасходДенег");

ALTER TABLE "СоставТовары"
	ADD CONSTRAINT "СоставТовары__1706" FOREIGN KEY ("Товары") REFERENCES "Товары" ("primaryKey");

CREATE INDEX "СоставТовары__9442" on "СоставТовары" ("Товары");

ALTER TABLE "СоставТовары"
	ADD CONSTRAINT "СоставТовары__5235" FOREIGN KEY ("ПриходДенег") REFERENCES "ПриходДенег" ("primaryKey");

CREATE INDEX "СоставТовары__9903" on "СоставТовары" ("ПриходДенег");

ALTER TABLE "РасходДенег"
	ADD CONSTRAINT "РасходДенег_F_9958" FOREIGN KEY ("Поставщики") REFERENCES "Поставщики" ("primaryKey");

CREATE INDEX "РасходДенег_I_2241" on "РасходДенег" ("Поставщики");

ALTER TABLE "STORMWEBSEARCH"
	ADD CONSTRAINT "STORMWEBSEARCH_FSTORMFILT_6521" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERDETAIL"
	ADD CONSTRAINT "STORMFILTERDETAIL_FSTORMF_2900" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");

ALTER TABLE "STORMFILTERLOOKUP"
	ADD CONSTRAINT "STORMFILTERLOOKUP_FSTORMF_1583" FOREIGN KEY ("FilterSetting_m0") REFERENCES "STORMFILTERSETTING" ("primaryKey");


