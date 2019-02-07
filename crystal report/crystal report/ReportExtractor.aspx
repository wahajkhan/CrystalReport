<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportExtractor.aspx.cs" Inherits="crystal_report.ReportExtractor" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="aspnet_client/system_web/2_0_50727/crystalreportviewers13/js/crviewer/images/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" Width="100%" Height="900px" AutoDataBind="true" />
    </div>
        <script src="aspnet_client/system_web/2_0_50727/crystalreportviewers13/js/crviewer/crv.js"></script>
    </form>
</body>

</html>
