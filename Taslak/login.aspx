<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Taslak.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes" />
    <meta name="description" content="" />
    <meta name="author" content=""/>
    <link rel="icon" href="bootstrap/favicon.ico" />

    <title>PNPGaraj Takip</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="bootstrap/starter-template.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"/>
</head>
<body>
   
    <h1 class="text-center">Giriş</h1>
    <div id="wrapper">
        <div class="container">
            <form id="form2" runat="server">
                <div class="login-panel panel panel-default">

                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label">Kullanıcı Adı</label>
                            <asp:TextBox ID="TextBoxusername"  class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Parola</label>
                            <asp:TextBox ID="TextBoxpassword"  class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                
                        <p>
                            <asp:Button ID="Buttongiris"  class="btn btn-lg btn-primary btn-block btn-signin" runat="server" Text="Giriş Yap" OnClick="Buttongiris_Click"   />
                        </p>
                        <p>
                            <asp:Label ID="Labeldurum" runat="server"></asp:Label>
                        </p>

                    </div>
                </div>
            </form>
        </div>
       
    </div>
   
</body>
</html>
