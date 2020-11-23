<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Dashboard</title>
</head>
<style>
    img {
        height: 400px;
    }
</style>
<body>
<div class="row">
    <div class="offset-2 col-md-8">
        <%--<div id="carouselExampleControls" class="carousel slide text-center" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">asd
                    <img class="d-block w-100" src="https://besthqwallpapers.com/Uploads/22-2-2020/122912/thumb2-fruits-and-vegetables-4k-tangerines-eggplant-carrots.jpg" alt="First slide">
                </div>
                <div class="carousel-item">asd
                    <img class="d-block w-100" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMVFhUVGR4ZFxgXGR0gIBogHxohGyAfICAgHSggHx8lHyAaIjEhJSkrLi4uHh8zODMsNygtLisBCgoKDg0OGxAQGyslICYrLS0tLS8tNy03LS8vLy0vMDUyLy0yNS0tMDIvLS0tLS0vLS8tLS0tLS8tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgQHAAIDAQj/xABHEAACAQIEBAQDBQQGCAYDAAABAhEDIQAEEjEFBkFREyJhcTKBkQcjQqGxFFLB8BUzYpPR4SRDU3KCktLxFlSissLTNGSk/8QAGgEAAgMBAQAAAAAAAAAAAAAAAwQBAgUABv/EADQRAAEEAQMBBQcEAwADAQAAAAEAAgMRIQQSMUETUWFx8AUigZGhsdEyweHxFCNCM1JiFf/aAAwDAQACEQMRAD8AW+a+DDLV28JydU+RhdR6HqMAuWiRmPMpNMgpUP7ofyg/WMWRzjSWpTroranpPqZmsLj4R3gQcAuF8KoClRILK1VhSINw1pJ9rE/TGPPOGsN8kfn0EkDVhLlDgNalUSnrUeMIVjIG8Qbe31xI4HSCDOUHRDVVYmBurGb9BscNeeypLZfSFfQfDJN/TV7yMFqHB6S169Zl1CpCsCLNC3B97YVdrnOiIdxz8QV261UK5V8w6JSQtUM9d4v1tsMDx6YsbgHBaqZpW0DTUFTQR+AwRB6i22J3FeSlGUWnQyytmLTUJEnzSbmwthtntBgdt6Y/e78kw04VYk4k5boO/wDHDBmuR8xSomrVZE8jOVNyNJAC/Od9scqfCEXJ06zBlq1KoCsTbT1ttt1wd2ojdgG7NYVXZVy/Z8w/ZFQBvJaWM6sFOLZXWlmKEbEYA/ZhmtdB1kkK0LI6Rg3zFXCJBtPXHoC9rXWcBKgWxSshQ0KBJJ6k9cEaWBfDMyrLY7WwUp4o/KKzhR+I1UpqzsxiMIWazZrnXTBFBNRd5FwFODnGcyWzBypAAddSO4kahuBeSYv0647cA4cwydWhVpqrNqBBAhg3WB0IxkTaQz6hrnfpbfz8forGQ1QVQZsZiufKS4VSxAEwB1MDp3wvtm3R1ZocrPlPTFgcQ4b+wvWp02a4CiNoI2P54QsxklBYklY/PCTSCSHG6wuFKRW4tr85WZF46emMNSloJDPqi17CekYylQqUqaVWQik8qH0mCffbocb5bhz1WKIo1ATAFyO+LbKPCi1twXi1RHplpCoYB9Ti3eVuaQ9Tw5bYWixm2/fFOZSijMAQQOpnr7YtrkiiXWkysCiEqZF4G3zmPzxQRbprjNHw8/5VmvIVj02tYzji7Y50XCyo6XwMyGYirXQn8QI9io/jj0LWcri9EiceTiJW4goYJ1OO/ijFwFG4LfGjJjNYx5qGJpda0an645tTbvjtOOTVtwLkdMXBKqQFxYsMaeO2NqVVmeQfJp+czju1MHpiwcO5Uo9Cg/F6esAkSVII773jEn+kYTVuP5n6Y58bqJSpl6hAUde2AGT4kj6dDBgSw+KRczhSY9lJvbQDhRJxRHHnz9OVAJ4Kaf2vHHO5ttMobi4xwo0bCmJBUAieonv6Y58RoGPLAPxXMAxeCekjBJZtsTnAWQO/F918/RcLJARGnnxAk48wu0+NiL0jPvjMZv8A+3B1b6+SN2Z714cmhD+Iqw7eYH8Vov74hcwArTerSXW6qRRTT8DQZb85+gx1HEKVSVWqsi8Tt+XviB+3KHdSxkWGmSINyfoYx40Pls3nNkK7mV0XLgFXwcpRDnVUAJJjqTJ+d9++CVHOB2gnygSQO5wE49nEegaisV0GJ6X/AO2IOf4qlKlRakRqYAsQLE9Z9ZOCCJ8hLupJ/KXJN4TjTKAQojob3viWucJMEbAQPlvhM4bxhXq6nZVIWABbfqflgtks6GLshEEjrtbATHIywVfemDP8Mp5inpqibD02vfve+FPmLk9670xTqIlFBpAbVaOu8ea/T64YqfE0iJgqBYYJUgHgk7Cfngmn1Ekb8dOExghdeDZUUqIRCFEfU7YVOc69atXy+WRC1yzEbQO/1wz0qDgS7SvyGnHPMstNJLKpYgBz29PljaZ7efuAmyMXQ59cqhgxhFuEcOWjTUWkbnHV815vKZ9BhYPMtMeVn1LMahifw3O099Sjtf8APHo49VFJkGvPCEWOaOEQegr5harU70wYJ7nt8sHalIMpixPXAmvXgAhpB3OJlDPIoEsdpnFyystUtI6quOc8jqzVVm8lNNOok/EYtbFa8cqeKzOzEkeVflsMWZ9o3FKIYqE1s4VxHUDt3xV2Sy7VaiqZUs8qPc/W2MeZg7Ulp5P1VgAMq8+X8oP6Ko03VPENMQpHUjset8JXH+TqmVh6VR/MIAUeY22tf6YsPJ8XywCghmdV/dJNu1r/ACx04hmaNQ03d9DKZWRBgiIvjTnhEgrr39yDQpUFkuH1WreGgO8GdxfFu8H4euSp0lb4m3foYvHpgZ/QaVcyKtDyFH877h5Mzvvvh54jkEIEm6+aDttExjOfonujIBojg9PyFZjs2tmziaddpjCxkq48d6qiZgMdVwQeg6jHmWqVEeoGVyYOk322EDC/xTirLVpioPDBWFNv1BtHrjtQNUA1wPAHGc8c1Sne0pwzlZRWVpuPiHYd/ridkNTAsx3Jj2wvcKzCqTTdZLQdVjr+eGqg4MjbSYjDuj98ukGLJx3Hj7AEKPNZGNHeInrbHfTiDxVYUGOo298POeGtJPRQVJInA0VFp1G1mCdv7XT64jVc+dWoSkA/HsxG6+/83xhztDNUwRv69O+FZNWwghjmhw4v18F23gohkYAkSASTB6Em8YmA4A8HzKvUNOSdF17X/kfXBnP6whan8QEgd8H072vaNtd3x6/VcbCSPtYNTwV0sNIMsOtr4C8Lo0zRo10ZSfx6RBsd46EY48SzyZnMA1K4RwYCVB5J2jpBwYp8tU21nTogTKnY+ndTvjG9tTxiZsZsFufA/n4FWjBLfNMWS4kz+EyySTpI7jv/ABxOrZIZhSdbaRIKdJH5/LC9wPL1AUNOtYDcjtEgeoOGBc2KOW1V2YMSz+RZJA6kQYkR7Yo32hHLva66qyPOhgg4yOPFSGHlJ1bheliA1VYJEC4GMwxNwehU84zJAa8a+/zxmMDs3f8At9QibVT9Wq1EFqJZiTJsIgCxk33nE8cZqZVdVXKS7zJdyVIIEGJ3G+DnMWWagjpSIFOr+BIldhAkW+EH64RuM8UzFSmKdVpVT5QYkACwMDGpFUhFUe89VzD3opx7M0/ApFKguvmGqZ2gEe/8cBF4i7IKJMLO56T1wGZD2x3o1YBEScOM0zWMrnKt2QARk5PSpaS0bab/AFPaMa8P4yVVllocRHp/3xzymZf4V2YXxg4aQ+ljBXeL+vTA6GQ9DFN/UiNDmWpTqEzqm1+nthz5f5nQIVBPm26wOgviLwDkyhmcuWZGSr+FgbbTttjXJ8ECk020oyRpK7MJ3PWcZU02mfbRyOVcj3QQn5CWQfjUCXUdZGw9cCOMGmjJr1EUxqRP3Z7/ACxpw6sQIuCDCkkwwBiMbcSJapqJDUwIClb+s98JNxk9Mj19lNg8ofma4CSFMyDDATBxrR4VmFqCrINOJIBNsSMxlFq1NdZtKquwPxduv8ziRQzJUaUMA7gmbY3IdZBtNjp9fXKl/wCkUUQpcZmFA1EiPbGZ7jBRFVBOmCwPbrHfCdlnqLXqMBu3lk/phkzDGjQNaooZpAUH8RNlWO07+gOLs1krWgbsqIoe0O0DJUWu37YqVSfDSm5AqVRpBG2lR8TmSBYRNjGNcll6CVNeXotXqqSBVqTpHRiEXy6V+G+pmOoAiJxwqZm6VMy/xMRRpAgFo8qkAWAAlpiB4iED8JHcVzbs1nZBSIPhKdKkREW3MdTPYQLYIZXv97gd60ZI4dNgjc76BOC8Tz9UkU6lNVnSqhrA920eYkdFXynqTOCR4bxRFGmsjnqSWn2CKUQe8n1wv8n8OOWZmAI8QahqJN5mB/nh9q8UAfS1tSiD69owcNixuc67Avpnu/lLf57jw1oHklepzBVpsKeYo1C3d1pAH2Jrp9ZjE+rnC5EAyxgLUkW66TENb90sBG+POI8QFRXSoJUnTfaf44XxUWiTTHhkHcKQvrf/AFb2H+sW37wxmzTxTEwkkjxsevBHYYpuW0fD19Ecz2XqijVekfOs6ZNiRuN7dpwstw2vVqU650UiqEDZgwbcHscMmTcuCrGVX4g9oG/mmSRFwZMifM4uNuKClpgMBvsdj1ke/T9MEm/0aUDTiiTRPJxnHru68oSxFstPQThopUdVSqkaLKfwlh+mDvLtd2L1QkoxkmZO14HbAviPCXfKIRLADVUK9RuTMfX0w0ZarTy1BBELFrz+eNWBzoog+UgNAB8ye/8AZLbbdhdWzy27kTHpgRxjOeJ9yoJb4zH4RO57Y34i+utSUAjWCfS18DM3UfL1QtFC5qqWJmdjEH0wDVzTSscyMW3AvrkdyI0C8lduKZpatJTdGX446wdzP83wv0s0FquVO4EbCSN9sMDUmqLqYBW2ZIiOxwvZZUC+eC/iiYAkAG1u3+OMLUNkmd/uPSvOupHeiYFEJu5fyyi7EeIQCQOx2wdrUJUgGJ64F8KyJL/tFcaSYCAnYTYEfzviVzFltSeSoVI3jrj0+l2afTjFAWf78Sh0Tar7mnlykoo0kpMxq1GqVcwRJFoCz0Bnb07mcEuDcBakNXiM6hfKhIgncHaQR2wTr50+D4VMAAXad2O/yxry7mnA1eEbAwGsGx5bWawal9DLcX15vP8AKK1tIbS4ylWFQaKia18JrQxIJt8sHOAcSQJrzBVZaPMwgwOn+GFLiebdaq5rMzS8RyFZNJCsFtuJ+EG5/wAsEFr0adBlZUqCqSdLwBe6sBsOht1xMbBE4OORWLzjp5+sqoeQjtXh9FjqXK0ipuCahE/KLYzCToU3NSsh6qDt6Cbxj3Hf5beo+g/C7e3uW3NGSo1dL06llWTFyYvAHqevqMVvzJk2pVCtYkMQCOtj3jrGLpyuVolxCgQo0kCdyZnvIGFT7UOX6FSkcxSYipTtpF9azefUScU0WrDJWxG89aVwyzaqOtpAXSxJM6hEBe0d+uMR8bNSif449poINsemsUrF3RF+DZZqpUU9LOZhetupww8E4JUqEN+HVDMdgVPr8XsJJ7YTslUKMCGII64svliu37MXK+GtiOpq3Kn4pAvbVHQxMGMzV7m5HHr+EvImDlzI+EfOwnVI0avXoVC/XE7M5grMEAj92BPm7ADofzwN4LxAVFpvpCa7i8xpAMG0bTsB9MDc9xcCqogkVqgRWZtKhmqASWidPTae8TjIgdKJSGjKDvJG0IjXcEhoBCmZFoMTAiCSfWY3x05i4dmqNNKrCkZMHRJ0zPxT7RuR9MR+ELUr5mrRYimmWPnrarC0qEXSLsPw9IPcA5wfmpaVZ6Kg+AWOjUQSD3EiBJ80RAO2HWxk+9I0DuOD6+idh0c0kT5ADtbVlRHzJC01YLpa1lUzeN/mMCs3mYVfCUzOl94vdW9FN19Cv9oYKcR4/VWq1PNaHC+ZSU3tIK9VJt1tsdsdsxwf7sZik9QoqsTUZTcBSYJiGFo97aYnFWxbLPPruTWs9kajStbLYcwjkLbJZlEpg1CpqMwAA/IDG9BGzVYIDKUSIO8nzNqHeGFP5LgEqp5KqBToU1CegIsCL7ho9t/Zy5SyxpIxWQ1wIHRbG/uRgkMW54APP0R9BUUD9R14H7oRxLh1DxBUeBVIVEUH+rUbAe1/nJxEzvCdeXqmrUjqHi9sQ+ZODZhaw0AaRLa/xeoJxNVMznECUVJWI0/iP8PmcaOrbTKZiiFnOt2Tm0Y+zfjZFOp4x+7pQWqNMLNhPv0GJ3EubsnUckO2lbkhJBi4tM77bb4VeIZrwqQyq7UtRdBENUAux/egzHoBhSp0nLKqAlqh0qB+InpgP+Q4s2dF6nR+wNO2DtdUa680AnnPc2UMzUCeEyhjGovBv1MW+oOJ+RyeSZqbtEs0AgEEkdTvBAIPWxGEPjXLecygV69BlUx5xDKPdlJAM2g4aOW8oamgs5XwwhaCptJEibdRJvsB1GF5mlvv9Rn+1HtLQ6M6UzaasV1u/wCUcoVRRrhUPlk+HaxWdgOnqnWJEN8UvN5YuxVViiQCFkRdizW7nvfaQccOZmo1V1U0qaQPNUMBYFplexBuNtJIuBjvTzjNllJJFWm4WbXkEBj0kkQRsWBi0YFKDIygc+Hr13rDnqXTiXqOfX1XrU1WkKKBmVd6bQUIP9lluZm5JxIyAFVPCZSooiIYyT03npgUNaMpdw2uRbbVJbt0X2+E2xIV9ULl9JYG+kASImBHUiGsIPvhWDVTRPIcN4I46Gu856+Cy7tdM5lQir4WYIYGUXeTtA63MiMS87kKi0yGqCm58xKoxAO5WehP5b3x14Vpy9Q1Mw81Kkmgl7CdgIgG+/6ycCszxR3raUJsSfcnc/5dsbTHOeL/AE30FqaAQnJ5p9Gh6v3gqMklr6QTAPf3xuvD6j1FqZdKbtokXgrDRO2/Xfv8+4CvUqaaKu6tp80BbWJ22kfliZy8SFYPAdnbUBbTHQYye1LJCSLN1z6/hE222lmb5nchlrQuiCAtzKnr0sRjXL8dFZWcMfEWTpH4hMG3YY94jlLq1NQblO24k6us4S8vXejWbS2gGzRfSAbxgT55NU2nE8ev4KHlpTXQzfimm4BZgCGUmIZd49D64n0qzPNSmrFUUfdsYUzcj3/n2DcIzDNUaIIkVAwECLgH5jDMM0VpkUwrDRKifiP0wo1ojeSccVXrgeSLHnlV1zRxVzWoMaZp+fWEYWaLRf0sRj3j3Fv2jUmpbeYFVhVI/APSL++GbmvJZg0dTmCEMKVBF4n1Hz7YS+KJVy60qTaoJM6fUWO3rGNaJ+4AHn1+UMhTMpzO6Iq6ydIiSsn69cZhYfh9ZSR4bW/npj3BTpmHqo+Kf+E8TDZkqlcLTSkGJOzFYMD63x14lzPTqVfASl940zF5AE2+k4FjK5QqzUHh4BnsQPiHvMEYZuWc7TrqaTrodYLIbdN56g4zZmNb74bfTy/KM33hQKqjnADx321EKxAG0qIGA+S8OG8QxAtH6YYvtCydOlnnSlMFUgfujzWncnbCvXUgkEQQYIi+N3TtBiaAegVNnRSFyDM9OmkFqmnSP97ae3c9hi1KVJQlOkhlKaEXk+UCCY2kwxnuR81vknhlNaYzFTSzRCaTcEggzO5j5X33w35amACyXkEbi3mmPS5tjO18xNMHRAlNmlEp0lpU0pqSfKoBMzDIFbbqCu9viJ6YLZMHLA1loUq6p5AC+lgQojT5CFCgxM9T8x9DLjygdFMC+19jM3j/ALxiflXQUmVxABGsjsLqATN206SfTtbFdNg2pjwlrj/GGestLKUfDDiQiHUSzbkndmmbnphY44j0HYFCHESD+E21fQzgpxfPBfOi6GURb+0xLT33WCT1IjGDmam9MLUyyMwM6yTPt7exwyzi6XvtBIZ/Z4jioW0t+PFnw/K55rNfta0WIh1Gkj94b+5i/wBcFctzFV0IquQo0hInSth5R0GBNHjYy9VjSp0mDqNIdQwSRJAB6z1MkY7Vea2cfflnA2TVC/TYfTHbaFC0T2do5oGuExDhihf6fKx+EdOQDWpLeoyo6KLAkiY9G1Bo76u+HkZjxB+zBgRSpxVKmxci+nuZkziveROLtUrVjpbTAJdT/VkhlGkQSzMJUQD+mGn+l6VBVXy00ABO4HUEkmCxMEk7mQTAuTRscHBxXnfar4o39hHwDeO8r3h/L9WrV0mofBuPUREi5m+oR6A9sP3B+FUsuhWmDcySdz/kMIH7YpX7lijNJsJ23GkkeX2IBg/Pr/SbUWRWqVajOF8wlQXkTaTsATFyAD3w8ZSDZCyA4BJfN2TKcRzDagiiofimSWXVAj0IPsRhOzKlG+MqQfKbjf226Ys7m3IniIp6KtNayTZg0ssRLQCQQwAO/XthPpUs3kyaj5YHw7LWKh1WbSrXQn1uV9DhQsIN1hetj1UGu0ohc+nY5NZHrxXM8xZypSXKu5p0tOksZuvUwdzFrC/znBzgjokNSqN2GqNRQCGkAxBPS/TfCzxHjniIQ/mqM2o1GMsT/hiZ9n+SbM5umoPlElj8jA+f6TgWwuFNCebp9PpIHMLuQb4ynfO8RqtVFJEMU5aJENpgEm5BiRIkxqxvwyiKlN6IJuquhm8BgyE7mVZPDY7/AHafvYE57M5H9oqtQzBUVCEOlIDBbfFptqO5iTAN8SeG5koUqXmmxZgNyjMqVx6QDRrz31d8Bj08kXuu46fuvKaSJ3ZPY4dfv/SB8Y5hp5hK2VRGMFVoMABrIeQIgabAiet+8YcOUeFViRXz1WT/AFmlSSFJAjUZhqjAKYAMBRe4wJ5U+zyjTdhm6tNxTtTp0qhknczYea3wgnrJjeyKeTEB6oCU0EJSAgAdLD06R9BbDEWkDPdAxz8cLL7MjJCUuK8PetXNSmjHVuvQQAAJJiY3g/rjplOFVEpN4YU1T0JE/LoQN97xg5m86zmAIUbKI/P+Y98QOLZsUqXiOdIpkMY7SJA6329TGDu91p28qKzaWVzD0iVqCGsIMg/MG+CnDW1BZMXY7zsbYVOOZs5mqc0AdCrYXmAAJaLTae1zhk4FVoNlg4IEbmdz1GPN6prg22orTYRPiGUNR5VwC0QBYSOp9YG+FHPcHLtX6VLnf4zMkz23jDDw/OoS58RUU04bax9MCuL59WDmkPFDINLMQCBESIucEgLqOc2quDUiZzN5imwp62XSmgLPQ3023w68lZ3SYrJUbyko3RDMQ0bLgPxbllyiVaBNSoiio/p2idzbb0x05ao5inVpVswp8OuzKdLfFKk3HQGDhxxZNHivt670MWDas3iPhVaSnysYg+axPb3wlZvJZeg1QVZrwhOncrexF/lbphg5czVPUqU6RNACApH4r7nqP4/mtfaJqpV/EpBV80AL/u3m0fLC0LNr9hIGeB1AFXxQv5lEcdwD0P8A6co0/ImZ8o210iSJvBMiYmMZhYpIsDxMvUL9SNV+2x7RjMNmCImy37flRYQVa9VW8momPLAJ2w68OzFZkNfMLVSqysviKAp2kSvWPbHDKV0y7CjRKtUmSzGOs6b7EgjbfBBuI5nxD90HJ1QRdQIiCbAR3MYLK+Q42Cu8qe0oVSiLUfNZum2oZepSoKp1AFiVmWGsXAm8XG5gXLDluH5RcwC0MyiJdSbjzHTJIJsN7rG1oxGbJUaX+kOoLhYMO5g7kklivmMbAnf5C89zPRqDXoisrQkGNwbkSdUDv1NxcQy2MFvumqCG42bCYs1xzLtU8Hw7KYWEEnqLkTJF5G4+mO+fzBBElgsnQFMC0ybkAzMx9AMJ3BquZaoKr0kRA4LOSQxAAVVBBDCQoW6zeQLlSd5graSxcfDCwYkwGgQAYUkE6jeAsXEGroW7ucKhCH8WzGktVOZFOlEkJ52ZoMjUIOq0dZncbjpmMzoOk1VZ4hgWiPRiA3msRIiBf3SuLZw1qqUQ50a1Cq8SSfKWaL37dB74i5kNl6zU3qBmsJVtYII2Nr+xAg/I4L/jtLaRQ3CZeK1aVVaiINJYghniCbwAY8oJB9Nr7SqftGkQ0gjvg1wfMquhW0hHLKCQxUNaJJNhYi+1jYbQ89VypdQQSRYqp3IJEEMpINtr9ALAMZbHtbVYWn7O1b4baOFDoUq9UjwqVWp20IzfoMFW5O4g2n7kecSv3tKfmNcj59jjvkuOUaRAppSZwbFlHlO1goVf+Zj7YLNzq8sr0mrg2ZXzFOohvMCkKRCiR8IjbHNce6loO1Ujv+kZyHA83ksrTRMurVWlqg1AsDM7KS7WAEKItvEyuHiuZbMhK9Assw+tXUQBIvpMbAWibeZd8EcrzuKZXVl6uXVhZaXiaTFp0Gsqg/IfTBej9p9IeR69fSfh/wBHpqy/8QqlfqJ9cSHOBJpIO0rXG7+aHZjmurSYEVBEwQTvcwJMzYm4jYfPM5xs6DUaoNVJSVERqJiFU/hszASCYLCdySlfjPD82h8XwKzdBVIpvv8A7Q1SVNh8MCw2xyPLHDKi/d0ChI/Dmgzi0WHjFdgOjdLEYoJG1koTtA+8IPkOa2epdyyyVJi0WAPZWgNJ2ADX3glluNirSbWVcEwjm2pSArBh1E6htAme4wNH2cqHJXOCE/1dUFWUHa8ixOx0jV0GCOX5drUWIVQABYUwSu/xEQHSYBMqBMxJjFt0fAKXk08jM0UgcY4K6LWqeJSVEbyqaih3BYDyLOpoBk2sAcE+Ua7snlOhVaQ2sLJ6D4GPbYAjocT+KcFovm8s1ZTTpM+musMsQNViQPj2ldiT3EHeL8VyLVFU5WlQpoAPKiiR3BAkMO4PvOG2FnBPK0ITNMN4F0MpX5gy9OnUZGYLTpKGRlaNa6rLodtReZnQ5m5tuLByKUnfUlQEGHZDoDAFWUowDmRoYLOxNNexGFvkTlihxBqlbNM9cI7UqVNG0l4vrYiCBBFgR64dqXA6WV0U6SuihoVWIeJBjSZJ3OxJuRthbUxe7beiLC53BSbmOIuM++XWm8qxhQDJZm1s9uhJidoC4tQ5rUACdUADf0wJz3F8srslTNE1DsgIhLARMdxMb74l5J0Kg0zqDdgSTadhtiC17GC+ElrJJJKttAde9dnULLEwo3OK65lzz8QrHLUQ2lTYD8UfiboAPX9dmjjuTr1SACyJpICsm7tZSes/igi0EHHmbzq0KArNq1aFBiNQD9Ce0z8weu68jyHBvRIuaW8odT4o3D8scvpRWEl33FxYDvjOGrTqZFadGnNVTaCdI9h1Jws8bZ6p1lQoM6AvwsAB9Jwe4HxGrR0Sq0wKepBv1iT7xhKd5LcnHlfy8fFQCvKXDAh8OGFSJYsIHqIOB/7NlDU1iq9MhgCokwNj8pv6Y84xxt81VinJqN1A2A6ntH+GOPBeGOQFRSdUt4trgECCCbAk7/yFxG8NPvH6DHeVCP8ABa9M1ny0FoYNr1WKkfB6iZODhrUak0vLCmNI/CQYEeuEN+H1aZbNOQqjTpBMa4kkp3CjT76hg7wzNUdSaQ7M6h1pqpMEkkm3bAdRo+0Ao5FevNWDqwi5UUauuAFbyCDcNHbbHDifCtdLwXYghgzFhJIF4n364i00rUTVauVVKZZxqUy2q8ntGNc9n6i5UMK6OtU6lZt9O+n6jftgUencch3HXnjj4qN3gnDVQEBigIAHTsMe4rfL5nMVlFT7oaujb2Md/TGYgwai/wDyH5lE7X/5CEcO4XSFCaiTUe+qqAe4EAzFhvE7AC4lm4Rl1VdMKAfwxE9vLM26CZvstsV3wKs9WuH30ySxBJ6/CAbbm8EkyJuZe/G1lqjg03YR5jdZibCBN53jbqSB6SRpGEu4UpnHKlNdCFxNR3CgdNOlov8ACW8u3aT6gs6uXpOmiEemBsYHUhix8zTG0mAOo3icxZvSmVrAtKBikgaiXAg2gSDLbi8bzhR5Z4LWz+aXL0/xEl3KyKajdt4jtcSSL3nB2MBblWa20+5POPmnU01FYI2qbgFrQdtNtpgCxvvjbjHA6tMf6SgSk9SZDDeB5Z1eYgSZPY9xi0OC5KllqSUMnSGmkCoLfiO7X/ESbkmBttbHDPirXAAp1FYGQYsLdzb+etsJOmGTHZ7sc/FXMYCSOSc+tPLnJPkmCySzrTkVJE/eB1Pmg9jYDYWw2v8AsmaD063h1iQVZKpAcA7xYMAe47WNsQquVzIGnxSBH41B27SAe25OAmdoOPvMwiOFIk6RaTvBkC+naw+WM50028uoj6/cfurB1JQ47yHWSuy5FfEpkggCooal3R2ZgBZoDdeskXW35YzNOui5ii9PX5g0KwKggEqwJUxbafbFo03pUdVenmalH8WiZDEWgEmR0+gvFsLea53q1tdLMKa1PxBoimGYa5XSBK6jDQAT9dsaem1b5G1ye/xRYnAPFqLk8g4cus1FkgawmkR6jWGjsVm2O1QroaUphzJC0kBJ/wCXwyT7YH5Uo1UVEGqJDa0bULWlVogLHSA49cTWqGsh0ySDHxVaon+6YL/dj3xfaRa1Q7haU6unw6bCsodZ01Ecg+YjY5kgG2xBO2PWpL46BWEalnTmVpkXE6k07dwL7wcScvUrK1OkahFgSodRNyJAWpSaLdabD8xjshmvpLC34S8E/wDCuaAPzpziDyjA4Cijg6VCzMASCSCyoCP+Ok51R3ZScacKoDU81dRXtXp6pmB/rKf/AKmG3ywZy9ZyDqLiLwVZjHonhUmHuVf544ZLigIcHMITYaaiECd9JLjLgki4lxsbNioBPP8ASJuoABZnq+by6irTk3t4yUjv01kWHs774KJzG+WAaohAXcZeNB1ddLokd/Iw+mOHE4RFWAuq1jSgiNgCyLHTZ/c461Ka6nDaxPTSBJ3J8tAK3yZie5wMmkXaHYUjPcyZaqn35Sot9K5qnSUmLwtTWEieoDH+IXh3GsitU13y6akEpS8RaiyTv5XZYUDt1BtsAnMdBTTQFWu7QPC0kwB+I5VCQPmb9egXhPL+aUpmqeUqvSpuHPkIVwpki6iQYgwDhuGO89UuXtjPgeRdf2rMzXM+Y0+McsculWAKujTrG4AaASImN8QhzPQFSkuYq1NEwSkTO4Jnop099+otiFlU4jnKbZipRrVacadTkKBH7ocja9xYEG9sJmcydZlXMVXQO7MFp7EKkeaVXTBm0b3PXBBA579xJruKZl1UMUXZAAk9W9P59UpfGqJGYq1aV6SuChYgGCfLAN2I9O04dMnxwUslRWlpdncio5B1LqJ22IHtEfQ4rRqtWrVWnpvYKBtBIAM7RffbD3RoZKjSVGapVqoZZgCFVgQYFwGgxFsGdFusJTtmuAJBKsbKZeoKSNmKyhyoOhhJpsV0t5w06oLDUL+p6qHN2Zr6EcU4NOoZMbKZlTFit1G9xpI6QA4XwzM5jxKorBSPNRWp5RWBk+TWdMR1k+vfDpUz65TK06devT1sYZqlIuCtyYANhcR1I9ZAz9U5ryA3kH5rP9oBgFh4J7qpe8o5KgEqeIpadyxAUAkEoA0A6gfikD2gnEuhwOnmc3U1VtKGmFGgLB0kjSDqIkwTESACPXHtbjoOikq/dLpAJVU06gCw0iw0joCbgjexReYeNZlaxFOuUKhZRNQ0yignVADfeFgJnZTebJsc5z9hAoc3j6C+vW1ll1Kwa3BcsqsiAqHErVX42v1Exp6RAtHfE7g+SFNQjINegFXYgK0ktMQSJv3g9BhK4VxPxKTMzO7odGkkm4mCdiSQB1Iudzht4VzC1TSHVCumHN9I7CLnbvaZwtbt7hIaz3dPv5Hopa8E5Sjz9wjOO2upSfTSGmmEvTCxe/r5ZJiY9IEDg3EzlatOka4p1SArnykIrCdM3Ex/DFnrzOCAVQKkRBmbb3HrAwtc78qJm2p1RponX5iKaEEaGaWICvcgC7EXmJGGhJDJ7rHHHgcfH7K5AOUucx8Xp1WpAVHdQ3n1keYAi/tgny5wlMznVqUFpslES6VD5SQTpiAdMGDt0wj57MU1zDCkZpq3lLdQDY2wSydSrRL1KdZwraWqml+ITcbTMTti8LGR0TaETmyjfMC0TmKprOVqavOqDygxsLCR64zC4M7UbzU6lQoSdPlO04zAHREnLj6+CighvB8wtKnrPwDZdtV9MwfU7mQT0sYlZ2rC7iwvMAzqLNfv13ksSfcwcoseIiIV1Cii6SNQUwh23Ukgj3OOVbgIQKlRwCEDXEmSYYDvpLDbt9NFzjduCI+M2gPEs14qUqYG6mAJLMxaBO5MkEKOxEAbYsLkLgdTLhqSalvqzFQKAW8oimG30g6/iIA1TF8CuQeD/wCkJW0JUBLg6r6ACiBgOrk+UEwACT0Aw55KoiIxYNLyFsIBEGwm7GLWJ8siwxWU+7R4P19fVWaKTAtV4Kg01iAQjkaR0BME/pvtjlrYga0ptHUOrn/1s04TOKVwGGguqXWkq/QgdxvJixIgGbcznNQ89Rrf22aB77TvscJSSHj8fhdvTNXNUy5GkavKFAIAja1p9ziDUBPYqfiVl3t1g/lP1xvy9WbSykMqiSa4OlSB0Ykb3O0k26Xx34hmctTPiHQBEK9VwlONwSSZM9NIO+LxwOkFj6+v2UeKrfnnl3ytWyQfxAQHRJOoWmAASWErPpPYYW6XInFWpK37HV0MQxkrJm911avkRiwc79pVDLmKVVmj8FBKap8vKRY2J1mYm22BXA/tIrNmTUquQmwQ3JGoWJUKDPqLfPGrEwRR042iMs8BLh8Si4NfLrlnWRq8CrpJiATqOtSYP9WALE3xLy2YatTYu1Kqvda1Z1X1KVSXH/DBxaNTimYTzZ3JMI1MRRLVKZABhrEAsbAWY2sJIxE4py7lKpB+8oVanwlA1NjJJ0jWCzECT5Y9hIGIfGc0nGakf9KvMpmgXSmtUEAAaPHbTF7+HXQ6v+FvSLYlO6PVgVVZ1JGljRY3F4SstN1F9kY2tgnxjlzMU9NVKuYrUo1AqtKsdPeGCsD/ALmvY4CrxGkZBr5hwQfu6yFwR1s1F4HpOFyCPkn45Gv/AElTaWWC0zT0sI2prl3E+vh1X0EeqN7Y2y+fCppZ0BJMK7VaBsBIArCrSO4sYGINPOUdBRKdREbcCizUz7gVJ+mmOxxtlM3QSEFWoov5FNUq148yVEIj0BGKJpoyjHEHZgopmXawUOoDegbSaTH0C4NDlohHOYNGgtTUx1pTYwDJY6VCkbGWUG974m8o0KM+JVaJjrYdgq3CyN4+uDPGauS0xJaSJvusjUvsygqR64o2nNux81EpeHbWA35X6+qX632d5OohEsXQyWCIt2X90KPRoJ6DcSMAufBnKFEgVNdFUCAKunQsQJWSNPSR6Ww2VeY6SEpRkIfwzb3xA4iPFUq7AhrX6jqp9xbBBqi0+78VMeik5kFd1qv+M/aC2YYXenTQ+RQegsAe5gfrgfytwzNcSzTUqAJVRLNV+FFJ/EY6kWABJv0BIXqIWjUcQSVZgpI/CD5T87zj6R5ByFPI5NGqsBWrKtSr6SJCgdAoMT1Oo9YxrMAGbWXPM5zQzbQCWuFfYzpreJmM2HSxKJSANjMBmZoHsPph6znLGRal4BytEqRAGgSLRIb4g39oGfXE5M7qMidG03wO4lnVUwhvuYOw/wC04hzgHVXKVG7vVd898FOSy0BpowyqEbTFjpDKI+cWPYTGErlRaj1KQZ4puxYJMyFYguVMiNUiOpVv3TNk84ZRMwpotVIRoZiY+FWkgRsbESexMHScV/X46gbM1KSKj00FKiohVVQ2hTE30/HEfEVF+uaY42PcxgsnPlaWfHTvNdOMUfvvHzBenSquxLNLBdRvo02IBMwpPr1xGyOX/balPh4quqk/GXlbWAZbSur4YNtYBGNeQOINVrhM5XIylAeenUPk8x8NQwNjDsh8wMAG465n+D5ilnqmay4hKdY+D4akoQrXgiQBqB36iemL9mIz7x4Q+z28qZV4FnMlmlp0KlNn1aF07sSsgaCCSrKZkSu8mVOG6rm3pLTpV8u1IvK1KlMBkBmBAB1R1vbfcA4R+Au7ZsV83mWQ0zIi+tifNeRpAGkCOi22jDTxzj06UNamxqPI1qZXykAq0xAbSSsMSPecI6gse/ZVnyP3pV91MvCcuKSo6lfEDG8i8jzR0tdZI298FaPFySPEdSrRIjeDudgJg/lhI4VxUn+sVQA0MBq/dOnS0kmSDedpJ2wYpZk0fvGpEo5Kk2YyP97eBt+pxlPEwdzXlx91LXgDCU+ZeTSEerRagAhJKyVEFiIWQQDIAiYkNEWVePMXE2yaNQCr98ATMRp0gSoF1JPftg9x6ocy4y9TWuXdlZGAOiAIIeIkyCdJNrehwnZ/g9Cpn0o0qgYPMuzSBAJEnaIER2gY19M8ygF+UctsZUGnzBmEGmmAUHwkL3vjMZ/4kKypRZBPQd8ZhsRY/SEHae5RMpzDURQuosqGVk7df8cOfLXNOWzFQU+Iq7kH7lgSFW2zAEEmYjf/ABD0+QXFvAzd+5y3/wB2PV5KqA2pZkEeuWJH/wDQMMvhJaQEeirV5U4DlaL16uXZhrKAqxkL5mYETsG1AaRbyDA/iNLLiqSRWbSdRQKNJJt8ZbYr0iYBwN4AubDCl4TLqhYfSRYyGOlmWBBBEmA2LLTg2XktURajHcuNX0BsPljOaHSDZJgt6lRRKrLOlNUilXLNYu9QEj0AFPSJHrtYRjvQy1JR57aR+MhZO0b7byfQ4sD+jcmhlaKL/ujT+kYCcf5SyWaWGaqk7mm9+sjzapBk4E6JoOXAqOzKrLi/PwFqBIKny6R5YgixKwB8Ngs7kNsQi8a4/UrsDUqM4WQoJsATOwsOgsBYAdBi7RyvwnLb5ak28mqzPvtZ2IXYmYjykTfE2lzPkaSkk0gFuStEwB0/e6Rf9LDGrCGVgqBzS+a3zGLm+zfkvJLSpV88S9ZtNRaeohE6qCARLRBOq3SLXHc5808IzdFgMtpqGdL0qSKw7EkESDaxn5YG5zmE6ppny20+3T8sdqHllbRa2PZekZqS4ONVSuPi/N+XoghIkWBPT2HTC03MTVlmTtP64qvM51qhljglkuL+GLm3ywtvc6rW07QwQRms+aOp9ofgF6bAtUEIYEWE3mDG5YADrc9oHHqy1gmZVXR3lW/Z2HmMEhoEBjAN5npeBDD9n3LHDc7WfNVAapVVmi4GhWllk385hQYNhq69LbpUKCACmqoAIAQAAD2iMVlc00QQCOQV5dlRSlw4zS+dM2uk+GXWq4gy9UU3uAYBqVC0iYNgJHXGPmKqwCc6AB1ZKqfMyF+pxf8AnKeWK6HRHEknUqm5MncdzhQ5j5IyVX76lSFKqtwUEKbW1IIBE9oNtyLYWdq4gaOe+srQj1tmj91Xw4wxA0G3QgiPqCR9CcRKvFKh3OCXMvCKWXpyrl3ZhJJY3i58zMb2t6DEHKcu5t1DLl6t/hmm3m62OmPmYGBsZG7LOF7WCePsmvfQWuTzRmScGM9xUeGWB8qDf1i38cC8xwDM01JqUai9AoXUSb9jYW39RiGlDxB4VUsqzcKV1CPQ/wAcd2YJ8Oq6WaORu6MgkcBLucritSaRDoRBHUEwZHodN/WO2Lh+zPjAzdItVaTR0qRtMKAvtI/w6YXMl9lTVSGy2Yim4Kt40ElWH4dIHmBggECY3xaHKv2cZTIqwQ1Xd10uzOfN1+EQoi8Wn1xuMO9ocPrheFmIjcWu+mUQXi4gzAQC3Tp/2wHzWcZ6lNcqqs2oh2adCIFkksAYM6YXcz7nE3jPJi5inUpvmayh7eXQIAvB8pkar2jFF8ZyuYyGZq5StWLR5kdSQHVusTaYgjuOog4mRzgLU6OKKSUMur8P6TZzTwlndqlPOy0QIUhTHs19hczYC1sJXK9evl8w1UGGXVTKj8VgTcRA2ggg7wREFm5WqKUDVKklnKIpQsPLoN2BkTqjb5jE4ch0yrVWzioSTFNV1kCd2Oofp1FzhQFxulsSaXSRytJs57ucfsfgoFTif7UdLqhhgGFQu3WzLV1eNqn4VBImPLgsmbptSpcPyrkU181RXM1TJs37rAHUx03EyVAk4SM5k6tGv4Ksh1AkVAwCkD3Ig3Eg9+ovg3wnlOvU+9pVQKig6WV6ZAEzI03lWIM9CBfFcnBSvtD2eyWnw0Bwbx90P4YhR2pa0lzUg21eU3t0nYyO8Xwcy/AaJoKxRXXQfE1NGhhNpC7mwA6kkg2wA4pwuk1SrYoylrLIgn4gOwkkeowM4TmGqZhEZ2fw9cFjYiJaTYmI3mRuJIGO2g2QsfV+yZINpJGfgimV5hoJSZKYdak6QymFI1SupbgxJFgLQBhtfmamyrppa5ksjFpWDbzAwV8xNgDIvvOEfiWUHioVXUKpZG6FKiMAS2m0+YalsGIZhGoQ38D4VTZvAzZHiJQV5okHRCr5SY8xi5G41bkQMLzQMq+fPP8ASzS2uFJy1SpmabqVJIurXiTYgrMEb36es4A8S4W9GkEOhQh1KIsWNp9LYbcnxWhRIQ03ZKdlIylaW94XTI21dbGTJwSXmDK1B5slWqe+UPf+2BiYdC8DBodyYjDtuVWL8CyxM1KrhzdgCsT1i204zFsivlDf+jRf/wDWp48w+Inj/r6K2x3eqkHM/EN2zDexLf8AWBJ9/piZS5ozJuc9UX0Kg/nricRafMXFFuadckiJfL7bXAFNbjHHMce4ozEqtcT0/ZgY+tP3wc2rYT/yHx+oz13q5hqiKqaQ6gQWLXMQCfL+fXfBbO84GSFMeuK0yfFs661f2haiCFiaLKDcg30x1G59sapmvXGHrIXmcuJ7vsquJ4CsClx5mMlt+/XBfL8SmFAlmMDFYrxIKMSOD8yFWqVJ+EaVHqd/y/XCrYpLscJ7QaYTP2dSrX/8OZJitXNhar0xbUfKJuYWYO25/LAXjvMuhGWjAQD5D54rLivOtZiV1269scP6aZ6DLuzmCPzxpgPDAGigtzT6KGFx3O3G+Oiic30Eqp+0UgA5PnVRvPWB19cA+BrUrOlCkpeoxhFHXr7CBMk2AwXyGabK16VRiV8OojSL7NO3Ww2w21Occq1c5hUAY2LKgRiCZv7wLenrhxpuPOUlONmsHZ+7d2m7l77McpSVf2+oatZt0RiqL6SIY+8j2xtzJyLwxtNOnTZJFmR2lT8yQT7g4BJx+MqmaOsg1SCRci/6bf54LcOaKtKq76BWUVCG+LzX0kDa8j5YzDq3WbaALod+Efs9zyHyE0OOhS/wDKVeEZh6LMGSqs06kWcA9pswmCPUd8MGc5lYkQfz3xF+1WoP2YMu9MhgfyP5HFfZLi0iCb4VkgOoJlHkVj6qDsgPHKsmjxk+uDz58aAZ3jFY5biInfEvN8Y0IS1o2vvhUwvHujqk48OymDhlTL/tNWs0P4bgIrbL5QSfUzPthnzfPJAtpHqN/wAzihMnxhgWM/EZPzviWvESeuNJkM0I2tdhe3Zp9NqmtfIbIAFdytrLcyammcdOJUqVdPvFBPRgBK+xxWGS4kV64a8hx9dEGdsBIc3lGl0LWkOiHyTfy89RV0AFwuxClRbs2x2FhboZww5bjJqSV1AgwVZSI+R/XbFXcv8AN+mv4ChTESxN5idok7/rh/o12dtSlQYBI7e5B3xvMkc6EEc0vJ6xgbM4eKI1c8xPmIT3P8cV39tvCabZUZoACtR0gOPxIzAaT3gtqHzvfDbxGrUDKzU5pzDmRImIte0732nCb9q+aoVOH1NJAZWTSBNzrWw6Hyyfodr4Iyy33kuBWQq0y9OsctSqaSVSs7sOhGmmRP0bBVObqrvUeQGLayvRhABjsREnvJO4uHpZt1poCDDCffpiFnXQMrIIM3Hf/KML8mits/62b2Gzi7RKvzAy10qgAlYJDXFiDB94wUo8wVlcV1rVHWdPmY6lJuFO4G0gixAPZlAzgmSQgllJW0n3MDGc1ZNcswWi0CokOvsVYT8/0GKhrXHYEXUSTRsM7qI7vkFy43x01KzuOsexIAufzxC4DnaiVlKtp1SpYKD8flm/qR/NsD3YkgkCfS382wQ5fUeMjMJ0HUB6zafSYn6YPsa1pXndTqpJ8vPwTFls2IfQsuxV6Wo/FA0EMZsSpYyeoE4k5Di9XKk1CiVFrU5qXBMNUVWUEHyNZdx0sMAMlmdVV6JKUvFIKEDyoxghesIRA6wQp6HBii/7JU+9VTv4lONSkarKwIgn06QDhZ8fhdpOQZ3d6sQ5xvCpmnpqoRd6tV1JBHlNkaWNwbi6nvA3XiYMyaKnf+uv67oMAchxPKPppUidFX/VuDKMzjWJJm9mW8Fog6ojjWyudo1XTL0HdVNnWogDCLGCwvHp9cHhdYookTsUmY8RHej/AHy4zANM7xaP/wAI/wB5TxmDIqx+I8S/2mR/5Kv+OPFzfEIk1Ml/d1uvzxAo8K0ny8TrnVYg1lYfRgRjG4ATJPEcxJmwqqd/aw/LHLlNzGYzlRWR2yJU2b7ur/8AZ0N8IvG6TZZgrMpB2ZSD7giZB98Nj8vkQTxGt3Euvf3xAzHKVGq5LZ/xG6y9Mm3rOBuY13KghJ9biYI3xCTOm4BsTOHZuQqH/mwB70/+rGr8g0AJ/bVEixOj2/e2nHNjY1Xje5jtwSS1TEjJZrSQZ2M4NZzkWslxmcqVIkFqoXax3/xxEXlKuRIqZdh/Zr0j/wDLFiwEUmWastduQ7i2f8Q2xARyMM68lZgzJpW3PiU/bo2JeT5CcuBUq0gvXTUExE2EX+cYs0NaKQZZnyybzyvOUedXygKMgq0iZKMYg9wYPbbB7K82LWrajKhtgxBC+gO+AVX7Osxqha1Bu0sQT6xp/icaJyPmR/raHyqf5YSn0MUhLupTun1/Zn3haMc+8xo1DwlaWeBvsAZJ/hhBoZojDUvImYNy1L+8XBPIfZxM+NUAtYIRM+srbBNPpmQx7BlK6qd0791UOAlCjxP1xnEOJs40g/mMO6/Z1Q6Zgj30GP8A2/pjal9nVI7ZqfZU/wCo4uIo7tLBhBVfZbI1TcBY/wB9P4tjVM5B/wA8WZR+zrL/AIqlVvQaB/8AE4mLyFkNirE+tQj8gRghDTymY9RLHwVWNLiHriUeMECEuTYfPFjH7PMh01iN/PP6jGf+A8nNtZHo8foowIwMJsp0e1tQGloNKucvwnNIDWpsjMBqYAnV3O4AJ3sDJ6Thp5Z5/akoWqrRsTEn39eg+fphu4dyzlqBLU0aWEEl3IPaRMH0nEinwekgCrTKiIEVKg/jgwKyxuPJS7x7n96istCjWMppBamQDKgau9jfbCPluEZvNHRU106SA1GLK5CqOw+J2k6QLmW6STi2xwmmN1febvUM/V7/ADxKp0USSBp3BF4M/vKTpOw3HQdsTuVs1XRU/n8jXqHRlKNbwKShJcaSxHxM3RdR/DJgQDgZmOXc4D5qLiPTF6h6cQCq+ogfKQRb0xArU6AuaqibeV4mT0gn0xAVnPcRRKr/AJQyVSnl85VdTNJAfDZLgzAJ1DYhj+e8GFvN06tZi2ljvFiYH89cXHS8Ij+tDQOtQn23a+JGqkbeInrLj/HFQ0A3Ss+Z7mbC7CosZZrWFvf+JxKydKqpOlPiESLxcEkesW+eLm1ZYDSalEL2LJH0JjGi5rKpP3tBZ7PTE/54saPRLlgKqnMcHJgpQqyCPMykRHSxM3i5jb1jE79lr1U8OtTaF2cQGW3XW0MvTSSI6ERBsZ+JZXrXoz38VAf1xzPF8p/5ih/ep/jitBSGBV1R5friTpbv+Ez12vP+WDdHO5wjS75neZUspJgDcC4gAR6DDO3Gsnt+0UT6CoD+k42fi2WAlqwA9m/6cSAB0UbGhLymvH9dmvmav/XjMHTxvJ/7dPo+Mxa1NBU2UQ9L/wA+n8MepTUGRbtYH/DGYzFSqLoKeq5E+v8A3vjdWgQP4j9MZjMUtQvTSETo/TvjkfQ4zGYkLl4guIjcdP8AG2MdTN9+v89cZjMW6rl1y6QVO17EDHQUkk2j2PXv8JxmMxVcpVHLTEyynYT/AIxjxtIsy2mD92hmPn6djjMZigdZpctXpksI3O0Kk7e4x4q04gmJ3mmDf/mxmMxINrl5Wo0j+IfKnEfnjw5egIgmY/2Sn9WxmMxZSvGppBjTB/sKP0Hf1xzZlgeVLH9wC/0M4zGYkZXLYBNoUC2yfPHdayiwbtcIv8Yj88ZjMcQuXqGlA+822+6H/V/M42GXpXMM3yVensek49xmBusLlFqIkQFa1rldv+XGeFS+HQQeslT87JtjMZiwK5dMllEctARdO5YTvYWg7n0x2r00BIVUJG7aQJG4AEQBF9p2HTGYzEOJ3UoK4U6kmSqz3CgfOBAJ9SJxu1ekL+EZ90/+r2xmMxPVctaucpn/AFZJtdmn/wBoX+euNGzsn4EiIsonfuZv6jGYzF6CletmpadK+x81t/xSO5ja+Ndcz5Z3JvG3X/LGYzFSoXozjLYeW34QAYt1x3/pEfuyw21w31kAf+nGYzHEBStv6Xqd1+SLjMZjMRtC5f/Z" alt="Second slide">
                </div>
                <div class="carousel-item">dasd
                    <img class="d-block w-100" src="https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
