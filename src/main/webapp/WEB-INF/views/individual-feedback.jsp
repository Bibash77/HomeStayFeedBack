<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedback</title>
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

        .c-margin {
            margin-top: 10px;
        }
    </style>
</head>
<body class="background">
<input value="${user.id}" id="userId" hidden>
<div class="container" id="all" style="margin-top: 100px;">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow-lg p-3 secondary">
                <div class="card-title ">
                    <h6 class="text-center">User Detail</h6>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                        <tr></tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong>Full Name</strong></td>
                            <td>${user.fullName}</td>
                        </tr>
                        <tr>
                            <td><strong>User Name</strong></td>
                            <td>${user.userName}</td>
                        </tr>
                        <tr>
                            <td><strong>Email</strong></td>
                            <td>${user.email}</td>
                        </tr>
                        <tr>
                            <td><strong>Comments/Suggestion</strong></td>
                            <td>${user.feedBack.comments}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    <strong>Overall Rating</strong>
                    <span class="float-right">
                                     <input type="checkbox" name="rating" id="r1"
                                            value="1" ${user.feedBack.rating >= 1? 'checked' : ''}>
            <label for="r1"></label>
            <input type="checkbox" name="rating1" id="ra2" value="2" ${user.feedBack.rating >= 2? 'checked' : ''}>
            <label for="ra2"></label>
            <input type="checkbox" name="rating2" id="ra3" value="3" ${user.feedBack.rating >= 3? 'checked' : ''}>
            <label for="ra3"></label>
            <input type="checkbox" name="rating3" id="ra4" value="4" ${user.feedBack.rating >= 4? 'checked' : ''}>
            <label for="ra4"></label>
            <input type="checkbox" name="rating4" id="ra5" value="5" ${user.feedBack.rating >= 5? 'checked' : ''}>
            <label for="ra5"></label>
                                </span>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="margin-top: 100px;">
            <div class="card secondary shadow  p-3">
                <div class="card-title">
                    <h6 class="text-center">Feedbacks</h6>
                </div>
                <div class="body">

                    <table class="table table-bordered">
                        <tr>
                            <td><p class="c-margin">1.Did you get the agricultural goods fresh and of good quality?</p></td>
                            <td><input type="checkbox" name="foodQuality" id="a1" value="1">
                                <label for="a1"></label>
                                <input type="checkbox" name="foodQuality" id="a2" value="2">
                                <label for="a2"></label>
                                <input type="checkbox" name="foodQuality" id="a3" value="3">
                                <label for="a3"></label>
                                <input type="checkbox" name="foodQuality" id="a4" value="4">
                                <label for="a4"></label>
                                <input type="checkbox" name="foodQuality" id="a5" value="5">
                                <label for="a5"></label></td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">2.Was the price reasonable of the agricultural goods?</p></td>
                            <td>
                                <input type="checkbox" name="fairPrice" id="b1" value="1">
                                <label for="b1"></label>
                                <input type="checkbox" name="fairPrice" id="b2" value="2">
                                <label for="b2"></label>
                                <input type="checkbox" name="fairPrice" id="b3" value="3">
                                <label for="b3"></label>
                                <input type="checkbox" name="fairPrice" id="b4" value="4">
                                <label for="b4"></label>
                                <input type="checkbox" name="fairPrice" id="b5" value="5">
                                <label for="b5"></label></td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">3.How was the packaging of the agricultural goods?.</p></td>
                            <td>
                                <input type="checkbox" name="packaging" id="r1" value="1">
                                <label for="r1"></label>
                                <input type="checkbox" name="packaging" id="r2" value="2">
                                <label for="r2"></label>
                                <input type="checkbox" name="packaging" id="r3" value="3">
                                <label for="r3"></label>
                                <input type="checkbox" name="packaging" id="r4" value="4">
                                <label for="r4"></label>
                                <input type="checkbox" name="packaging" id="r5" value="5">
                                <label for="r5"></label></td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">4.Did you receive your product within the expected timeline?</p></td>
                            <td>
                                <input type="checkbox" name="timeline" id="q41" value="1">
                                <label for="q41"></label>
                                <input type="checkbox" name="timeline" id="q42" value="2">
                                <label for="q42"></label>
                                <input type="checkbox" name="timeline" id="q43" value="3">
                                <label for="q43"></label>
                                <input type="checkbox" name="timeline" id="q44" value="4">
                                <label for="q44"></label>
                                <input type="checkbox" name="timeline" id="q45" value="5">
                                <label for="q45"></label></td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">5.Please rate your experience with the delivery personnel ?</p></td>
                            <td>
                                <input type="checkbox" name="delivery" id="q51" value="1">
                                <label for="q51"></label>
                                <input type="checkbox" name="delivery" id="q52" value="2">
                                <label for="q52"></label>
                                <input type="checkbox" name="delivery" id="q53" value="3">
                                <label for="q53"></label>
                                <input type="checkbox" name="delivery" id="q54" value="4">
                                <label for="q54"></label>
                                <input type="checkbox" name="delivery" id="q55" value="5">
                                <label for="q55"></label>
                            </td>
                        </tr>   
                        <tr>
                            <td><p class="c-margin">6.Was the quantity of the agricultural goods enough according to the price?</p></td>
                            <td>
                                <input type="checkbox" name="reasonablePrice" id="q61" value="1">
                                <label for="q61"></label>
                                <input type="checkbox" name="reasonablePrice" id="q62" value="2">
                                <label for="q62"></label>
                                <input type="checkbox" name="reasonablePrice" id="q63" value="3">
                                <label for="q63"></label>
                                <input type="checkbox" name="reasonablePrice" id="q64" value="4">
                                <label for="q64"></label>
                                <input type="checkbox" name="reasonablePrice" id="q65" value="5">
                                <label for="q65"></label>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">7.How do you rate the quality of our products as compared to our competitors?</p></td>
                            <td>
                                <input type="checkbox" name="competitorProduct" id="q71" value="1">
                                <label for="q71"></label>
                                <input type="checkbox" name="competitorProduct" id="q72" value="2">
                                <label for="q72"></label>
                                <input type="checkbox" name="competitorProduct" id="q73" value="3">
                                <label for="q73"></label>
                                <input type="checkbox" name="competitorProduct" id="q74" value="4">
                                <label for="q74"></label>
                                <input type="checkbox" name="competitorProduct" id="q75" value="5">
                                <label for="q75"></label>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">8.How satisfied are you with the availability of products?</p></td>
                            <td>
                                <input type="checkbox" name="availability" id="q81" value="1">
                                <label for="q81"></label>
                                <input type="checkbox" name="availability" id="q82" value="2">
                                <label for="q82"></label>
                                <input type="checkbox" name="availability" id="q83" value="3">
                                <label for="q83"></label>
                                <input type="checkbox" name="availability" id="q84" value="4">
                                <label for="q84"></label>
                                <input type="checkbox" name="availability" id="q85" value="5">
                                <label for="q85"></label>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">9.How safe did you feel while sharing your card details?</p></td>
                            <td>
                                <input type="checkbox" name="secure" id="q91" value="1">
                                <label for="q91"></label>
                                <input type="checkbox" name="secure" id="q92" value="2">
                                <label for="q92"></label>
                                <input type="checkbox" name="secure" id="q93" value="3">
                                <label for="q93"></label>
                                <input type="checkbox" name="secure" id="q94" value="4">
                                <label for="q94"></label>
                                <input type="checkbox" name="secure" id="q95" value="5">
                                <label for="q95"></label>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="c-margin">10.How likely are you to buy from us again?</p></td>
                            <td>
                                <input type="checkbox" name="buyAgain" id="q111" value="1">
                                <label for="q111"></label>
                                <input type="checkbox" name="buyAgain" id="q112" value="2">
                                <label for="q112"></label>
                                <input type="checkbox" name="buyAgain" id="q113" value="3">
                                <label for="q113"></label>
                                <input type="checkbox" name="buyAgain" id="q114" value="4">
                                <label for="q114"></label>
                                <input type="checkbox" name="buyAgain" id="q115" value="5">
                                <label for="q115"></label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="offset-3 col-md-6">
        </div>
    </div>

</div>
</body>
<script>
</script>
<script>
    // select value if exam is already taken
    $(document).ready(function () {
        const userId = document.getElementById("userId").value;
        $.ajax({
            url: "${pageContext.request.contextPath}/feedback/" + userId,
            type: "get",
            contentType: "application/json",
            success: function (data) {
                console.log(data);
                if (data == null) {
                    alert("no previous exam taken !!");

                } else {
                    const answers = JSON.parse(data);
                    Object.keys(answers).forEach(dataKey => {
                        const ele = document.getElementsByName(dataKey);
                        for (let i = 0; i < ele.length; i++) {
                            if (ele[i].value <= answers[dataKey])
                                ele[i].checked = true;
                        }
                    });
                    $("#all :input").attr("disabled", true);
                }
            },

        });


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
    })
</script>
</html>
