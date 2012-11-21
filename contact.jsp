<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Contact Us</title>
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <style type=text/css>
            body  {font-family:arial;}
            h2    {color:gray; text-align:center;}
            td,th {font-size: 10pt; text-align:left}
           
            .info{width: 150px;}
        </style>
        <script type="text/javascript" 
        src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAd2guEXJx97dc2EM1bdjgD0JHAcFCq3_I&sensor=true" >

        </script>

        <script type="text/javascript">
           function initialize(){
               var storedata={
                                "1":{
                                        lat:"40.082648000000",
                                        lon:"-74.169315000000",
                                        phone:"1-888-363-8010",
                                        servicephone:"800-251-8142 x4",
                                        street:"1165 Route 88",
                                        city:"Lakewood",
                                        state:"NJ",
                                        zip:"08701",
                                        name:"Lakewood",
                                        id:"1",
                                        isstore:true,
                                        isservice:true,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                },
                                "2":{
                                        lat:"39.953232000000",
                                        lon:"-74.156491000000",
                                        phone:"1-888-363-8010",
                                        servicephone:"800-251-8142 x3",
                                        street:"1518 Route 37 East",
                                        city:"Toms River",
                                        state:"NJ",
                                        zip:"08753",
                                        name:"Toms River",
                                        id:"2",
                                        isstore:true,
                                        isservice:true,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                },
                                "3":{
                                        lat:"39.827892000000",
                                        lon:"-74.926505000000",
                                        phone:"1-888-363-8010",
                                        servicephone:"1-888-363-8010",
                                        street:"104 Rte 73",
                                        city:"Voorhees",
                                        state:"NJ",
                                        zip:"08043",
                                        name:"Voorhees",
                                        id:"3",
                                        isstore:true,
                                        isservice:false,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                },
                                "4":{
                                        lat:"39.699877000000",
                                        lon:"-75.004195000000",
                                        phone:"1-888-363-8010",
                                        servicephone:"1-888-363-8010",
                                        street:"1051 N Black Horse Pike",
                                        city:"Williamstown",
                                        state:"NJ",
                                        zip:"08094",
                                        name:"Williamstown",
                                        id:"4",
                                        isstore:true,
                                        isservice:false,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                },
                                "5":{
                                        lat:"39.430546000000",
                                        lon:"-74.603499000000",
                                        phone:"1-888-363-8010",
                                        servicephone:"800-251-8142 x2",
                                        street:"6201 Black Horse Pike",
                                        city:"Egg Harbor",
                                        state:"NJ",
                                        zip:"08234",
                                        name:"Egg Harbor Twp",
                                        id:"5",
                                        isstore:true,
                                        isservice:true,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                },
                                "6":{
                                        lat:"39.781492000000",
                                        lon:"-74.951627000000",
                                        phone:"(856) 335-0910",
                                        servicephone:"800-251-8142 x1",
                                        street:"122 Cross Keys Road",
                                        city:"West Berlin",
                                        state:"NJ",
                                        zip:"08009",
                                        name:"Winslow",
                                        id:"6",
                                        isstore:false,
                                        isservice:true,
                                        info:"",
                                        mrkr:null,
                                        dist:0,
                                        point:null
                                }



            };
            
           var mapOptions = {
                    center: new google.maps.LatLng(39.827892000000,-74.926505000000),
                    zoom: 9,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    mapTypeControl: true,
                    mapTypeControlOptions: {
                        style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR
                    }

            };
                
            map = new google.maps.Map(
                    document.getElementById("myMap"),
                    mapOptions
            );  
                            
                
            marker1 = new google.maps.Marker({
                position: new google.maps.LatLng(39.781492000000,-74.951627000000),
                map:map
            }); 
            
            var infoWindow1 = new google.maps.InfoWindow({
                content: '<div class="info"><p style="font-family: Arial; font-size: 12px; line-height: 16px;">Lakewood<br/> 08701 NJ <br/>Street: 1165 Route 88<br/>Phone:800-251-8142 </p> '
            });
                // Add a click event to a marker
            google.maps.event.addListener(marker1, 'click', function() {
                infoWindow1.open(map, marker1);
            });
            
            
            marker2 = new google.maps.Marker({              
                position: new google.maps.LatLng(40.082648000000,-74.169315000000),
                map:map
            });     
             var infoWindow2 = new google.maps.InfoWindow({
                content: '<div class="info"><p style="font-family: Arial; font-size: 12px; line-height: 16px;">Lakewood<br/> 08701 NJ <br/>Street: 1165 Route 88<br/>Phone:800-251-8142 </p> '
            });
                // Add a click event to a marker
            google.maps.event.addListener(marker2, 'click', function() {
                infoWindow2.open(map, marker2);
            });
           
            marker3 = new google.maps.Marker({             
                 position: new google.maps.LatLng(39.953232000000,-74.156491000000),
                 map:map
            });  
            var infoWindow3 = new google.maps.InfoWindow({
                content: '<div class="info"><p style="font-family: Arial; font-size: 12px; line-height: 16px;">Lakewood<br/> 08701 NJ <br/>Street: 1165 Route 88<br/>Phone:800-251-8142 </p> '
            });
                // Add a click event to a marker
            google.maps.event.addListener(marker3, 'click', function() {
                infoWindow3.open(map, marker3);
            });
           
            marker4 = new google.maps.Marker({                
                position: new google.maps.LatLng(39.699877000000,-75.004195000000),
                map:map
            });      
            var infoWindow4 = new google.maps.InfoWindow({
                content: '<div class="info"><p style="font-family: Arial; font-size: 12px; line-height: 16px;">Lakewood<br/> 08701 NJ <br/>Street: 1165 Route 88<br/>Phone:800-251-8142 </p> '
            });
                // Add a click event to a marker
            google.maps.event.addListener(marker4, 'click', function() {
                infoWindow4.open(map, marker4);
            });
            marker5 = new google.maps.Marker({
                position: new google.maps.LatLng(39.430546000000,-74.603499000000),
                 map:map
            });
            var infoWindow5 = new google.maps.InfoWindow({
                content: '<div class="info"><p style="font-family: Arial; font-size: 12px; line-height: 16px;">Lakewood<br/> 08701 NJ <br/>Street: 1165 Route 88<br/>Phone:800-251-8142 </p> '
            });
                // Add a click event to a marker
            google.maps.event.addListener(marker5, 'click', function() {
                infoWindow5.open(map, marker5);
            });
            
           }

         </script>
         
    </head>
    <body onLoad="initialize()">
        <div align=center>
        <!-- ------------------------------------------------------- -->
       

         <%@include file="header.jsp"%>

             <br>
             <!-- display airport data -->
             <div id="myDiv">
             <!--  
                 <ul> 
                     <li><a href="javascript:void(0);" onClick="showAddress(myForm.aname.value);">Lakewood</a></li>
                     <li><a href="javascript:void(0);" onClick="showAddress(myForm.aname.value);">Toms River</a></li>
                     <li><a href="javascript:void(0);" onClick="showAddress(myForm.aname.value);">Voorhees</a></li>
                     <li><a href="javascript:void(0);" onClick="showAddress(myForm.aname.value);">Williamstown</a></li>
                 </ul>
                 -->
                 <p>LakeWood<br/>
										Address: 1165 Route 8 Lakewood NJ<br/>
										zip:08701<br/>
										ServicePhone:"800-251-8142 x4<br/>
				</p>
				<p>Toms River<br/>
										Address: 1518 Route 37 East NJ <br/>
										zip:08753<br/>
										ServicePhone: 800-251-8142<br/>
				</p>
				<p>Voorhees<br/>
										Address: Voorhees 104 Rte 73 NJ<br/>
										zip:08753<br/>
										ServicePhone: 800-251-8142<br/>
										</p>
             </div>

             <br>
             <!-- display map -->
             <div id="myMap" style="width: 600px; height: 600px; visibility: visible"></div>
     
        <!-- ------------------------------------------------------- -->
        
        <table>
            <tr>
                <td>
                    
                </td>
            </tr>
            
        </table>
        </div>
    </body>
</html>
