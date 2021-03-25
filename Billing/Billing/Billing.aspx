<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="Billing.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Billing</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-weight: normal;
            color: #0066CC;
            text-decoration: underline;
        }
        .auto-style3 {
            width: 500px;
        }
        .auto-style4 {
            width: 156px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1" style="font-family: Verdana"><span class="auto-style2"><strong>EZ APPLIANCE CENTER</strong></span> </h2>
        </div>
        <div class="auto-style1" style="font-family: verdana">
            <p><strong>Customer Bill</strong></p>
            <p class="auto-style1">Sold To&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                <input id="Text1" class="auto-style3" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date:&nbsp;&nbsp;&nbsp; <input id="Text2" class="auto-style4" type="text" />
                </br>
                Address&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; <input id="Text1" class="auto-style3" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Contact Number:&nbsp; &nbsp;&nbsp; <input id="Text2" class="auto-style4" type="text" />
            </p>
        </div>
    </form>
</body>
</html>
