<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .normal1 {
            margin-top: 12px;
            color: rebeccapurple;
        } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       

     <section id="form-details" style="display:block;height:769px">
        <form>
            <span>LEAVE A MESSAGE</span>
            <h2 style="font-size:1rem;font-weight:bold">We love to hear from you</h2>
                 <asp:TextBox  id="txtname" placeholder="Your Name" runat="server" required="required" style="width:400px; display:block;margin-top:29px;border: .1rem solid #e1e1e1;"  ></asp:TextBox>

                        <asp:TextBox  id="txtemail" placeholder="E-mail" runat="server" required="required" style="width:400px; display:block;margin-top:29px;border: .1rem solid #e1e1e1;"  ></asp:TextBox>

            <asp:TextBox  id="txtsub" placeholder="Subject" runat="server" required="required" style="width:400px; display:block;margin-top:29px;border:.1rem solid #e1e1e1"></asp:TextBox>
            <asp:TextBox ID="txtarea" cols="30" rows="10"  runat="server" required="required" placeholder="Your Message" style="width:400px;height:83px; display:block;margin-top:12px;border: .1rem solid #e1e1e1"></asp:TextBox>
   <asp:button  ID="cli" Height="43px" Width="106px" class="normal1" runat="server" Text="Submit" OnClick="cli_Click" ></asp:button>
                       <asp:Label ID="lblmsg" runat="server" ForeColor="SkyBlue" Font-Bold="true"></asp:Label>

        </form>
        <div class="people" style="position:relative; left:449px;top:-273px;font-size:11px;">
            <div style="position:relative;top:13px;"><img src="MYPIC.jpg" alt="" style="width:65px;height:59px;border-radius:57px;position:relative; left:-24px">
                <p id="peo" style="position:relative; left:53px;top:-63px;">
                    <span>Ansh Vats</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>

            <div  style="position:relative;top:-34px;"><img src="vs.jpg" alt="" style="width:65px;height:59px;border-radius:57px;position:relative; left:-24px">
                <p id="peo"  style="position:relative; left:53px;top:-63px;">
                    <span>Vibhansh Pandey</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>

            <div style="position:relative;top:-88px;"><img src="otstud.jpg" alt=""  style="width:65px;height:59px;border-radius:57px;position:relative; left:-24px">
                <p id="peo"  style="position:relative; left:53px;top:-63px;">
                    <span>Shivam Singh</span>
                    Senior MArketing Manager <br> Phone: + 000 123 000 77 88 <br> Email: contact@example.com
                </p>
            </div>   
        </div>
    </section>

    <script type="text/javascript">
        window.onload = fun(){
            document.getElementById("cli").onclick = Hello;
            function Hello() {
                alert("Submitted");
            }
        }

       
    </script>
</asp:Content>

