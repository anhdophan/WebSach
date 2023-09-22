<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tinhtien.aspx.cs" Inherits="WebSach.tinhtien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tinh Tien Hang</title>
    <script language ="Javascript">
        function CalculatePrice() {
            var s1 = parseFloat(document.getElementById("Soluong").value);
            var dg = parseFloat(document.getElementById("Dongia").value);
            window.document.getElementById("ThanhTien").value = s1  * dg;
        }

        function CalculatePrice2() {
            var s1 = parseFloat(document.getElementByName("Soluong").value);
            var dg = parseFloat(document.getElementByName("Dongia").value);
            window.document.getElementById("ThanhTien").value = s1 *dg;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Tinh Tien</h1>
        <div>
            Đơn Giá: <input type="number" id="Dongia" name="Don gia" /><br/>
            Số Lượng: <input type="number" id="Soluong" name="So luong" 
                <%--onkeyup="Thanhtien.value = parseFloat(dongia.value)"/><br/>--%>
                <%--onkeyup="CalculatePrice()" /> <br />--%>
                onkeyup="CalculatePrice2();" /> <br />
            Đơn Giá: <input type="number" id="dg" name="don gia" /><br/>
        </div>
    </form>
</body>
</html>
