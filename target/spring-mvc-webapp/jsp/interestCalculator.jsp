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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/interestCalculator">Interest Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalculator">Tip Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/unitConverter">Unit Converter</a></li>
                    </ul>    
                </div>
            </div>

            <div class="container-fluid" id="contentmargintop" >
                <div class="row">
                    <h1 align="center" style="margin-bottom: 0px;">Interest Calculator</h1>
                </div>


                <form action="${pageContext.request.contextPath}/interestCalculator" method="POST" class="text-center">

                    <div class="form-group">
                        <div class="col-xs-12">
                            <label for="moneyToBet" style="margin-bottom: 10px;">What is the initial amount of your principal?</label> 
                        </div>
                        <div class="col-xs-offset-4 col-xs-4">
                            <input type="number" class="form-control" name="curBal" placeholder="$">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <label for="moneyToBet" id="spacer">What is the interest rate of the term?</label> 
                        </div>
                        <div class="col-xs-offset-4 col-xs-4">
                            <input type="number" class="form-control" name="iRate" placeholder="Rate %">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <label for="moneyToBet" id="spacer">Would you like to compound interest monthly, quarterly or yearly?</label> 
                        </div>
                        <div class="col-xs-offset-4 col-xs-4">
                            <input type="text" class="form-control" name="intCompRate" placeholder="Yearly, Monthly, Quarterly">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <label for="moneyToBet" id="spacer">How many years will the money remain in the fund?</label> 
                        </div>
                        <div class="col-xs-offset-4 col-xs-4">
                            <input type="number" class="form-control" name="years" placeholder="Years">
                        </div>
                        <div class="col-xs-12">
                            <button style="margin-top: 20px" type="submit" class="btn btn-danger">Calculate Interest!</button>
                        </div>
                    </div>

                </form>



            </div>

            <p>
                <%@include file="emptyInputFragment.jsp"%>
            </p>
            <p>
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="col-xs-12 text-center">
                        <p style="color: red"><c:out value="${badInput}" /></p>
                    </div>
                </div>
            </div>
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
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.2.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <!--<script src="${pageContext.request.contextPath}/js/scripts.js"></script>-->
</body>
</html>

