<!DOCTYPE html>
<html>
<head>
    <title> SMM SITE PAGE </title>
</head>
<body>
<h1> SMM SITE HEADER 1</h1>
<h4> LIST OF EXAMPLES:</h4>
<#list examples as example>
    <div>
        <img src="/examples/${example.id}" height="180px"/>
    </div>
</#list>
</body>
</html>