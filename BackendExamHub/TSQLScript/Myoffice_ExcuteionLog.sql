CREATE TABLE MyOffice_ExcuteionLog (
    DeLog_AuthID INT PRIMARY KEY IDENTITY(1,1),  -- 自訂索引碼
    DeLog_StoredPrograms NVARCHAR(120),          -- 預存程序名稱
    DeLog_GroupID UNIQUEIDENTIFIER,              -- 執行的群組代碼
    DeLog_isCustomDebug BIT,                     -- 是否認定為 Bug
    DeLog_ExecutionProgram NVARCHAR(120),        -- 執行的項目
    DeLog_ExecuteionInfo NVARCHAR(MAX),          -- 執行的內容或是說明
    DeLog_VerifyNeeded BIT,                      -- 此錯誤是否要進行檢查
    exelog_nowdatetime DATETIME                  -- 新增日期
);
