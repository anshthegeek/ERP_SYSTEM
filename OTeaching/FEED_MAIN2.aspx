<%@ Page Title="" Language="C#" MasterPageFile="~/POST.master" AutoEventWireup="true" CodeFile="FEED_MAIN2.aspx.cs" Inherits="FEED_MAIN2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table class="tbl" style="position:relative;left:-300px;width:1004px">
 


    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr style="position:relative;left:3px;top:-31px";>
        <td>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false"  CellPadding="7" CellSpacing="17"  GridLines="None">
  
                <Columns> 

<asp:TemplateField HeaderText="Postt" ControlStyle-CssClass="com">
    <ItemTemplate>
        <%#Eval("post_name") %> 
    </ItemTemplate>
</asp:TemplateField>
                     


                </Columns>
               <EditRowStyle BackColor="#7C6F57"/>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB"/>
                
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </td>
    </tr> 
        
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table> 
    <div id="logoo" style="position:relative;z-index:999;left:-297px;bottom:0;">
        <table width="100%">
            <tr>
                <td class="log">
                   <marquee BEHAVIOR=ALTERNATE><span class="log">ERP CELL</span></marquee></td>
            </tr>
        </table>
    </div><div id="footer" style="color: #FFFFFF; text-align: center;position:relative;z-index:999;bottom:0;right:297px">All Copy Rights 2021</div>
      
</asp:Content>

