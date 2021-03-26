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
                
        .firstLabel{
            margin-right: 60px;
        }
        .secondLabel{
            margin-right: 53px;
        }
        .thirdLabel{
            margin-right:20px;
        }
        .btnCSS{
            border-radius: 50px;
        }
        .auto-style4 {
            margin-left: 30px;
            margin-right: 12px;
        }
        .auto-style5 {
            margin-left: 30px;
            margin-right: 105px;
        }
        .auto-style6 {
            margin-top: 15px;
            margin-bottom: 10px;
        }
        .auto-style8 {
            margin-left: 35px;
            margin-right: 35px;
        }
        .auto-style9 {
            margin-top: 14px;
            margin-bottom: 32px;
        }
        
        .auto-style10 {
            margin-bottom: 5px;
        }
        .theTable{
           margin: auto;
        }
        
        .auto-style11 {
            margin-left: 30px;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1" style="font-family: Verdana; color: #284E8A;"><span class="auto-style2"><strong style="color: #284E8A">EZ APPLIANCE CENTER</strong></span> </h2>
        </div>
        <div class="auto-style1" style="font-family: verdana">
            <p><strong>Customer Bill</strong></p>
            <div >
                <div style="margin-bottom: 5px">
                <asp:Label ID="Label2" runat="server" Text="Sold to" CssClass="firstLabel"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text=":" ></asp:Label>
                <asp:TextBox ID="nameTxtB" runat="server" Width="350px" CssClass="auto-style5"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Date" CssClass="thirdLabel"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text=":" ></asp:Label>
                <asp:TextBox ID="dateTxtB" runat="server" CssClass="auto-style11" Enabled="False"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Text="Address" CssClass="secondLabel"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text=":" ></asp:Label>
                <asp:TextBox ID="addTxtB" runat="server" Width="350px" CssClass="auto-style4"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Text="Contact Number" CssClass="thirdLabel"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text=":" ></asp:Label>
                <asp:TextBox ID="contactNumTxtB" runat="server" CssClass="auto-style11"></asp:TextBox>
             </div>   
            </div>
            <div class="auto-style6">
                <div class="auto-style10">
                     <asp:Label ID="lbltvsold" runat="server" Text="How many LED 32 TV's were SOLD?"></asp:Label>
                     <asp:TextBox ID="tvSoldTxtB" runat="server" CssClass="auto-style12" Width="140px"  Height="16px" style="margin-left: 43px"></asp:TextBox>
                 </div>

                <div class="auto-style10">
                   <asp:Label ID="lblwatersold" runat="server" Text="How many Water Purifier were SOLD?"></asp:Label>
                   <asp:TextBox ID="waterPurSoldTxtB" runat="server" CssClass="auto-style15" Width="140px"  Height="16px " style="margin-left: 25px"></asp:TextBox>
                 </div>

                <div class="auto-style10">
                   <asp:Label ID="lbldvdsold" runat="server" Text="How many DVD Players were SOLD?"></asp:Label>
                   <asp:TextBox ID="dvdSoldTxtB" runat="server" CssClass="auto-style14" Width="140px" Height="16px" style="margin-left: 40px"></asp:TextBox>
                 </div>
       
                <div class="auto-style10">
                   <asp:Label ID="lblairconsold" runat="server" Text="How many Aircon Converter were SOLD?"></asp:Label>
                  <asp:TextBox ID="airconSoldTxtB" runat="server" CssClass="auto-style13" Height="16px" Width="140px" style="margin-left: 4px" ></asp:TextBox>
                </div>
            </div>
            <div class="auto-style9">

                <asp:Button ID="submitBtn" runat="server"  Text="Submit" BackColor="#284E8A" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" CssClass="auto-style8" OnClick="submitBtn_Click" />
                <asp:Button ID="cancelBtn" runat="server"  Text="Cancel" BackColor="#284E8A" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" CssClass="auto-style8" Enabled="False" OnClick="cancelBtn_Click" />
               
            </div>
        </div>
        <div  >

            <asp:Table ID="Table1" runat="server" Width="800px" CssClass="theTable" Visible="False" >
                <asp:TableRow runat="server" Font-Bold="True">
                    <asp:TableCell runat="server" Font-Underline="True" Width="150px" HorizontalAlign="Center">QTY</asp:TableCell>
                    <asp:TableCell runat="server" Font-Underline="True" Width="200px" HorizontalAlign="Center">DESCRIPTION</asp:TableCell>
                    <asp:TableCell runat="server" Font-Underline="True" HorizontalAlign="Right">UNIT PRICE</asp:TableCell>
                    <asp:TableCell runat="server" Font-Underline="True" HorizontalAlign="Right">TOTAL PRICE</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell  runat="server" HorizontalAlign="Center" ID="tvQty"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">LED 32&quot; TV</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right">12,000.25</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right" ID="tvTotalPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell  runat="server" HorizontalAlign="Center"  ID="watPurQty"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">Water Purifier</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right">2,550.90</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right" ID="warPurTotalPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center"  ID="dvdQty"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">DVD Player</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right">3,520.50</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right" ID="dvdTotalPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center"  ID="airConQty"></asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Left">Aircon Converter</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right" >16,420.75</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right" ID="airConTotalPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ForeColor="White">###</asp:TableCell>
                    <asp:TableCell runat="server" ForeColor="White">  ##</asp:TableCell>
                    <asp:TableCell runat="server" ForeColor="White">###</asp:TableCell>
                    <asp:TableCell runat="server" HorizontalAlign="Right">-----------------</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server">SUBTOTAL</asp:TableCell>
                    <asp:TableCell runat="server"  HorizontalAlign="Right" ID="subPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server">TAX</asp:TableCell>
                    <asp:TableCell runat="server"  HorizontalAlign="Right" ID="TaxPrice"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server" ForeColor="White">###></asp:TableCell>
                    <asp:TableCell runat="server" >TOTAL</asp:TableCell>
                    <asp:TableCell runat="server"  HorizontalAlign="Right" ID="totalPrice" Font-Underline="True" Font-Bold="True"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
</html>
