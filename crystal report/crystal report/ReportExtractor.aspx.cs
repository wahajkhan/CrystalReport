using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace crystal_report
{
    public partial class ReportExtractor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ReportName = Request.QueryString.Get("RptName");
            string ExtractType = Request.QueryString.Get("Type");
            if (!string.IsNullOrEmpty(ReportName) && !string.IsNullOrEmpty(ExtractType))
            {
                Rpt_Extractor(ReportName, ExtractType);

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
            
        }
        private void Rpt_Extractor(string RptName, string ExportType)
        {
            ExportOpt(Rpt_Selector(RptName), ExportType);
        }

        private ReportDocument Rpt_Selector(string ReportName)
        {
            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath(ReportName+".rpt"));

            return rpt;
        }

        private void ExportOpt(ReportDocument rpt,string ExportType){
            switch (ExportType)
            {
                case "Excel":
                    rpt.ExportToHttpResponse(ExportFormatType.Excel, Response, false, "Report Demo");
                    break;
                case "PDF":
                    rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Report Demo");
                    break;
                case "Viewer":
                    CrystalReportViewer1.ReportSource = rpt;
                    
                    break;
            }
        }




    }
}