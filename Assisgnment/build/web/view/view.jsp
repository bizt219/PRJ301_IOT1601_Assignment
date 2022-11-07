<%-- 
    Document   : view
    Created on : Nov 7, 2022, 11:04:17 PM
    Author     : binhp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Attendance View</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body>
        <h1 style="margin-left: 10px;">Attendance View</h1>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <table class="table" style="margin-left: 10px; margin-right: 10px; margin-top: 20px; width: 99%;">
            <thead>
                <tr>
                    <th scope="col">Student</th>
                    <th scope="col">MON<br/>Day</th>
                    <th scope="col">TUE<br/>Day</th>
                    <th scope="col">WED<br/>Day</th>
                    <th scope="col">THU<br/>Day</th>
                    <th scope="col">FRI<br/>Day</th>
                    <th scope="col">SAT<br/>Day</th>
                    <th scope="col">SUN<br/>Day</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Subject code<br/>Room<br/>Attend<br/>From-To</td>
                    <td>Subject code<br/>Room<br/>Attend<br/>From-To</td>
                    <td>Subject code<br/>Room<br/>Attend<br/>From-To</td>
                    <td>Subject code<br/>Room<br/>Attend<br/>From-To</td>
                    <td>Subject code<br/>Room<br/>Attend<br/>From-To</td>
                </tr>
                
            </tbody>
        </table>
        <h6 style="margin-left: 10px;">More info/Chú tích thêm</h6>
        <ul class="list-group list-group-flush" style="margin-left: 30px; width: fit-content;">
            <li class="list-group-item">(attended): Student-code had attended this activity / Student-name đã tham gia hoạt động này</li>
            <li class="list-group-item">(absent): Student-code had NOT attended this activity / Student-name đã vắng mặt buổi này</li>
            <li class="list-group-item">(-): no data was given / chưa có dữ liệu</li>
        </ul>
    </body>
</html>
