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
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/luckySevens">Lucky Sevens</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalculator">Interest Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalculator">Tip Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/unitConverter">Unit Converter</a></li>
                    </ul>
            </div>
        </div>
                
                <div class="container-fluid" id="indexcontentmargintop" >
                    <!--<div class="jumbotron center-block" id="mainjumbo">-->
                    <div class="circleshading center-block">
                    <div class="circle center-block" id="circletextpadding">
                    <div class="row-fluid">
            <h2 class="col-xs-12 text-center">Welcome!</h2>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <p >You have landed on this page, replete with utilities,</p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                            <p >hand-crafted, buzzed, sawed, seared, <span style="color: #e12d38">fired</span>, <span style="color: #dc7334">fried</span> and <span style="color: #e3ac1b">spark-shot</span></p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <p >signed with love from Here — boxed, packaged and over-nighted to:</p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <h4 style="color: lightblue; margin-top: 0px; margin-bottom: 0px;">You!</h4>
                        </div>
                    </div>
                          <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                            <hr style="border-color: wheat">
                        </div>
                    </div>                     
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <p >Take some time; Walk around; Peruse; Browse . . .</p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <p >And most of all:</p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-xs-12 text-center">
                        <p>Enjoy, my Friend.</p>
                        </div>
                        <!--</div>-->
                    </div>
                    </div>
            </div>
                </div>
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

