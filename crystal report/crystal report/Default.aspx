<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="crystal_report.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Crystal report Extract with Client side Javascript</h2>
        <input type="button" id="btn_PDF" value="Download PDF" />
        <input type="button" id="btn_Excel" value="Download Excel" />
        <input type="button" id="btn_Viewer" value="Report Viewer" />
        <script src="Scripts/jquery-3.3.1.min.js"></script>
        <script src="Scripts/Report.js"></script>
     </div>
    </form>
</body>
</html>
