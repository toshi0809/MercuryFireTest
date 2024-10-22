CREATE TABLE Myoffice_ACPD (
    acpd_sid CHAR(20) PRIMARY KEY,             -- 使用者主鍵
    acpd_cname NVARCHAR(60),                   -- 中文名稱
    acpd_ename NVARCHAR(40),                   -- 英文名稱
    acpd_sname NVARCHAR(40),                   -- 簡稱
    acpd_email NVARCHAR(60),                   -- 使用者信箱
    acpd_status TINYINT,                       -- 狀況: 0=正常, 99=不正常
    acpd_stop BIT,                             -- 是否停用/不可登入
    acpd_stopMemo NVARCHAR(600),               -- 停用原因
    acpd_LoginID NVARCHAR(30),                 -- 登入帳號
    acpd_LoginPW NVARCHAR(60),                 -- 登入密碼
    acpd_memo NVARCHAR(120),                   -- 備註
    acpd_nowdatetime DATETIME,                 -- 新增日期
    appd_nowid NVARCHAR(20),                   -- 新增人員代碼
    acpd_upddatetitme DATETIME,                -- 修改日期
    acpd_updid NVARCHAR(20)                    -- 修改人員代碼
);
