<a href="#menu-toggle" class="btn btn-primary btn-lg" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger"></span></a><br/>


  <div class="col-sm-3">	
    <div id="wrapper">
	
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <!--<li>
                    <h3 style="color:#FAFAFA;"><b>NIT Andhra</b></h3>
                </li>-->
                <li>
                    <a href="index.php">Home</a>
                </li>
                 <li>
                    <a href="admin_login.php">Admin</a>
                </li>
                 <li>
                    <a href="teacher_login.php">Teacher's Login</a>
                </li>
                <li>
                    <a href="teacher.php">Faculty</a>
                </li>
                <li>
                    <a href="routine.php">Time Table</a>
                </li>
                <li>
                    <a href="course.php">Course</a>
                </li>
                <li>
                    <a href="room.php">Room</a>
                </li>
				<li>
                    <a href="login.php">User</a>
                </li>
                <li>
                    <a href="result.php">Result</a>
                </li>
                <li>
                    <a href="notice.php">Notice/Announcement</a>
                </li>
                <li>
                    <a href="about.php">About</a>
                </li>
                <li>
                    <a href="contact.php">Contact info</a>
                </li>
               
            </ul>
			
        </div>
        <!-- /#sidebar-wrapper -->
		
    </div>
    <!-- /#wrapper -->
	
	
	
	<!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</div>
