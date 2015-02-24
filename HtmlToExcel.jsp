<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function fnExcelReport()
{
         var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
         var textRange; var j=0;
      tab = document.getElementById('TableDetails'); // table id to be mentioned here


      for(j = 0 ; j < tab.rows.length ; j++) 
      {     
            tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
            //tab_text=tab_text+"</tr>";
      }

      tab_text=tab_text+"</table>";
      tab_text= tab_text.replace(/<A[^>]*>|<\/A>/g, "");//for getting links in your table remove this
      tab_text= tab_text.replace(/<img[^>]*>/gi,""); // for gettin images in your table remove this 
                  tab_text= tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

           var ua = window.navigator.userAgent;
          var msie = ua.indexOf("MSIE "); 

             if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // for Internet Explorer
                {
                       txtArea1.document.open("txt/html","replace");
                       txtArea1.document.write(tab_text);
                       txtArea1.document.close();
                       txtArea1.focus(); 
                        sa=txtArea1.document.execCommand("SaveAs",true,"TableDetails.xls");
                      }  
              else                 //other browser not tested on IE 11
                  sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  


                  return (sa);
                        }
</script>
<body>
<iframe id="txtArea1" style="display:none"></iframe>
<table  id="TableDetails"   border = 1 cellspacing=1 cellpadding=0 width="85%" align="center">
  <tr>
		<td align="center" class="listlbl" colspan="10"><b>
		<br>
		<br>
		 <button id="btnExport" onclick="fnExcelReport();" > Export As Excel </button>
		</b></td>
		<br>
		<br>
		</tr>
<tr>
<td>
Value 1
</td>
<td>
Value 2
</td>
<td>
Value 3
</td>
<td>
Value 4
</td>
</tr>
<tr>
<td>
Value 5
</td>
<td>
Value 6
</td>
<td>
Value 7
</td>
<td>
Value 8
</td>
</tr>
</table>
</body>
</html>