--%>
        <jsp:include page="summary.jsp"/>
    </div>
</div>
<!-- START THE FEATURETTES -->
<div class="jumbotron text-center bg-img">
    <h1>Trisan Agro Mart Pvt. Ltd.</h1>
    <p><i>We handle delivery to your door</i></p>
    <%--actions button will be shown if user type is administrator--%>
    <div class="row justify-content-center" id="admin-block" hidden>
        <a href="#" data-toggle="modal" data-target="#registerModal">
            <button type="button" class="btn background" data-toggle="modal" data-target="#exampleModal">
                Register User
            </button>
        </a>
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
            <h3 class="text-secondary">About Us</h3>
            <!-- <div class="content1-left"></div> -->
        </div>
        <div class="col-md-8 content1-right">
            <p>
                Trisan Agro is the first company in Nepal that delivers food from hundreds of popular restaurants. As a
                pioneer food delivery service provider, we are making life easier through online ordering.

                We know that your time is valuable and sometimes every minute in the day counts. That’s why we deliver!
                So you can spend more time doing the things you love. You can get anything from Indian food to high
                French cuisine by placing a simple order online through our website, mobile app or over the phone. Then
                just sit back, relax, and wait for your order to arrive.</p>
        </div>
    </div>
</div>
<hr>
<div class="container-fluid home-content1 mt-4">
    <div class="row">
        <div class="col-md-4 content1-left">
            <h3 class="text-secondary">How to Order</h3>
            <!-- <div class="content1-left"></div> -->
        </div>
        <div class="col-md-8 content1-right">
            <p>
                Ordering food using our service is very easy! Follow the steps mentioned below to place your order with
                us.</p>
            <ul>
                <li> Find a restaurant of your choice from here. There are hundreds of popular restaurants to choose
                    from.
                </li>

                <li>
                    Select the foods of your choice from the selected restaurant's menu. The menu and price listed on
                    our
                    website is exactly the same as the restaurant's table menu.
                </li>
                <li>
                    Fill up the delivery details i.e. your detailed address, date and time for delivery and confirm your
                    order. We’ll deliver your order at your place, and you’ll pay us in cash upon delivery.
                </li>
                <li>OR, Alternatively, you may place your orders with us over phone at 4444177 or 9802034008 in our
                    delivery hours.
                </li>
            </ul>

            <div class="row mt-5">
                <div class="col-md-12">
                    <strong>Deals</strong>

                    <p class="justify-center">
                        Dine Lavishly and Save upto 30% on your Food bill in 3 easy steps. Saving has never been so easy
                        before!
                    </p>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">

        <div class="col-md-4">
            <h3>Terms & Conditions</h3>
        </div>
        <div class="col-md-8">
            <p>Please read all the Terms & Conditions and do not use the Bhojdeals website or Mobile Application
                if you do not agree to these Terms & Conditions.</p>
            <p>
                Acceptance of Terms & Conditions: www.bhojdeals.com and Bhojdeals are registered website and
                mobile application respectively, of Backdrop Pty Ltd. Terms & conditions listed here apply to
                the use of the website, mobile app or any services offered through this website and mobile app.
                By using the website, mobile app or any services offered, you agree to the Terms & Conditions.
                The term “Bhojdeals” will be applicable to either one or both the services offered i.e website
                and mobile application.
            </p>
            <p>
                We will keep updating and modifying our Terms & Conditions without any prior notice and revised
                Terms & conditions will be a bounding agreement. It will be user’s responsibility to review them
                from time to time. At any point, you don’t agree, you can refrain from using Bhojdeals.
            </p>
            <p>
                We might email you information regarding your activities, updates and services offered by us.
            </p>
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
                        <label for="address" class="col-form-label">Address:</label>
                        <input type="text" name="address" class="form-control" id="address">
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
            if (data.value == null || data.value == '') {
                valid = false;
            }
        });
        if (!valid) {
            alert("please fill all data");
            return;
        }
        console.log(user);
        $.ajax({
            url: "${pageContext.request.contextPath}/user/register",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(user),
            success: function (data) {
                alert(data);
                console.log(data);
            },

        });
    }
</script>
</html>
