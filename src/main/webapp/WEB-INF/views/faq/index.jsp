<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java"
         contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page session="false" import="java.util.*" %>
<!doctype html>
<%@ include file="../includes/meta_head.jsp"%>
<%@ include file="../includes/header.jsp"%>
<html lang="en">
<body>

<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">자주하는질문</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        &nbsp;
                        <div class="pull-right">
                            <button id="regBtn" type="button" class="btn btn-default btn-xs">등록하기</button>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <table width="100%" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>공지 번호</th>
                                    <th>제목</th>
                                    <th>내용</th>
                                    <th>등록일자</th>
                                </tr>
                            </thead>
                            <!-- tbody start -->
                            <c:forEach items="${faqList}" var="faq">
                                    <tr>
                                        <td>
                                            <c:out value="${faq.faqNo}"/></td>
                                        <td>
                                            <a target="_blank" href='/faq/content?faqNo=<c:out value="${faq.faqNo}"/>'>
                                                <c:out value="${faq.title}"/>
                                            </a>
                                        </td>

                                        <td><c:out value="${faq.content}"/></td>
                                        <td><c:out value="${faq.regDt}"/></td>
                                    </tr>
                            </c:forEach>
                            <!-- tbody end -->
                        </table>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
 $(document).ready(function() {
  $("#regBtn").on("click", function() {
   self.location = "/faq/register";
  })
 });
</script>

</body>
</html>
<%@ include file="../includes/meta_footer.jsp"%>
<%@ include file="../includes/footer.jsp"%>
