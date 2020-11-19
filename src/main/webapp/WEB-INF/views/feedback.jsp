<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>FeedBack</title>
</head>
<style>
    label:before {
        content: '☆';
        color: white;
        font-size: 2em;
    }
    label.on:before {
        content: '★';
        color: #eaea05;
        /* uncomment for iOS */
        /*   font-size: 2.4em;
          top: -0.1em;
          left: -0.1em; */
    }
    input:checked + label:before {
        content: '★';
        color: #eaea05;
        /* uncomment for iOS */
        /*   font-size: 2.4em;
          top: -0.1em;
          left: -0.1em; */
    }
    label {
        display: inline-block;
        cursor: pointer;
        position: relative;
        padding-left: 25px;
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
    input[type=radio] {
        display: none;
        -webkit-appearance: none;
    }

    /* Non-essential */
    body {
        margin: 2em;
        text-align: center;
        /* remove gray highlight on tap in iOS */
        -webkit-tap-highlight-color:transparent;
    }
    .question {
        margin-bottom: 8em;
    }
    #q1 {
        margin-top: 6em;
    }
    p {
        color: white;
        font-family: Bitter, sans-serif;
        font-size: 1em;
    }
    #submit {
        font-size: 24px;
        font-family: Bitter, sans-serif;
        color: #448AC1;
        background-color: white;
        width: 80px;
        height: 80px;
        border: none;
        border-radius: 40px;
    }

