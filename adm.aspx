<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adm.aspx.cs" Inherits="_2024._08._27.adm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Código" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="Código" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Código" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server"> 
                <asp:Label ID="txtEmail" runat="server" Text="Nome:"></asp:Label> &nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="484px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <asp:Label ID="txtIdade" runat="server" Text="Idade:"></asp:Label> &nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="22px"></asp:TextBox>
                <br />
                <asp:Label ID="txtDenuncias" runat="server" Text="Cidade:"></asp:Label> &nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="480px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Atualizar Dados" OnClick="Button1_Click" />
            </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:2024.08.08-USUARIOSConnectionString2 %>" SelectCommand="SELECT * FROM [USUARIOS]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
