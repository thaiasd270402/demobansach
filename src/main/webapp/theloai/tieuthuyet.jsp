<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</head>
<body style="margin-top: 86px;">
<%@include file="../header.jsp" %>

<%
		 String url1 = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
		 %>

	<!-- Products -->
	<div class="container">
	<div class="row">
	<%@include file="../left.jsp" %>
	<div class="col-lg-9">
				<div class="row">
				
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet1.png"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Tiếng chim hót trong bụi mận gai</a>
								</h4>
								<h5>30.000</h5>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet2.png"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Hai số phận</a>
								</h4>
								<h5>40.000</h5>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet3.png"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Túp lều bác Tom</a>
								</h4>
								<div class="row">
							    <div class="col" style="padding-right: 0; text-decoration: line-through; color: red;">
							      <h5>70.000</h5>
							    </div>
							    <div class="col" style="padding-left: 0; ">
							     	<h5>50.000</h5>
							    </div>
							  </div>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet4.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Hồn bướm mơ tiên</a>
								</h4>
								<h5>60.000</h5>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>


					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet5.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Mật mã Da Vinci</a>
								</h4>
								<h5>90.000</h5>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/tieuthuyet/tieuthuyet6.png"
								alt="" ></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Ông già và biển cả</a>
								</h4>
								<div class="row">
							    <div class="col" style="padding-right: 0; text-decoration: line-through; color: red;">
							      <h5>100.000</h5>
							    </div>
							    <div class="col" style="padding-left: 0; ">
							     	<h5>60.000</h5>
							    </div>
							  </div>
								<p class="card-text">Tiểu thuyết đến từ tác giả nổi tiếng trên khắp thế giới</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="<%=url1 %>/img/thieunhi/thieunhi2.png"
								alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Cây tre trăm đốt</a>
								</h4>
								<h5>40.000</h5>
								<p class="card-text">Khám phá những điều kì diệu trong thế giới cổ tích</p>
							</div>
							<div class="row">
							    <div class="col" style="padding-right: 0;">
							      <a href="#"><button type="button" class="btn btn-success w-100 ">Thêm sản phẩm</button></a>
							    </div>
							    <div class="col" style="padding-left: 0;">
							     <a href="#"><button type="button" class="btn btn-danger w-100 h-100">Mua ngay</button></a>
							    </div>
							  </div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				</div>
				<!-- End Products -->
<jsp:include page="../footer.jsp" />
</body>
</html>