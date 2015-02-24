<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
 var tableToExcel = (function() {
      var uri = 'data:application/vnd.ms-excel;base64,'
        , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
        , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
        , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
      return function(table, name) {
        if (!table.nodeType) table = document.getElementById(table)
       /*  $("th:hidden,td:hidden").remove(); */    /* if u dont want to display hidden fields in excel please add this line */
        var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
        window.location.href = uri + base64(format(template, ctx))
      }
    })()
</script>
<body>
<input type="button" onclick="tableToExcel('TableDetails', 'TABLE DETAILS'); " value="Export to Excel" align="center">

<table  id="TableDetails"   border = 1 cellspacing=1 cellpadding=0 width="85%" align="center">
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
