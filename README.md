# 水星工程科技有限公司 - 後端工程師

## 專案簡介

使用 C# ASP.NET Core 8 與 SQL Server 進行 CRUD 操作的後端 API。
專案包含兩個主要的資料表：Myoffice_ACPD（使用者資料表）和 Myoffice_ExcuteionLog（執行日誌表）。
每次進行資料操作時，都會記錄操作日誌。API 支援透過 JSON 來處理資料傳輸。

## 使用工具套建

.NET Core SDK 8.0
SQL Server
VSCode (未安裝使用過 VS)
Entity Framework Core
SQL Server Management Studio (SSMS)

## 運行方式

1. 還原專案依賴包：`dotnet restore`
2. 運行以下命令來生成資料庫遷移並更新資料庫：
   `dotnet ef migrations add InitialCreate`
   `dotnet ef database update`
3. 啟動 API：
   `dotnet run`

## 實作思路

1. 建立資料庫與資料表
   根據需求和文件，首先在 SQL Server 中創建 BackendExamHub 資料庫，並創建 Myoffice_ACPD 和 Myoffice_ExcuteionLog 資料表來存儲使用者資料和執行日誌。
   每個表的結構基於文件中提供的資料表定義 ​(水星工程資料表)。
2. 實作 CRUD 操作
   使用 Entity Framework Core 來與 SQL Server 進行連接。(在 python 裡跟 ORM(Object Relational Mapping) 一樣概念)
   定義一個資料上下文 DbContext，其中包含表 Myoffice_ACPD 和日誌表的 DbSet。
   每個 CRUD 操作都透過對 Myoffice_ACPD 的 API 呼叫實現，例如 GET、POST、PUT 和 DELETE。
   為了確保每次操作都被記錄，CRUD 操作中的每次變動都會呼叫預存程序 usp_AddLog，記錄到 Myoffice_ExcuteionLog 表。
3. 使用 Stored Procedures
   為了提升靈活性，我們採用了兩個 Stored Procedure：NewSID 和 usp_AddLog。
   NewSID 用於產生全域唯一的 SID 值，並將其作為主鍵。
   usp_AddLog 則用於在每次進行新增、修改、刪除等操作時，記錄操作細節。
4. 使用 JSON 格式處理資料
   在讀取資料時，API 會返回 JSON 格式的資料，便於前端進行處理。
   透過 FOR JSON AUTO 的 SQL 語句，我們可以直接在 Stored Procedure 中將資料表的查詢結果轉換為 JSON 格式。
5. 測試與驗證
   使用 Swagger UI 來測試 CRUD API。Swagger 提供了一個圖形化介面，開發者可以通過該介面直接發送請求，驗證 API 的正確性。

## 在三個月內從 Python 轉向 C# 和 ASP.NET Core 開發，會如何規劃學習過程？

每日基本功(最低限度，最高無上限)

1. 三題 C#語言 codeware 解題(練語感熟悉 C#語言)
2. 閱讀一片文章(選一本 ASP.NET Core 開發書)
3. 寫新知識文章包含舉例測試 code(囤稿，參加下一屆(16 屆)鐵人賽)
4. 每月一篇個人專案(完成新功能)放上 github repo

三個月後最低能完成成果

- codeware 90 題+ C#
- 3 本+ (相關程式語言開發書)
- 90 篇+ 新知文章(27000 以上字)
- 個人專案 3 項目+

相信以上訓練能在三個月內掌握 C# 和 ASP.NET Core 開發
為公司貢獻戰力
