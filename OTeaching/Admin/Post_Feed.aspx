<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/aDMIN.master" AutoEventWireup="true" CodeFile="Post_Feed.aspx.cs" Inherits="Admin_Post_Feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    


        <table class="tbl">
                    <tr>
                    <td class="lbl">
                        Name :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="nametext" runat="server" CssClass="txtt"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr> 

           

            <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Button ID="btn" runat="server" Text="Submit" CssClass="btnn" 
                                 OnClick="btn_Click"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>


                 <tr>
        <td>
            <asp:GridView ID="gv" runat="server" OnRowCommand="gv_RowCommand1" AutoGenerateColumns="false">
                <Columns>
   <asp:TemplateField HeaderText="Employee ID">
    <ItemTemplate>
        <%#Eval("post_id") %>
    </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField HeaderText="Employee Name">
    <ItemTemplate>
        <%#Eval("post_name") %>
    </ItemTemplate> 
</asp:TemplateField>  


                     <asp:TemplateField>
     <ItemTemplate>
        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="B" CommandArgument=' <%#Eval("post_id") %>'></asp:Button>
     </ItemTemplate>
 </asp:TemplateField>

                </Columns>
               
            </asp:GridView>
        </td>
    </tr> 

        
</table>
</asp:Content>

