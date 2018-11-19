<%-- 
    Document   : index
    Created on : 18 Nov, 2018, 2:15:01 PM
    Author     : aparnaullas
--%>


<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Psge</title>

</head>
<body>
    <form method="POST" action="Upload" enctype="multipart/form-data">
        File:
        <input type="file" name="file" id="file" /> <br/>
        Destination:
        <input type="text" value="/home/chandana/Desktop" name="destination"  /> <br/>
        <input type="submit" value="Upload" id="upload" name="upload"/>
    </form>
</body>
</html>