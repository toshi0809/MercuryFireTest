namespace WebApi.Models
{
    public class Myoffice_ACPD
    {
        public string Acpd_Sid { get; set; }  // 主鍵
        public string Acpd_Cname { get; set; }  // 中文名稱
        public string Acpd_Ename { get; set; }  // 英文名稱
        public string Acpd_Sname { get; set; }  // 簡稱
        public string Acpd_Email { get; set; }  // 信箱
        public byte Acpd_Status { get; set; }  // 狀態
        public bool Acpd_Stop { get; set; }  // 是否停用
        public string Acpd_StopMemo { get; set; }  // 停用原因
        public string Acpd_LoginID { get; set; }  // 登入帳號
        public string Acpd_LoginPW { get; set; }  // 登入密碼
        public string Acpd_Memo { get; set; }  // 備註
        public DateTime Acpd_NowDateTime { get; set; }  // 新增日期
        public string Appd_NowID { get; set; }  // 新增人員代碼
        public DateTime? Acpd_UpdDateTime { get; set; }  // 更新日期
        public string Acpd_UpdID { get; set; }  // 更新人員代碼
    }
}