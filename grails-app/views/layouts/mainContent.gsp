<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />




    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="bootstrap-responsive.min.css" />
    <asset:stylesheet src="fullcalendar.css" />
    <asset:stylesheet src="matrix-style.css" />
    <asset:stylesheet src="matrix-media.css" />
    <asset:stylesheet src="font-awesome.css" rel="stylesheet" />
    <asset:stylesheet src="query.gritter.css" />


    <g:layoutHead/>
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part-->


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
                <li class="divider"></li>
                <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
            </ul>
        </li>
        <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
                <li class="divider"></li>
                <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
                <li class="divider"></li>
                <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
                <li class="divider"></li>
                <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class=""><a title="" href="/logout/index"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
    </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<li id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href="/"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>

        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <li>
                 <g:link controller="${c.logicalPropertyName}"> <i class="icon icon-signal"></i> ${c.shortName}</g:link>
            </li>
        </g:each>


    </ul>
</li>
</div>

<div id="content"  style="background: #FFF">
    <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a class="home" href="${createLink(uri: '/')}">  <i class="icon-home"></i><g:message code="default.home.label"/></a>
                 </div>
            </div>
    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">

            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>
<div class="container">
    <g:layoutBody/>
</div>
    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
        <hr/>


</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
    <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>









<asset:javascript src="excanvas.min.js"/>
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="jquery.ui.custom.js"/>
<asset:javascript src="bootstrap.min.js"/>

<asset:javascript src="jquery.peity.min.js"/>
<asset:javascript src="fullcalendar.min.js"/>
<asset:javascript src="matrix.js"/>

<asset:javascript src="jquery.gritter.min.js"/>
<asset:javascript src="matrix.interface.js"/>
<asset:javascript src="matrix.chat.js"/>
<asset:javascript src="jquery.validate.js"/>
<asset:javascript src="matrix.form_validation.js"/>
<asset:javascript src="jquery.wizard.js"/>
<asset:javascript src="jquery.uniform.js"/>
<asset:javascript src="select2.min.js"/>
<asset:javascript src="matrix.popover.js"/>
<asset:javascript src="jquery.dataTables.min.js"/>
<asset:javascript src="matrix.tables.js"/>

<script>
    $(document).ready(function() {
        $("table").addClass("table table-bordered table-striped table-hover");//.addClass("table-bordered").addClass("table-striped").addClass("table-hover");
    });
</script>


</body>
</html>
