/**
 * 
 */

 var app = angular.module("mailApp",[]);
 
 app.controller("mailController",function($scope, $http){
	 $scope.name  = "Sundram";
	 $scope.submitFormData = function(paramVal){
		 var url = '/sendMail';
		 var config = {
			 headers: {
				 'Content-Type': 'application/json'
			 }
		 };
		 $http.post(url, paramVal,config).then(function(response){
        	alert(response.data);
            });  
	 }
 });