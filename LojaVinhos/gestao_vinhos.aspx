<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestao_vinhos.aspx.cs" Inherits="LojaVinhos.gestao_vinhos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Gestão Vinhos</h1>
                <p>Região:<asp:DropDownList ID="ddl_regiao" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="regiao" DataValueField="cod_regiao" Height="27px" Width="310px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_lojaVinhosConnectionString %>" SelectCommand="SELECT * FROM [tb_regiao]"></asp:SqlDataSource>
                </p></center>
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="num_vinho" DataSourceID="SqlDataSource1" style="margin-right: 740px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="34px" Width="732px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                    <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                    <asp:BoundField DataField="discricao" HeaderText="discricao" SortExpression="discricao" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                    <asp:BoundField DataField="preco_revenda" HeaderText="preco_revenda" SortExpression="preco_revenda" />
                    <asp:BoundField DataField="num_vinho" HeaderText="num_vinho" InsertVisible="False" ReadOnly="True" SortExpression="num_vinho" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_lojaVinhosConnectionString %>" SelectCommand="SELECT [nome], [preco], [discricao], [tipo], [preco_revenda], [num_vinho] FROM [tb_vinhos] WHERE ([cod_regiao] = @cod_regiao)" DeleteCommand="DELETE FROM [tb_vinhos] WHERE [num_vinho] = @num_vinho" InsertCommand="INSERT INTO [tb_vinhos] ([nome], [preco], [discricao], [tipo], [preco_revenda]) VALUES (@nome, @preco, @discricao, @tipo, @preco_revenda)" UpdateCommand="UPDATE [tb_vinhos] SET [nome] = @nome, [preco] = @preco, [discricao] = @discricao, [tipo] = @tipo, [preco_revenda] = @preco_revenda WHERE [num_vinho] = @num_vinho">
                <DeleteParameters>
                    <asp:Parameter Name="num_vinho" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="preco" Type="Double" />
                    <asp:Parameter Name="discricao" Type="String" />
                    <asp:Parameter Name="tipo" Type="String" />
                    <asp:Parameter Name="preco_revenda" Type="Double" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_regiao" Name="cod_regiao" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome" Type="String" />
                    <asp:Parameter Name="preco" Type="Double" />
                    <asp:Parameter Name="discricao" Type="String" />
                    <asp:Parameter Name="tipo" Type="String" />
                    <asp:Parameter Name="preco_revenda" Type="Double" />
                    <asp:Parameter Name="num_vinho" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