</style>
<body class="background">
<div style="border: double #ffffff; margin-top: 110px;">
    <div class="row">
        <div class="offset-4 col-md-4">
            <h4 class="text-white"><u>Submit Your FeedBack</u></h4>
        </div>
    </div>
    <form id="question-form">

        <div class="question" id="q1">
            <p>How accurate was the reservation record ?</p>
            <input type="radio" name="reserveRecord" id="a1" value="1">
            <label for="a1"></label>
            <input type="radio" name="reserveRecord" id="a2" value="2">
            <label for="a2"></label>
            <input type="radio" name="reserveRecord" id="a3" value="3">
            <label for="a3"></label>
            <input type="radio" name="reserveRecord" id="a4" value="4">
            <label for="a4"></label>
            <input type="radio" name="reserveRecord" id="a5" value="5">
            <label for="a5"></label>
        </div>

        <div class="question" id="q2">
            <p>How would you rate your overall experience?</p>
            <input type="radio" name="experience" id="b1" value="1">
            <label for="b1"></label>
            <input type="radio" name="experience" id="b2" value="2">
            <label for="b2"></label>
            <input type="radio" name="experience" id="b3" value="3">
            <label for="b3"></label>
            <input type="radio" name="experience" id="b4" value="4">
            <label for="b4"></label>
            <input type="radio" name="experience" id="b5" value="5">
            <label for="b5"></label>
        </div>

        <div class="question" id="q3">
            <p>How  clean and comfortable  was room?</p>
            <input type="radio" name="roomStatus" id="r1" value="1">
            <label for="r1"></label>
            <input type="radio" name="roomStatus" id="r2" value="2">
            <label for="r2"></label>
            <input type="radio" name="roomStatus" id="r3" value="3">
            <label for="r3"></label>
            <input type="radio" name="roomStatus" id="r4" value="4">
            <label for="r4"></label>
            <input type="radio" name="roomStatus" id="r5" value="5">
            <label for="r5"></label>
        </div>

        <div class="question" id="q4">
            <p>How efficient were check-in and check-out process?</p>
            <input type="radio" name="inOutProcess" id="q41" value="1">
            <label for="q41"></label>
            <input type="radio" name="inOutProcess" id="q42" value="2">
            <label for="q42"></label>
            <input type="radio" name="inOutProcess" id="q43" value="3">
            <label for="q43"></label>
            <input type="radio" name="inOutProcess" id="q44" value="4">
            <label for="q44"></label>
            <input type="radio" name="inOutProcess" id="q45" value="5">
            <label for="q45"></label>
        </div>

        <div class="question" id="q5">
            <p>The comfortable were bed and bedding ?</p>
            <input type="radio" name="bedding" id="q51" value="1">
            <label for="q51"></label>
            <input type="radio" name="bedding" id="q52" value="2">
            <label for="q52"></label>
            <input type="radio" name="bedding" id="q53" value="3">
            <label for="q53"></label>
            <input type="radio" name="bedding" id="q54" value="4">
            <label for="q54"></label>
            <input type="radio" name="bedding" id="q55" value="5">
            <label for="q55"></label>
        </div>

        <div class="question" id="q6">
            <p>How often security was available if required?</p>
            <input type="radio" name="security" id="q61" value="1">
            <label for="q61"></label>
            <input type="radio" name="security" id="q62" value="2">
            <label for="q62"></label>
            <input type="radio" name="security" id="q63" value="3">
            <label for="q63"></label>
            <input type="radio" name="security" id="q64" value="4">
            <label for="q64"></label>
            <input type="radio" name="security" id="q65" value="5">
            <label for="q65"></label>
        </div>
        <div class="question" id="q7">
            <p>How was the quality of the food ?</p>
            <input type="radio" name="foodQuality" id="q71" value="1">
            <label for="q71"></label>
            <input type="radio" name="foodQuality" id="q72" value="2">
            <label for="q72"></label>
            <input type="radio" name="foodQuality" id="q73" value="3">
            <label for="q73"></label>
            <input type="radio" name="foodQuality" id="q74" value="4">
            <label for="q74"></label>
            <input type="radio" name="foodQuality" id="q75" value="5">
            <label for="q75"></label>
        </div>

        <div class="question" id="q8">
            <p>How efficient and timely was services?</p>
            <input type="radio" name="services" id="q81" value="1">
            <label for="q81"></label>
            <input type="radio" name="services" id="q82" value="2">
            <label for="q82"></label>
            <input type="radio" name="services" id="q83" value="3">
            <label for="q83"></label>
            <input type="radio" name="services" id="q84" value="4">
            <label for="q84"></label>
            <input type="radio" name="services" id="q85" value="5">
            <label for="q85"></label>
        </div>

        <div class="question" id="q9">
            <p>How complete and accurate bill was received ?</p>
            <input type="radio" name="services" id="q91" value="1">
            <label for="q91"></label>
            <input type="radio" name="services" id="q92" value="2">
            <label for="q92"></label>
            <input type="radio" name="services" id="q93" value="3">
            <label for="q93"></label>
            <input type="radio" name="services" id="q94" value="4">
            <label for="q94"></label>
            <input type="radio" name="services" id="q95" value="5">
            <label for="q95"></label>
        </div>

        <div class="question" id="q11">
            <p>How quiet and peaceful was the surroundings  ?</p>
            <input type="radio" name="surrounding" id="q111" value="1">
            <label for="q111"></label>
            <input type="radio" name="surrounding" id="q112" value="2">
            <label for="q112"></label>
            <input type="radio" name="surrounding" id="q113" value="3">
            <label for="q113"></label>
            <input type="radio" name="surrounding" id="q114" value="4">
            <label for="q114"></label>
            <input type="radio" name="surrounding" id="q115" value="5">
            <label for="q115"></label>
        </div>  
        <div class="question" id="q12">
            <p>The homestay was easy to locate?</p>
            <input type="radio" name="location" id="q121" value="1">
            <label for="q121"></label>
            <input type="radio" name="location" id="q122" value="2">
            <label for="q122"></label>
            <input type="radio" name="location" id="q123" value="3">
            <label for="q123"></label>
            <input type="radio" name="location" id="q124" value="4">
            <label for="q124"></label>
            <input type="radio" name="location" id="q125" value="5">
            <label for="q125"></label>
        </div>
        <div class="row">
           <div class="offset-4 col-md-4">
               <div class="form-group">
                   <p>Any suggestions/comments:</p>
                   <textarea placeholder="Any suggestions/comments" class="form-control" id="suggestion"
                             style="background-color: lightblue;"
                             rows="6" name="suggestion"></textarea>
               </div>
           </div>
        </div>
        <input type="button" class="btn-success" value="ok" id="submit" onclick="submitForm()">
    </form>
</div>

<script>
    $('input[type="radio"]').click(function() {
        var theNumber = $(this).attr('id').slice(-1);
        $(this).siblings('label').each(function() {
            var sibNumber = $(this).attr('for').slice(-1);
            if (sibNumber <= theNumber) {
                $(this).addClass('on');
            } else {
                $(this).removeClass('on');
            }
        });
    });

   function submitForm() {
       let feedbackData = {};
        const feedback = $('#question-form').serializeArray();
       console.log(feedback);
        if(feedback.length < 11){
            alert("please fill all data");
            return;
        }
       feedback.forEach(data => {
           feedbackData[data.name] = data.value;
           if(data.value == null || data.value == '') {
               valid = false;
           }
       });
       $.ajax({
           url:"${pageContext.request.contextPath}/feedback/save/"+ sessionStorage.getItem("userId"),
           type:"post",
           contentType:"application/json",
           data: JSON.stringify(feedbackData),
           success:function(data){
               console.log(data);
               window.location.href = '${pageContext.request.contextPath}/home';
           },

       });

   }
</script>

</body>
</html>
