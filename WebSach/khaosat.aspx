<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="khaosat.aspx.cs" Inherits="WebSach.khaosat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>khao sat</title>
    <script language="Javascript">
        function Response() {
            var check = document.getElementsByName("svhuflit");
           /* var status = " "*/

            if (check[0].checked == true) {
                document.getElementById('response_msg').innerHTML = 'Tôi không phải là sinh viên huflit';
                /*status = 'Tôi là sinh viên huflit'*/
            }

            if (check[1].checked == true) {
                document.getElementById('response_msg').innerHTML = 'Tôi không phải là sinh viên huflit';
                /*status = 'Tôi không phải là sinh viên huflit'*/
            }

            //window.document.write(status);
            /*alert(status);*/

            var checkbox = document.getElementsByName('esac');
            var result = " ";
            //Lap qua tung checkbox de lay gia tri
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked == true)
                    result += '[' + checkbox[i].value + ']';
            }
            //ket qua
            alert(status + " .\n " + "Sở thích là : " + result);
        }
    </script>
</head>
<body>
     <form id="SurveyForm" method="post"
        <div>
            1.Bạn có phải sinh viên huflit ko ??? </br>
            <input type="radio" name="svhuflit" value=" " /> Phải </br>
            <input type="radio" name="svhuflit" value=" " /> Không Phải </br>
            <span id="respond_msg"></span>
            <input type="submit" onclick="Response();" />
        </div>

    <div>
        2.Bus có ny chưa ???
        <input type="checkbox" name="esac" value="" />Bus chicken" <br />
        <input type="checkbox" name="esac" value="" />Bus suy"<br />
         <input type="checkbox" name="esac" value="" />Bus sap co" <br />
    </div>
    <input type="submit" onclick="Reponse()" />
    </form>
</body>
</html>
