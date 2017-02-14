<%--
  Created by IntelliJ IDEA.
  User: Mohru
  Date: 10.01.2017
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js'></script>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="web/css/styles.css">
</head>
<body>
$END$
<a href="/main">MainServlet</a>
<br/>

<button id="button1" type="button" class="btn btn-default" aria-label="Left Align">
    <span>click me!</span>
</button>
<button id="button2" type="button" class="btn btn-info" aria-label="Left Align">
    <span>click me!</span>
</button>

<div id="container">
</div>
<br/>
<script type="text/javascript">
    $('#button1').click(function (event) {
        $(this).css("background", "red");
        //alert('hello!');
        var button2 = $('#button2');
        if (button2.hasClass('btn-info')) {
            button2.removeClass('btn-info');
            button2.addClass('btn-danger');
        }
        else {
            button2.removeClass('btn-danger');
            button2.addClass('btn-info');
        }
    });

    $('#button2').click(function (event) {
        var container = $('#container');
        if (!container.has($('#button3')).length) {
            container.prepend($('<button id="button3" type="button" class="btn btn-info" aria-label="Left Align"><span> button! </span></button>'));
        }
        else {
            $('#button3').remove();
        }
    });
</script>

<div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
        <img src="/web2/images/im1.jpg" alt="...">
        <button id="button" type="button" class="btn btn-info">więcej...</button>
        <div id="hidden-panel">
            <h5 class="description">ASICS Gel Lyte III Mortar</h5>
            <p class="paragraph">US 10.5, 200 USD</p>
        </div>
        <script type="text/javascript">
            $('#button').click(function () {
                if ($('#hidden-panel').css("display") == "none") {
                    $('#hidden-panel').slideDown("slow");
                }
                else {
                    $('#hidden-panel').slideUp("slow");
                }
            });
        </script>
    </a>
    <a href="#" class="thumbnail">
        <img src="/web2/images/im2.jpg" alt="...">
        <h5 class="description">ASICS Gel Lyte III New York ECP</h5>
        <p class="paragraph">US 11, 350 USD</p>
    </a>
</div>

</body>
</html>
