CREATE PROCEDURE usp_AddLog
    @DeLog_StoredPrograms NVARCHAR(120),
    @DeLog_GroupID UNIQUEIDENTIFIER,
    @DeLog_isCustomDebug BIT,
    @DeLog_ExecutionProgram NVARCHAR(120),
    @DeLog_ExecuteionInfo NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO MyOffice_ExcuteionLog (
        DeLog_StoredPrograms, DeLog_GroupID, DeLog_isCustomDebug, DeLog_ExecutionProgram, DeLog_ExecuteionInfo, exelog_nowdatetime
    ) VALUES (
        @DeLog_StoredPrograms, @DeLog_GroupID, @DeLog_isCustomDebug, @DeLog_ExecutionProgram, @DeLog_ExecuteionInfo, GETDATE()
    );
END;
GO
