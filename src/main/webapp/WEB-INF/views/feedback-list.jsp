<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        label:before {
            content: '♡';
            color: black;
            font-size: 1em;
        }

        label.on:before {
            content: '♡';
            color: #ff0000;
            /* uncomment for iOS */
            /*   font-size: 2.4em;
              top: -0.1em;
              left: -0.1em; */
        }

        input:checked + label:before {
            content: '♡';
            color: #ff0000;
            /* uncomment for iOS */
            /*   font-size: 2.4em;
              top: -0.1em;
              left: -0.1em; */
        }

        label {
            display: inline-block;
            cursor: pointer;
            position: relative;
            padding-left: 15px;
            margin-right: 15px;
            font-size: 20px;
        }

        label:before {
            display: inline-block;
            width: 20px;
            height: 20px;
            margin-right: 11px;
            position: absolute;
            left: 0;
            border-radius: 11px;
        }

        input[type=checkbox] {
            display: none;
            -webkit-appearance: none;
        }
    </style>
</head>
<body class="background">
<div class="container" style="margin-top: 100px;">
    <div class="card">
        <div class="card-title secondary text-white">
            <h3 class="text-center">Feedbacks</h3>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12 order-md-2 mb-4">
                    <ul class="list-group mb-3" id="correct-answer">
                      <c:forEach items="${users}" var="user" varStatus="loop">
                          <li class="list-group-item d-flex justify-content-between lh-condensed cursor"
                              onclick="window.location.href = '/feed-back/${user.id}'">
                              <div class="col-md-12">
                                  <span class="float-right">
                                     <input type="checkbox" name="location" id="q121" value="1" ${user.feedBack.rating >= 1? 'checked' : ''}>
            <label for="q121"></label>
            <input type="checkbox" name="${loop.index}" id="q122" value="2" ${user.feedBack.rating >= 2? 'checked' : ''}>
            <label for="q122"></label>
            <input type="checkbox" name="${loop.index}" id="q123" value="3" ${user.feedBack.rating >= 3? 'checked' : ''}>
            <label for="q123"></label>
            <input type="checkbox" name="${loop.index}" id="q124" value="4" ${user.feedBack.rating >= 4? 'checked' : ''}>
            <label for="q124"></label>
            <input type="checkbox" name="${loop.index}" id="q125" value="5" ${user.feedBack.rating >= 5? 'checked' : ''}>
            <label for="q125"></label>
                                </span>
                                  <strong class="my-0"><u>${user.fullName}</u>

                                  </strong>
                                  <div class="mt-3">
                                      <small class="text-muted">
                                 ${user.feedBack.comments}
                                      </small>
                                      <small class="float-right text-danger mt-3">
                                          Date: <strong>${user.feedBack.commentedAt}</strong>
                                      </small>
                                  </div>
                              </div>
                          </li>
                      </c:forEach>
                    </ul>

                    <li class="list-group-item d-flex justify-content-between" id="no-answer">
                        <span>N/A</span>
                        <strong>Answers aren't available</strong>
                    </li>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $('input[type="checkbox"]').click(function () {
        console.log("trigger");
        var theNumber = $(this).attr('id').slice(-1);
        $(this).siblings('label').each(function () {
            var sibNumber = $(this).attr('for').slice(-1);
            if (sibNumber <= theNumber) {
                $(this).addClass('on');
            } else {
                $(this).removeClass('on');
            }
        });
    });
</script>
</html>
