namespace WebApi.Models
{
    public class Myoffice_ExcuteionLog
    {
        public int DeLog_AuthID { get; set; }  // 自訂索引碼
        public string DeLog_StoredPrograms { get; set; }  // 預存程序名稱
        public Guid DeLog_GroupID { get; set; }  // 群組代碼
        public bool DeLog_IsCustomDebug { get; set; }  // 是否為 Bug
        public string DeLog_ExecutionProgram { get; set; }  // 執行的項目
        public string DeLog_ExecutionInfo { get; set; }  // 執行內容
        public bool DeLog_VerifyNeeded { get; set; }  // 是否需要檢查
        public DateTime Exelog_NowDateTime { get; set; }  // 新增日期
    }
}
