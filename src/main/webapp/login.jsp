<jsp:include page = "header.jsp"/>
<form action="action" method="post">
<style>

body {
    background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);
background-attachment: fixed;
  background-repeat: no-repeat;

    font-family: 'Vibur', cursive;
/*   the main font */
    font-family: 'Abel', sans-serif;
opacity: .95;
/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
}

center{
    top:500px;
    margin-top: 150px;
}
form {
    width: 450px;
    min-height: 500px;
    height: auto;
    border-radius: 5px;
    margin: 2% auto;
    box-shadow: 0 9px 50px hsla(20, 67%, 75%, 0.31);
    padding: 2%;
    background-image: linear-gradient(-225deg, #E3FDF5 50%, #FFE6FA 50%);
}
/* form Container */
form .con {
    display: -webkit-flex;
    display: flex;

    -webkit-justify-content: space-around;
    justify-content: space-around;

    -webkit-flex-wrap: wrap;
    flex-wrap: wrap;

      margin: 0 auto;
}
header {
    margin: 2% auto 10% auto;
    text-align: center;
}
/* Login title form form */
header h2 {
    font-size: 250%;
    font-family: 'Playfair Display', serif;
    color: #3e403f;
}
/*  A welcome message or an explanation of the login form */
header p {letter-spacing: 0.05em;}




.input-item {
    background: #fff;
    color: #333;
    padding: 14.5px 0px 15px 9px;
    border-radius: 5px 0px 0px 5px;
}



/* Show/hide password Font Icon */
#eye {
    background: #fff;
    color: #333;

    margin: 5.9px 0 0 0;
    margin-left: -20px;
    padding: 15px 9px 19px 0px;
    border-radius: 0px 5px 5px 0px;

    float: right;
    position: relative;
    right: 1%;
    top: -.2%;
    z-index: 5;

    cursor: pointer;
}
/* inputs form  */
input[class="form-input"]{
    width: 240px;
    height: 50px;

    margin-top: 2%;
    padding: 15px;

    font-size: 16px;
    font-family: 'Abel', sans-serif;
    color: #5E6472;

    outline: none;
    border: none;

    border-radius: 0px 5px 5px 0px;
    transition: 0.2s linear;

}
input[id="txt-input"] {width: 250px;}
/* focus  */
input:focus {
    transform: translateX(-2px);
    border-radius: 5px;
}

/* //////////////////////////////////////////// */
/* //////////////////////////////////////////// */

/* input[type="text"] {min-width: 250px;} */
/* buttons  */
button {
    display: inline-block;
    color: #252537;

    width: 250px;
    height: 50px;

    padding: 0 20px;
    background: #fff;
    border-radius: 5px;

    outline: none;
    border: none;

    cursor: pointer;
    text-align: center;
    transition: all 0.2s linear;

    margin: 7% auto;
    letter-spacing: 0.05em;
}
/* Submits */
.submits {
    width: 48%;
    display: inline-block;
    float: left;
    margin-left: 2%;
}

/*       Forgot Password button FAF3DD  */
.frgt-pass {background: transparent;}

/*     Sign Up button  */
.sign-up {background: #B8F2E6;}


/* buttons hover */
button:hover {
    transform: translatey(3px);
    box-shadow: none;
}

/* buttons hover Animation */
button:hover {
    animation: ani9 0.4s ease-in-out infinite alternate;
}
</style>
<center>
  <div class="overlay">
  <form>
  <div class="con">
  <header class="head-form">
        <h2>Log In</h2>
        <p>Login using your Department credentials</p>
           </header>
           <br>
              <div class="field-set">

                 <!--   user name -->
                    <span class="input-item">
                      <i class="fa fa-user-circle"></i>
                    </span>
                   <!--   user name Input-->
                    <input class="form-input" id="txt-input" type="text" name="uname" placeholder="@UserName" required>
    <br>

              <!--   Password -->

         <span class="input-item">
           <i class="fa fa-key"></i>
          </span>
         <!--   Password Input-->
         <input class="form-input" type="password" placeholder="Password" id="pwd"  name="pwd" required>

   <!--      Show/hide password  -->
        <span>
           <i class="fa fa-eye" aria-hidden="true"  type="button" id="eye"></i>
        </span>
         <br>
          <!--   user name -->

                             <span class="input-item">
                               <i class="fa fa-user-circle"></i>
                             </span>
                            <!--   user name Input-->
                             <input class="form-input" id="txt-input" type="text" name="dept" placeholder="Department" required><br><br>
                             <p>Available Departments: CT , IT , PT , ECE , MECH</p>
   <!--        buttons -->
   <!--      button LogIn -->
         <button class="log-in" type="submit"> Log In </button>
      </div>

</form>
</center>
<jsp:include page="footer.jsp"/>