<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.JsonObject" %>
<jsp:include page="header.jsp"/>

<%
    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

    map = new HashMap<Object, Object>();
    map.put("label", "strongly like");
    map.put("y", 35);
    map.put("exploded", true);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "like");
    map.put("y", 20);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "neutral");
    map.put("y", 18);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "dislike");
    map.put("y", 15);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "strongly dislike");
    map.put("y", 5);
    list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>
<html>
<head>
    <title>summary</title>
    <script type="text/javascript">
        window.onload = function() {

            var chart = new CanvasJS.Chart("chartContainer", {
                theme: "light2",
                animationEnabled: true,
                exportFileName: "New Year Resolutions",
                exportEnabled: true,
                title:{
                    text: "Overall Feedback Points"
                },
                data: [{
                    type: "pie",
                    showInLegend: true,
                    legendText: "{label}",
                    toolTipContent: "{label}: <strong>{y}%</strong>",
                    indexLabel: "{label} {y}%",
                    dataPoints : <%out.print(dataPoints);%>
                }]
            });

            chart.render();

        }
    </script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%; margin-top: 100px;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
