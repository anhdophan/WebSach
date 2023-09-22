<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DANGKITAIKHOAN.aspx.cs" Inherits="WebSach.DANGKITAIKHOAN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <script language="Javascript">
        //lay gia tri cho 1 input: bo khoang trang 2 dau
        function getValue(id) {
            return document.getElementById(id).value.trim();
        }
        //hien thi loi
        function showError(key, mess) {
            document.getElementById(key + '_err').innerHTML = mess;
        }

        //ktra loi
        function Validate() {
            var flag = true;
            //1.username: do dai min 5 ky tu, max 30 ky tu, chi gom chu in thuong , in hoa va chu so
            var username = getValue('username')
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            Ten Dang Nhap: <br/>
            <input type="text" name="username" maxlength="30" /><br />
            <label name="username_err" style="color:red;"></label>
            Mat Khau: <br/>
            <input type="password" name="password" maxlength="30" /><br />
            <label name="password_err" style="color:red;"></label>
            Ten Dang Nhap: <br/>
            <input type="password" name="repass" maxlength="30" /><br />
            <label name="repass_err" style="color:red;"></label>
        </div>
        <input type="button" onclick="Validate(); " />
    </form>
</body>
</html>
