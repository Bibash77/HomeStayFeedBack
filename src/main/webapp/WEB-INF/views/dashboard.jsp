<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<img src="img/img.png">
<!-- START THE FEATURETTES -->
<div class="jumbotron text-center bg-img">
    <h1>Pawan Home Stay</h1>
    <p>Feel like a home!</p>
  <%--  <img src="../static/img/homestay.png">--%>
    <%--actions button will be shown if user type is administrator--%>
    <div class="row justify-content-center" id="admin-block" hidden>
        <a href="#" data-toggle="modal" data-target="#registerModal">
        <button type="button" class="btn background" data-toggle="modal" data-target="#exampleModal">
            Register User
        </button>   </a>
        <a href="${pageContext.request.contextPath}/feedback-list">
            <button type="button" class="btn btn-success ml-4">
                View Feedbacks
            </button>
        </a>
    </div>
    <%--action to be shown if user type is normal user--%>
    <div class="row justify-content-center" id="user-block" hidden>
        <a href="${pageContext.request.contextPath}/feed-back">
            <button type="button" class="btn background ml-4">
                Give Feedback
            </button>

        </a>
        <a onclick="window.location.href= '/feed-back/'+ sessionStorage.getItem('userId')">
            <button type="button" class="btn btn-success ml-4">
                My Feedback
            </button>

        </a>
    </div>
</div>
<div class="container-fluid home-content1">
    <div class="row">
        <div class="col-md-4 content1-left">
            <h3 class="text-secondary">Introduction</h3>
            <!-- <div class="content1-left"></div> -->
        </div>
        <div class="col-md-8 content1-right">
            <p>
                Belkot is a beautiful village that is surrounded by green hills and terrace farms. You are welcome to
                participate in some of the traditional farming practices and assist your hosts in their fields. You
                might like to try your hand planting rice with the muddy fields, or just explore the diverse culture and
                lifestyle within this small community with your Nepalese family.</p>
        </div>
    </div>
</div>
<hr>
<div class="container-fluid home-content1 mt-4">
    <div class="row">
        <div class="col-md-4 content1-left">
            <h3 class="text-secondary">About the
                Homestay</h3>
            <!-- <div class="content1-left"></div> -->
        </div>
        <div class="col-md-8 content1-right">
            <p>
                Seven homestays comprise the Nuwakot Community Homestay, in the village of Belkot. This is quite a poor
                village, even by Nepali standards, so the lifestyle is simple here. The accommodation is also simple,
                but adequate to meet your needs. Clean linen will be provided for the beds. </p>
            <p>
                As at all Community Homestays in Nepal that are part of this project, you’ll have a private room that’s
                in close proximity to your host family. So, you can enjoy private time when you feel like it, but also
                socialise with your hosts when you want.</p>
            <p>
                Bathrooms are located outside, detached from the main house, as is common in rural Nepal. Toilets are
                squat-style. Toilet paper will be provided.</p>
            <p>
                Your stay includes breakfast, lunch, and dinner at the homestay. Authentic Nepali food as it is prepared
                in rural areas is filling and nutritious, usually made with fresh and locally grown ingredients. While
                Nepali dal bhat is famous and you’ll get many chances to eat it during your travels in Nepal, it’s
                always interesting to see the regional variations. Your hosts in Belkot will prepare the meal with local
                touches, depending on what’s in season and available.</p>

            <div class="row mt-5">
                <div class="col-md-12">
                    <strong>About Belkot, Nuwakot</strong>

                    <p class="justify-center">
                        ‘Nuwakot’ actually means ‘nine forts’, and Belkot is one of those nine that once stood around
                        the
                        Nuwakot area. Nuwakot district is a culturally and historically rich area, as well as being
                        naturally attractive. There’s lots to see and do here.
                    </p>
                    <p class="justify-center">
                        In Belkot itself, a highlight is watching your hosts and the other villagers at work on their
                        farms.
                        The village is surrounded by terraced farmland, which is dazzlingly green after the rains. A
                        walk
                        with your hosts around the community is included in your stay package. If you happen to be in
                        town
                        during the right season (early monsoon), you can even help plant rice.
                    </p>
                    <p>
                        Belkot is a poor village that suffered a lot of damage from natural disasters. If you’re
                        interested
                        in volunteering at the local high school, your generous donation of time would be greatly
                        appreciated. Volunteering allows you to stay in the village a bit longer and become more
                        intimately
                        acquainted with Nepali village life. Even if you can’t volunteer, you’re welcome to visit the
                        school.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<%--register modal--%>
<!-- Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header background">
                <h5 class="modal-title" id="registerModalLabel">Register</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form name="registerForm" id="registerForm">
                    <div class="form-group">
                        <label for="fullName" class="col-form-label">Full Name:</label>
                        <input type="text" name="fullName" class="form-control" id="fullName">
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-form-label">Username:</label>
                        <input type="text" name="userName" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="userType" class="col-form-label">User Type:</label>
                        <select class="form-control" name="userType" id="userType">
                            <option selected hidden>Select UserType</option>
                            <option value="ADMIN">ADMIN</option>
                            <option value="USER">User</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">Password:</label>
                        <input type="password" class="form-control" id="password" name="pasword">
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber" class="col-form-label">Phone Number:</label>
                        <input type="number" name="phoneNumber" class="form-control" id="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-form-label">Address:</label>
                        <input type="text" name="address" class="form-control" id="address">
                    </div>
                    <div class="form-group">
                        <label for="gender" class="col-form-label">Gender:</label>
                        <select class="form-control" name="gender" id="gender">
                            <option selected hidden>Select Gender</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn background" onclick="registerUser()">Register</button>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        const userType = sessionStorage.getItem('userType');
        console.log(userType);
        if (userType == 'ADMIN') {
            console.log('add');
            document.getElementById("admin-block").hidden = false;
        } else if (userType == 'USER') {
            document.getElementById("user-block").hidden = false;
            console.log('user');
        }
    });

    function registerUser() {
        let user = {};
        let valid = true;
        const userData = $('#registerForm').serializeArray(); // return array of form data
        userData.forEach(data => {
            user[data.name] = data.value;
            if(data.value == null || data.value == '') {
                valid = false;
            }
        });
        if (!valid){
            alert("please fill all data");
            return;
        }
        console.log(user);
        $.ajax({
            url:"${pageContext.request.contextPath}/user/register",
            type:"post",
            contentType:"application/json",
            data: JSON.stringify(user),
            success:function(data){
                alert(data);
                console.log(data);
            },

        });
    }
</script>
</html>
