<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
    <title>Info ASPX</title>
    <style>
        .page-head {width:86%;margin:auto;height:48px;line-height:48px;border:1px solid #4800ff;
            font-size:32px;font-weight:bold;border-radius:4px;text-indent:16px;color:darkblue;
            margin-bottom:16px;margin-top:16px;}
        .page-body {width:80%;margin:auto;}
        .page-body > table td {border:1px solid #4800ff;padding:4px;border-radius:4px;}
        .page-bottom {width:300px;margin:auto;padding:8px;border:1px solid #4800ff;
            border-radius:4px;margin-top:16px;margin-bottom:24px;text-align:center;}
    </style>    
</head>
<body>
    <div class="page-head">
        System Info:&nbsp;<% Response.Write(Server.MachineName); %>
    </div>
    <div class="page-body">
    <%
       int year = System.DateTime.Now.Year;
       StringBuilder table = new StringBuilder("<table class=\"svr-vars\">");
       string tr = "<tr><td>{0}</td><td>{1}</td></tr>";
       foreach (string key in Request.ServerVariables.AllKeys)
           table.Append(string.Format(tr, key, Request.ServerVariables[key]));
       table.Append("</table>");
       Response.Write(table);
    %>   
    </div>
    <div class="page-bottom">
        by InfoMatrix LLC&middot;<% Response.Write(year); %>
    </div>
</body>
</html>

