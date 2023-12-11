




CREATE TABLE Клиенты (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 ФИО VARCHAR(255) NULL,
 ДатаРождения TIMESTAMP(3) NULL,
 НомерТелефона INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Поставщики (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Наименование VARCHAR(255) NULL,
 НомерТелефона INT NULL,
 Адрес VARCHAR(255) NULL,
 Почта VARCHAR(255) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Регистр (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 ПриходДенег UUID NOT NULL,
 РасходДенег UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Товары (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Наименование VARCHAR(255) NULL,
 Стоимость INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE СоставТовара (
 primaryKey UUID NOT NULL,
 Количество INT NULL,
 Материалы UUID NOT NULL,
 Товары UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE ПриходДенег (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Дата TIMESTAMP(3) NULL,
 ТипПрихода VARCHAR(1) NULL,
 Сумма INT NULL,
 Клиенты UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Услуги (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Наименование VARCHAR(255) NULL,
 Стоимость INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE СоставУслуги (
 primaryKey UUID NOT NULL,
 Количество INT NULL,
 Услуги UUID NOT NULL,
 ПриходДенег UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE СоставМатериалы (
 primaryKey UUID NOT NULL,
 Количество INT NULL,
 Материалы UUID NOT NULL,
 РасходДенег UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE СоставТовары (
 primaryKey UUID NOT NULL,
 Количество INT NULL,
 Товары UUID NOT NULL,
 ПриходДенег UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE Материалы (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Наименование VARCHAR(255) NULL,
 Марка VARCHAR(255) NULL,
 Единицы VARCHAR(1) NULL,
 Стоимость INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE РасходДенег (
 primaryKey UUID NOT NULL,
 ID INT NULL,
 Дата TIMESTAMP(3) NULL,
 Банк VARCHAR(8) NULL,
 Счет INT NULL,
 ИНН INT NULL,
 БИК INT NULL,
 Сумма INT NULL,
 Поставщики UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (
 LockKey VARCHAR(300) NOT NULL,
 UserName VARCHAR(300) NOT NULL,
 LockDate TIMESTAMP(3) NULL,
 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (
 primaryKey UUID NOT NULL,
 Module VARCHAR(1000) NULL,
 Name VARCHAR(255) NULL,
 Value TEXT NULL,
 "User" VARCHAR(255) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (
 primaryKey UUID NOT NULL,
 "User" VARCHAR(255) NULL,
 Published BOOLEAN NULL,
 Module VARCHAR(255) NULL,
 Name VARCHAR(255) NULL,
 Value TEXT NULL,
 HotKeyData INT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (
 primaryKey UUID NOT NULL,
 Name VARCHAR(255) NOT NULL,
 DataObjectView VARCHAR(255) NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (
 primaryKey UUID NOT NULL,
 Name VARCHAR(255) NOT NULL,
 "Order" INT NOT NULL,
 PresentView VARCHAR(255) NOT NULL,
 DetailedView VARCHAR(255) NOT NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (
 primaryKey UUID NOT NULL,
 Caption VARCHAR(255) NOT NULL,
 DataObjectView VARCHAR(255) NOT NULL,
 ConnectMasterProp VARCHAR(255) NOT NULL,
 OwnerConnectProp VARCHAR(255) NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (
 primaryKey UUID NOT NULL,
 DataObjectType VARCHAR(255) NOT NULL,
 Container VARCHAR(255) NULL,
 ContainerTag VARCHAR(255) NULL,
 FieldsToView VARCHAR(255) NULL,
 FilterSetting_m0 UUID NOT NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (
 primaryKey UUID NOT NULL,
 AppName VARCHAR(256) NULL,
 UserName VARCHAR(512) NULL,
 UserGuid UUID NULL,
 ModuleName VARCHAR(1024) NULL,
 ModuleGuid UUID NULL,
 SettName VARCHAR(256) NULL,
 SettGuid UUID NULL,
 SettLastAccessTime TIMESTAMP(3) NULL,
 StrVal VARCHAR(256) NULL,
 TxtVal TEXT NULL,
 IntVal INT NULL,
 BoolVal BOOLEAN NULL,
 GuidVal UUID NULL,
 DecimalVal DECIMAL(20,10) NULL,
 DateTimeVal TIMESTAMP(3) NULL,
 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (
 primaryKey UUID NOT NULL,
 Category VARCHAR(64) NULL,
 EventId INT NULL,
 Priority INT NULL,
 Severity VARCHAR(32) NULL,
 Title VARCHAR(256) NULL,
 Timestamp TIMESTAMP(3) NULL,
 MachineName VARCHAR(32) NULL,
 AppDomainName VARCHAR(512) NULL,
 ProcessId VARCHAR(256) NULL,
 ProcessName VARCHAR(512) NULL,
 ThreadName VARCHAR(512) NULL,
 Win32ThreadId VARCHAR(128) NULL,
 Message VARCHAR(2500) NULL,
 FormattedMessage TEXT NULL,
 PRIMARY KEY (primaryKey));



 ALTER TABLE Регистр ADD CONSTRAINT FK53571c73808a807c65b93e4493993341757e8102 FOREIGN KEY (ПриходДенег) REFERENCES ПриходДенег; 
CREATE INDEX Index53571c73808a807c65b93e4493993341757e8102 on Регистр (ПриходДенег); 

 ALTER TABLE Регистр ADD CONSTRAINT FKe50e91523fe22cca8a6d0b84e80b1d6c2a4efdc8 FOREIGN KEY (РасходДенег) REFERENCES РасходДенег; 
CREATE INDEX Indexe50e91523fe22cca8a6d0b84e80b1d6c2a4efdc8 on Регистр (РасходДенег); 

 ALTER TABLE СоставТовара ADD CONSTRAINT FK7b119f260890af36e197d491ae8c98588965a5aa FOREIGN KEY (Материалы) REFERENCES Материалы; 
CREATE INDEX Index7b119f260890af36e197d491ae8c98588965a5aa on СоставТовара (Материалы); 

 ALTER TABLE СоставТовара ADD CONSTRAINT FKb136905ed323e249f7a9ef9f2df72309b30f2811 FOREIGN KEY (Товары) REFERENCES Товары; 
CREATE INDEX Indexb136905ed323e249f7a9ef9f2df72309b30f2811 on СоставТовара (Товары); 

 ALTER TABLE ПриходДенег ADD CONSTRAINT FKb8314e4a55b89dd76f697fa54825b01e0ea5d491 FOREIGN KEY (Клиенты) REFERENCES Клиенты; 
CREATE INDEX Indexb8314e4a55b89dd76f697fa54825b01e0ea5d491 on ПриходДенег (Клиенты); 

 ALTER TABLE СоставУслуги ADD CONSTRAINT FK60bf52ff8798e62a2ec60e4379a0657f3d31ae8e FOREIGN KEY (Услуги) REFERENCES Услуги; 
CREATE INDEX Index60bf52ff8798e62a2ec60e4379a0657f3d31ae8e on СоставУслуги (Услуги); 

 ALTER TABLE СоставУслуги ADD CONSTRAINT FKff913031ece8ef1818bfd21c83bf1d1ecbe8580b FOREIGN KEY (ПриходДенег) REFERENCES ПриходДенег; 
CREATE INDEX Indexff913031ece8ef1818bfd21c83bf1d1ecbe8580b on СоставУслуги (ПриходДенег); 

 ALTER TABLE СоставМатериалы ADD CONSTRAINT FK22b3ee0d7f755836028f885dd89f61b48b50d786 FOREIGN KEY (Материалы) REFERENCES Материалы; 
CREATE INDEX Index22b3ee0d7f755836028f885dd89f61b48b50d786 on СоставМатериалы (Материалы); 

 ALTER TABLE СоставМатериалы ADD CONSTRAINT FK3d03496d6fc9c4fbd2a12dec98d2bf07f25c5995 FOREIGN KEY (РасходДенег) REFERENCES РасходДенег; 
CREATE INDEX Index3d03496d6fc9c4fbd2a12dec98d2bf07f25c5995 on СоставМатериалы (РасходДенег); 

 ALTER TABLE СоставТовары ADD CONSTRAINT FKcab1a33fea1a52ddf7ed5ec11cb00088e83f8c8b FOREIGN KEY (Товары) REFERENCES Товары; 
CREATE INDEX Indexcab1a33fea1a52ddf7ed5ec11cb00088e83f8c8b on СоставТовары (Товары); 

 ALTER TABLE СоставТовары ADD CONSTRAINT FK8ef72ba949c4d8e34707a2e043a21a39c8331f45 FOREIGN KEY (ПриходДенег) REFERENCES ПриходДенег; 
CREATE INDEX Index8ef72ba949c4d8e34707a2e043a21a39c8331f45 on СоставТовары (ПриходДенег); 

 ALTER TABLE РасходДенег ADD CONSTRAINT FKe732db8cbe773d58668ca3d831153c0213d49acb FOREIGN KEY (Поставщики) REFERENCES Поставщики; 
CREATE INDEX Indexe732db8cbe773d58668ca3d831153c0213d49acb on РасходДенег (Поставщики); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKc4378e39870eb056aec84088683297a01d2a6200 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK921d16269835017e2a0d0e29ad6fb175454a70d0 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKce38ef0db3f01a53acaa49fed8853fb941ad47ba FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

