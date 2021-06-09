<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
              <li class="breadcrumb-item active">회원관리</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>회원 아이디</th>
                    <th>닉네임</th>
                    <th>회원 구분</th>
                    <th>생년월일</th>
                    <th>고객번호</th>
                  </tr>
                  </thead>
                  <tbody>
                  	<c:forEach var="dto" items="${list}">
                  	<tr>
                  		<td>${dto.mId}</td>
                  		<td>${dto.mNick}</td>
                  		<td>${dto.mRole==1?"일반회원":"펫시터"}</td>
                  		<td>${dto.mBirth}</td>
                  		<td>${dto.mNum}</td>
                  	</tr>
                  	</c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
