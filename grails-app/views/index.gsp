<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

    <asset:stylesheet src="tpgrails/map.css"/>

</head>

<body>

<div class="" style="">

    <div class="" style="">

        <div class="menu_map">
            <div>
                <label>Nom</label>
                <input type="text" placeholder="Ex. Palais sans soucis" class="form-control">

                <h3>Plus recherchées</h3>
                <hr/>
            </div>
        </div>

        <div id="map" style="">
        </div>
    </div>

    <!-- Google fonts - witch you want to use - (rest you can just remove)-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCP2BqQxrgCbks2uY56Y6_doQOzFrBcoj0&?callback=myMap"></script>

    <!-- Master Slider
    <!-- jquery jcarousel -->

    <asset:javascript src="jquery-2.1.1.min.js"/>
    <asset:javascript src="tpfrails/map.js"/>

</body>
</html>
