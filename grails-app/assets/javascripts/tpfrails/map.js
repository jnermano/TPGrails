$(document).ready(function () {
    myMap();
    dataForMacker();
});

function myMap() {
    var map = map;
    var info = {"latitude": "18.594385", "longitude": "-72.307454", "nom": "Test"};
    //   createMarker(info);

}

var mapOptions = {
    zoom: 9,
    center: new google.maps.LatLng(19.041665, -73.478807),
    mapTypeId: google.maps.MapTypeId.TrafficLayer,
    zoomControl: true,
    scaleControl: true
}

var map = new google.maps.Map(document.getElementById('map'), mapOptions);

var markers = [];

var infoWindow = new google.maps.InfoWindow();

var createMarker = function (info) {
    //  alert(info)
    var marker = new google.maps.Marker({
        map: map,
        position: new google.maps.LatLng(info.latitude, info.longitude),
        title: info.nom
    });
    marker.content = '<div class="infoWindowContent"><img src="" alt="" style="height:100px;">' +
        '<div class="col-md-6"><asset:image src="' + info.id + '.jpg" height="100"/></div> ' +
        '<div class="col-md-6">' + info.emplacement + '</div>' +
        '<div class="col-md-12" style="text-align:center;margin-top:20px;"> <hr>' +
        '<button class="btn btn-info btn-xs" onclick="loadCustum(' + info.id + ')" style="margin-top:20px;">Voir plus</button> </div>' +
        '</div>';
    tableau.push(marker);
    google.maps.event.addListener(marker, 'click', function () {
        infoWindow.setContent('<h2>' + marker.title + '</h2>' + marker.content);
        infoWindow.open(map, marker);
    });

    markers.push(marker);

}


var tableau = [];

/*  $scope.$watch('personnes', function (newVal, oldVal) {
      var dataMap=[];
      angular.forEach($scope.personnes, function(value, key){
          dataMap.push(value);
      });
      for(var i = 0; i < tableau.length; i++){
          tableau[i].setMap();
      }
      tableau = [];
      for (var i = 0; i < dataMap.length; i++){
          createMarker(dataMap[i]);

      }

  }, true);*/
function openInfoWindow(e, selectedMarker) {
    e.preventDefault();
    google.maps.event.trigger(selectedMarker, 'click');
}


function dataForMacker() {
    url_sc = "/poi/indexJson",
        $.get(url_sc, function (result) {

            myObj_sc = JSON.stringify(result);
            // alert(myObj_sc);
            result.forEach(function (element) {
                createMarker(element);
                console.log(element);
                $("#con").append(" <div class=\"controller col-md-4\" style='height: 300px;padding: 10px;'> <h2>" + element.nom + ' ' + element.emplacement + "</h2></div>");
            });
        });


}

function loadCustum(id) {
    $("#custum").empty();
    $("#custum").append('<asset:image src="' + id + '.jpg" height="400"/>');

    // alert(id);
}

function loadImage(id) {
    alert(id);
    var data;
    url_sc = "illustration/indexJson/" + id,
        $.get(url_sc, function (result) {

            data = result;
            console.log(result);
        });

    return data;
}