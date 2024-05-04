<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <style>
		.nav-css{
		    z-index: 1;
   			 width: 100%;
   			 top: 0;
		}
</style>
    
 <%
 String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	+ request.getContextPath();
 %> 
<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light position-fixed z-index-1 nav-css ">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="<%=url %>/img/logo/logobook.png"
				alt="Bootstrap"  width="48" >
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="<%=request.getContextPath()%>/index.jsp">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="<%=url %>/dacbiet/giamgia.jsp">
							Giảm giá</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Thể loại </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="<%=url %>/theloai/giaotrinh.jsp">Sách giáo trình</a></li>
							<li><a class="dropdown-item" href="<%=url %>/theloai/thieunhi.jsp">Sách thiếu nhi</a></li>
							<li><a class="dropdown-item" href="<%=url %>/theloai/trinhtham.jsp">Sách truyện</a></li>
							<li><a class="dropdown-item" href="<%=url %>/theloai/tieuthuyet.jsp">Tiểu thuyết</a></li>
							<li><a class="dropdown-item" href="<%=url %>/theloai/lichsu.jsp">Sách lịch sử</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled">Hết hàng</a>
					</li>
				</ul>
				<form class="d-flex" role="search" style="position: relative;display: block;float: right;">
					<input class="form-control me-2" type="search"
						placeholder="Nội dung tìm kiếm" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Tìm</button>
					<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null;
						if (obj!=null)
							khachHang = (KhachHang)obj;
						
						if(khachHang==null){
					%>
						<a class="btn btn-primary" style="white-space: nowrap;" href="<%=url %>/khachhang/dangnhap.jsp">
							Đăng nhập
						</a>
					<%} else { %>
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
						<li class="nav-item dropdown dropstart"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Tài khoản</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Đơn hàng của tôi</a></li>
								<li><a class="dropdown-item" href="#">Thông báo</a></li>
								<li><a class="dropdown-item" href="<%=url %>/khachhang/thaydoianh.jsp">Thay đổi ảnh avatar</a></li>
								<li><a class="dropdown-item" href="<%=url %>/khachhang/thaydoithongtin.jsp">Thay đổi thông tin</a></li>
								<li><a class="dropdown-item" href="<%=url %>/khachhang/doimatkhau.jsp">Đổi mật khẩu</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="<%=url %>/khach-hang?hanhDong=dang-xuat">Thoát tài khoản</a></li>
							</ul></li>
					</ul>				
						
					<% } %>
				</form>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->