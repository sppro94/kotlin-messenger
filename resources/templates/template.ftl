<#-- @ftlvariable name="user" type="com.duyvu.model.User" -->

<#macro mainLayout title="Welcome">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>${title} | PriChat</title>
    <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
    <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
    <link rel="stylesheet" type="text/css" href="/styles/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/styles/main.css">
    <link rel="stylesheet" type="text/css" href="/styles/messenger.css">
    <link rel="stylesheet" href="/styles/jquery.loadingModal.css">

    <link rel="shortcut icon" type="image/x-icon" href="/styles/favicon.ico"/>

    <script src="/styles/jquery.min.js"></script>
    <script src="/styles/jquery.loadingModal.js"></script>


</head>
<body>
    <div class="sidebar pure-u-1 pure-u-md-1-4">
        <div class="page-title pure-u-1">
            <h2>${title}</h2>
            <#if user??>
                <h4>${user.email}</h4>
            </#if>
        </div>
        <div class="header">
            <div class="brand-title">PriChat</div>
            <#if user??>

            </#if>
            <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-item"><a class="pure-button" href="/">homepage</a></li>
                    <#if user??>
                        <li class="nav-item"><a class="pure-button" href="/messenger">Messenger</a></li>
                        <li class="nav-item"><a class="pure-button" href="/logout">sign out
                            [${user.displayName?has_content?then(user.displayName, user.userId)}]</a></li>
                    <#else>
                        <li class="nav-item"><a class="pure-button" href="/register">sign up</a></li>
                        <li class="nav-item"><a class="pure-button" href="/login">sign in</a></li>
                    </#if>
                </ul>
            </nav>

        </div>
    </div>

    <div class="content pure-u-1 pure-u-md-3-4">
        <#nested />
    </div>

    <div class="footer">
        Vu Phuong Duy, ${.now?string("yyyy")}
    </div>
</body>
</html>
</#macro>
