/// <reference path="jquery-3.3.1.min.js" />
var Report = {
    parameter:{
        RptName: null,
        Default_URL: 'ReportExtractor.aspx',
        URL:null,
    },
    Init: function () {
        Report.ReportEvent();
    },
    ReportEvent: function () {
        $('#btn_PDF').on('click',function () {
            Report.Export_Init('PDF');
        });
        $('#btn_Excel').on('click', function () {
            Report.Export_Init('Excel');
        });
        $('#btn_Viewer').on('click', function () {
            Report.Export_Init('Viewer');

        });
    },
    Export_Init:function(ExportType){
        Report.URL_Builder(ExportType);
        Report.Request_Generator();
    },
    URL_Builder: function (Exporttype) {
        Report.parameter.URL = Report.parameter.Default_URL + '?RptName=ReportDemo&' + Report.ExportType(Exporttype)
    },
    Request_Generator: function () {
        window.open(Report.parameter.URL , 'blank');
         
    },
    ExportType: function (Type) {
        switch (Type) {
            case 'PDF':
                return '&Type=PDF';
                break;
            case 'Excel':
                return '&Type=Excel';
                break;
            case 'Viewer':
                return '&Type=Viewer';
                break;

        }
    }
}

$(document).ready(Report.Init());