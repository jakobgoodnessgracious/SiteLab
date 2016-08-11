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
            td{
                border-top: none !important;
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
                <ul class="nav nav-tabs" style="border-color: black;" id="navmargintop">
                        <li role="presentation"><a href="${pageContext.request.contextPath}/index">Home</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/luckySevens">Lucky Sevens</a></li>
                        <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/factorizor">Factorizor</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/interestCalculator">Interest Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/tipCalculator">Tip Calculator</a></li>
                        <li role="presentation"><a href="${pageContext.request.contextPath}/unitConverter">Unit Converter</a></li>
                    </ul>   
                </div>
                
                <div class="container-fluid" id="contentmargintop" >
                    <!--<div class="jumbotron center-block" id="mainjumbo">-->
                    <div class="row">
            <h1 align="center">Factorizor</h1>
        </div>
            <div class="col-xs-offset-4 col-xs-4">
                <form action="factorizor" method="POST" onSubmit="return unHideMe()" class="text-center">
                        <div class="form-group">
                            <label for="numberToFactorize">Number to Factorize:</label> 

                            <input style="margin-top: 20px" type="number" class="form-control" name="numberToFactorize" placeholder="#">

                            <button style="margin-top: 20px" type="submit" class="btn btn-success">Factorize!</button>
                        </div>
                </form>
        </div>
                </div>
                
                <div class="container-fluid, text-center" id="containerMargin">
                    <div class="h3">
            <c:out value="${factorsAre}" />
                    </div>
        </div>
        
        <div class="container">
            <table class="table">
                 <thead>
                    <tr>
                        <th colspan="5">Factors</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${factorsList}" var="factor" varStatus="status">
                    <c:if test="${status.index % 5 == 0}">
                        
                    <tr>
                    
                    </c:if>
                    <td>${factor}</td>
                    <c:if test="${(status.index + 1) % 5 == 0 || status.last}">
                    </tr>
                    </c:if>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <div class="container" id="containerMargin">
            <c:out value="${perfectMessage}" />
        </div>
        
        <div class="container" id="containerMargin">
            <c:out value="${primeMessage}" />
        </div>
        
        <div class="container" id="containerMargin">
            Factors total: <c:out value="${totFacNum}" />
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
        <script>
            function unHideMe(){
                var displayDiv = '#unhideme';
                
                    $(displayDiv).show();
            
            };
            </script>
    </body>
</html>

