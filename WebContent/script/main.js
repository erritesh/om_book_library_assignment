var checkLoginPass = function () {
    var username = document.getElementById("username").value;
    var pass = document.getElementById("password").value;
    if (username === "admin" && pass === "admin") {
    	 location.replace("adminMain.jsp");
    }
    else {
    	 location.replace("index.jsp");
    }
};

$(document).ready(function() {
    $('#example').DataTable();
} );

