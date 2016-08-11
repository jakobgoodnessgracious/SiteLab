<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <!--<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet">-->
        <link href="${pageContext.request.contextPath}/css/mystyles.css" rel="stylesheet">
        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/thegieseone.png">

        <style>
            form {
                text-align: center;
            }

            .btn {
                background: #239B56  ;
                color: #eeeeee;
            }
            .form-control{
                margin-bottom: 20px;
            }

            .btn{
                position: relative;
            }

            .dropdown-menu > li > a:hover {
                background-color: #58D68D;
                background-image: none;
            }

            .btn:hover{
                background-color: #49D584;
                color: black;
            }
            .btn:focus{
                border-color: red;
            }
            .dropdown-toggle:active, .open .dropdown-toggle{
                background: #49D584 !important;
                color: black !important;
            }
            
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="container-fluid">
                <div class="jumbotron" id="jumbotrontopofpage">
                    <p id="pcenter">Software Craftsmanship Guild Java Cohort<br>JSP Site Lab</p> 
                </div>
            </div>
            <div class="container-fluid" >
                <div class="navbar" style="margin-bottom: 0px">
                    <ul class="nav nav-tabs" style="border-color: black;" id="navmargintop">
                        <li role="presentation"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/luckySevens">Lucky Sevens</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalculator">Interest Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalculator">Tip Calculator</a></li>
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/unitConverter">Unit Converter</a></li>
                    </ul>  
                </div>
            </div>

            <div class="container-fluid" id="contentmargintop" >

                <div class="row-fluid">
                    <div class="col-xs-12 text-center">
                        <h1 style="margin-bottom:0px;"> Unit Converter</h1>
                    </div>
                </div>



                <div class="container-fluid">

                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                            <p id="labelemulator" style="margin-top: 15px">Please select a Unit Type from the drop-down menu:</p>
                        </div>
                    </div>
                </div>
                <form action="unitConverter" method="POST">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center ">
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Category
                                    <span class="caret"></span></button>
                                <ul id="dropTypes" class="dropdown-menu" role="menu">
                                </ul>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <input style="margin-top: 20px" type="hidden" id="unitType" value="" class="form-control" name="unitType" placeholder="">
                        </div>
                    </div>
                    <div class="container-fluid" style="margin-top: 10px">
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center">
                                <p id="labelemulator">Please select the specific rate from which you would like to convert:</p>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid" >
                        <div class="col-xs-12 text-center ">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Unit Type
                                <span class="caret"></span></button>
                            <ul id="dropTypesSpecific" class="dropdown-menu" role="menu" >

                            </ul>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="form-group">
                            <div class="col-xs-12 text-center">
                                <label for="width" id="unitShower"></label> 
                            </div>
                        </div>
                        <div class="row-fluid">
                            <input style="margin-top: 20px" type="hidden" id="unitShowerz" value="" class="form-control" name="convertFrom" placeholder="">
                            <div class="col-xs-4 col-xs-offset-4">
                                <input type="text" class="form-control" style="margin-bottom:14px" name="unitNumber" placeholder="Unit">
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center">
                                <p id="labelemulator">Please select the specific rate to which you would like to convert:</p>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center ">
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Unit Type
                                    <span class="caret"></span></button>
                                <ul id="dropTypesSpecifics" class="dropdown-menu" role="menu" >

                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid" style="margin-top: 10px">
                        <div class="form-group">
                            <div class="col-xs-12 text-center">
                                <label for="width" id="unitShowers"></label> 
                                <input style="margin-top: 20px" type="hidden" id="unitShowerzez" value="" class="form-control" name="convertTo" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center ">
                                <button style="border: 1px solid black" type="submit" class="btn btn-responsive">Do Conversion!</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <p>
                <%@include file="emptyInputFragment.jsp"%>
            </p>


            <div class="push">
            </div>
        </div>
        <div class = footer>
            <div class="container-fluid">
                <div class="jumbotron" id="jumbotronbottomofpage">
                    <p id="pcenter"  style="margin-top: 0px">Created By: <span style="color: black">Jakob Giese </span> 2016<br><span style="color: black">Powered By Java and Bootstrap</span></p> 
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/js/siteLab.js"></script>
    </body>
</html>

