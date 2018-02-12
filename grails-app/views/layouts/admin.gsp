<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>
        <g:layoutTitle default="Grails"/>
    </title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    %{--
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="jquery.min.js"/>--}%

    %{--<!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">--}%

    <asset:stylesheet src="template/vendor/bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="template/vendor/font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet src="template/css/sb-admin.cs"/>

    <g:layoutHead/>

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">POI Managementp</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
                <a class="nav-link" href="/">
                    <i class="fa fa-fw fa-map-marker"></i>
                    <span class="nav-link-text">Carte</span>
                </a>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseGroupe"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-sitemap"></i>
                    <span class="nav-link-text">Groupes</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseGroupe">
                    <li>
                        <g:link controller="groupe" action="index">Liste</g:link>
                    </li>
                    <li>
                        <g:link controller="groupe" action="create">Nouveau</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapsePoi"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-square"></i>
                    <span class="nav-link-text">POIs</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapsePoi">
                    <li>
                        <g:link controller="poi" action="index">Liste</g:link>
                    </li>
                    <li>
                    <li><g:link controller="poi" action="showGrid">Grille</g:link></li>
                </li>
                    <li>
                        <g:link controller="poi" action="create">Nouveau</g:link>
                    </li>
                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseUser"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-user"></i>
                    <span class="nav-link-text">Utilisateurs</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseUser">
                    <li>
                        <g:link controller="user" action="index">Liste</g:link>
                    </li>
                    <li>
                        <g:link controller="user" action="create">Nouveau</g:link>
                    </li>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseRole"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-user"></i>
                    <span class="nav-link-text">Roles </span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseRole">
                    <li>
                        <g:link controller="role" action="index">Roles</g:link>
                    </li>
                    <li>
                        <g:link controller="userRole" action="index">Role/Utilisateur</g:link>
                    </li>
                </ul>
            </li>


        </ul>
        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">


            <sec:ifNotLoggedIn>
                <li class="nav-item">
                    <g:link controller="login" action="auth"  class="nav-link">
                        <i class="fa fa-fw fa-signing"></i>Login
                    </g:link>
                </li>
            </sec:ifNotLoggedIn>

            <sec:ifLoggedIn>
                <li class="nav-item">
                    <g:link controller="profile" action="index" class="nav-link">
                        Hello, ${sec.loggedInUserInfo(field: 'username')}
                    </g:link>
                </li>

                <li class="nav-item">
                    <g:link controller="logout" action="index" class="nav-link" data-toggle="modal" data-target="#exampleModal">
                        <i class="fa fa-fw fa-sign-out"></i>Logout
                    </g:link>
                </li>
            </sec:ifLoggedIn>

        </ul>
    </div>
</nav>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-12">

                <g:layoutBody/>

            </div>
        </div>
    </div>

    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © Your Website 2018</small>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>

                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>

                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <g:form controller="logout" action="index" method="POST">
                        <input type="submit" class="btn btn-primary" value="Logout">
                    </g:form>
                </div>
            </div>
        </div>
    </div>
    %{--<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>--}%

    <asset:javascript src="template/vendor/jquery/jquery.min.js"/>

    <asset:javascript src="template/vendor/bootstrap/js/bootstrap.bundle.min.js"/>
    <asset:javascript src="template/vendor/jquery-easing/jquery.easing.min.js"/>
    <asset:javascript src="template/js/sb-admin.min.js"/>

    <script type="text/javascript">
        $(document).ready(function () {
            $("table").addClass("table table-bordered table-responsive");
        });
    </script>

</div>

</body>

</html>
