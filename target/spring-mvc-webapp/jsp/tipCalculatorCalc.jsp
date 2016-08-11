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
            th {
                text-align: center;
            }

            td {
                width: 33.33%;
            }
            table{
                margin-top: 30px;
            }
            
            #containerMargin {
                margin-top: 20px;
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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/tipCalculator">Tip Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/unitConverter">Unit Converter</a></li>
                    </ul>   
                </div>
            </div>
            <div class="container-fluid" id="contentmargintop">
                <div class="row-fluid">
                    <h1 align="center" style="margin-bottom: 0px;">Tip Calculator</h1>
                </div>

                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="col-xs-offset-4 col-xs-6">
                            <p style="color: red"><c:out value="${mustTypeSomething}" /></p>
                        </div>
                    </div>

                </div>

                <div class="container-fluid">
                    <form action="tipCalculator" method="POST">

                        <div class="row-fluid">
                            <div class="col-xs-12 text-center">
                                <label for="amount">What is the amount for which you would like to calculate the tip?</label> 
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="col-xs-offset-4 col-xs-4 text-center">
                                <input style="margin-top: 20px" type="number" class="form-control" name="amount" placeholder="$">

                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center">
                                <label for="tipPercent" style="margin-top: 20px">What percentage would you like to tip?</label> 
                            </div>
                            <div class="row-fluid">
                                <div class="col-xs-offset-4 col-xs-4 text-center" >
                                    <input style="margin-top: 20px" type="number" class="form-control" name="tipPercent" placeholder="%">
                                </div>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="col-xs-12 text-center">
                                <button style="margin-top: 20px" type="submit" class="btn btn-warning">Calculate Tip!</button>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="container-fluid" style="margin-top: 20px;">

                    <div class="container" class="containerMargin">
                        <div class="col-xs-12 text-center h4">
                            Amount: $<c:out value="${amount}" />
                        </div>
                    </div>

                    <div class="container" class="containerMargin">
                        <div class="col-xs--12 text-center h4">
                            Tip %: <c:out value="${tipPercent}" />
                        </div>
                    </div>

                    <div class="container" class="containerMargin">
                        <div class="col-xs-12 text-center h4">
                            Tip: $<c:out value="${tip}" />
                        </div>
                    </div>

                    <div class="container" class="containerMargin">
                        <div class="col-xs-12 text-center h4">
                            Total: $<c:out value="${total}" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="push"></div>
        </div>
        <div class ="footer">
            <div class="container-fluid">
                <div class="jumbotron" id="jumbotronbottomofpage">
                    <p id="pcenter"  style="margin-top: 0px">Created By: <span style="color: black">Jakob Giese </span> 2016<br><span style="color: black">Powered By Java and Bootstrap</span></p> 
                </div>
            </div>
        </div>

    </body>
</html>

