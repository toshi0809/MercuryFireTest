-- 新增記錄
CREATE PROCEDURE usp_CreateACPD
    @acpd_sid CHAR(20),
    @acpd_cname NVARCHAR(60),
    @acpd_ename NVARCHAR(40),
    @acpd_sname NVARCHAR(40),
    @acpd_email NVARCHAR(60),
    @acpd_status TINYINT,
    @acpd_stop BIT,
    @acpd_stopMemo NVARCHAR(600),
    @acpd_LoginID NVARCHAR(30),
    @acpd_LoginPW NVARCHAR(60),
    @acpd_memo NVARCHAR(120),
    @appd_nowid NVARCHAR(20)
AS
BEGIN
    INSERT INTO Myoffice_ACPD (
        acpd_sid, acpd_cname, acpd_ename, acpd_sname, acpd_email, acpd_status, acpd_stop, acpd_stopMemo,
        acpd_LoginID, acpd_LoginPW, acpd_memo, acpd_nowdatetime, appd_nowid, acpd_upddatetitme, acpd_updid
    ) VALUES (
        @acpd_sid, @acpd_cname, @acpd_ename, @acpd_sname, @acpd_email, @acpd_status, @acpd_stop, @acpd_stopMemo,
        @acpd_LoginID, @acpd_LoginPW, @acpd_memo, GETDATE(), @appd_nowid, NULL, NULL
    );
END;
GO

-- 讀取記錄（回傳 JSON）
CREATE PROCEDURE usp_GetACPD
AS
BEGIN
    SELECT * FROM Myoffice_ACPD
    FOR JSON AUTO, ROOT('ACPDRecords');
END;
GO

-- 更新記錄
CREATE PROCEDURE usp_UpdateACPD
    @acpd_sid CHAR(20),
    @acpd_cname NVARCHAR(60),
    @acpd_ename NVARCHAR(40),
    @acpd_sname NVARCHAR(40),
    @acpd_email NVARCHAR(60),
    @acpd_status TINYINT,
    @acpd_stop BIT,
    @acpd_stopMemo NVARCHAR(600),
    @acpd_LoginID NVARCHAR(30),
    @acpd_LoginPW NVARCHAR(60),
    @acpd_memo NVARCHAR(120),
    @acpd_updid NVARCHAR(20)
AS
BEGIN
    UPDATE Myoffice_ACPD
    SET
        acpd_cname = @acpd_cname,
        acpd_ename = @acpd_ename,
        acpd_sname = @acpd_sname,
        acpd_email = @acpd_email,
        acpd_status = @acpd_status,
        acpd_stop = @acpd_stop,
        acpd_stopMemo = @acpd_stopMemo,
        acpd_LoginID = @acpd_LoginID,
        acpd_LoginPW = @acpd_LoginPW,
        acpd_memo = @acpd_memo,
        acpd_upddatetitme = GETDATE(),
        acpd_updid = @acpd_updid
    WHERE acpd_sid = @acpd_sid;
END;
GO

-- 刪除記錄
CREATE PROCEDURE usp_DeleteACPD
    @acpd_sid CHAR(20)
AS
BEGIN
    DELETE FROM Myoffice_ACPD WHERE acpd_sid = @acpd_sid;
END;
GO