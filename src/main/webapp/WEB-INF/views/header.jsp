<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trisan Agro Mart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        $.ajax({
            url: "${pageContext.request.contextPath}/user/all-cookies",
            type: "get",
            contentType: "application/json",
            success: function (data) {
                data.forEach(data => {
                    sessionStorage.setItem(data.name, data.value);
                })
            },

        });
    </script>
    <style>
        .background {
            background-image: linear-gradient(to bottom right, #164A41, #9DC88D);
        }

        .text-secondary {
            color: #045DE9;
        }
        .secondary {
            background-color: #F1B24A;
        }
        .curor {
            cursor: pointer;
        }

    </style>
</head>
<body>
<%--<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm background">
    <h5 class="my-0 mr-md-auto font-weight-normal">Pawan Home Stay</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="${pageContext.request.contextPath}/home">Home</a>
        <a class="p-2 text-dark" href="${pageContext.request.contextPath}/index">Logout</a>
    </nav>
</div>--%>
<nav class="navbar navbar-expand-md navbar-dark fixed-top secondary" style="height: 50px; margin-bottom: 100px" id="nav">
    <a class="navbar-brand" href="/home">Trisan Agro Mart Pvt. Ltd.</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/home"></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0" action="${pageContext.request.contextPath}/logout">
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Logout</button>
        </form>
    </div>
</nav>

</body>

<script>
    $(document).ready(function () { // when document has been fully initialize
        const userId = sessionStorage.getItem("userId");
        console.log(userId);
        if (userId == null || userId == "") {
            document.getElementById("nav").hidden = true;
        }
    });
</script>
</html>