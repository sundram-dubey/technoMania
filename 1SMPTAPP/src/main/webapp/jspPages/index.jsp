<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html ng-app="mailApp">
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="/jsPages/index.js"></script>
	
</head>
<body ng-controller="mailController">
	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Mail
										Sender</p>

									<form class="mx-1 mx-md-4" ng-submit="submitFormData(common)" ng-model="common">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="email" id="form3Example1c" class="form-control"
													name="from" ng-model="common.from"/> <label class="form-label"
													for="form3Example1c">from</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="email" id="form3Example1c" class="form-control"
													name="to" ng-model="common.to"/> <label class="form-label"
													for="form3Example1c">To</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example3c" class="form-control"
													name="sub" ng-model="common.sub"/> <label class="form-label"
													for="form3Example3c">subject</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<textarea id="form3Example4c" class="form-control"
													name="msg" ng-model="common.msg"></textarea>
												<label class="form-label" for="form3Example4c">message</label>
											</div>
										</div>

										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="reset" class="btn btn-danger btn-lg">clear</button>&nbsp;&nbsp;&nbsp;&nbsp;
											<button type="submit" class="btn btn-primary btn-lg">send</button>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-left order-1 order-lg-2">

									<img src="/img/mailApi.png" class="img-fluid" alt="mail mage">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
