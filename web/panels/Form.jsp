<%--
    Document   : Form
    Created on : Aug 27, 2013, 5:42:50 PM
    Author     : TwizzyBomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>
 Get Started with Skate101!
 </title>
<style>
    .form {left:30px; border:blue dotted;
          margin-left:auto; margin-right:auto;}
    table{margin-left:auto; margin-right:auto;}

</style>
<script type="text/javascript">
    function formFunction() {
    if (document.getElementById('girl').value !=null && document.getElementById('boy').value == 'boy') {
        document.getElementById('boySkill').style.display = 'block';
    }
    else if (document.getElementById('girl').value !=null && document.getElementById('girl').value == 'girl')  {
        document.getElementById('extra').style.display = 'none';
    }
}
function showBoySkill() {
    document.getElementById('girlAge').style.display = 'none';
    document.getElementById('boyAge').style.display = 'block';
    document.getElementById('girlSkill').style.display = 'none'; 
    document.getElementById('boySkill').style.display = 'block';
}
function showGirlSkill(){
    document.getElementById('boyAge').style.display = 'none';
    document.getElementById('girlAge').style.display = 'block';
    document.getElementById('boySkill').style.display = 'none';
    document.getElementById('girlSkill').style.display = 'block';
}
function showBoyAge() {
    document.getElementById('girlAge').style.display = 'none';
    document.getElementById('boyAge').style.display = 'block';
}
function showGirlAge(){
    document.getElementById('boyAge').style.display = 'none';
    document.getElementById('girlAge').style.display = 'block';
     
}
</script>
</head>
 <body onload="">

 <h1>Tell me a bit about the student!</h1>
  <form name="form1" action="Form.jsp" method="post">
  <div class="form" id="gender" style="display:block;" >
   <table>
    <tr><td colspan="3"><label for="name">First Name:</label><input type="text" name="first" size="15">
     <label for="name">Last Name:</label><input type="text" name="last" size="15"></td>
    </tr>   
    <tr><td><img src="../images/picturesForSignup/Male.png"/></td>
        <td><label for="boy">Boy:</label><input type="radio" id="boy" name="gender" onchange="showBoyAge()" ></td>
<td><img src="../images/picturesForSignup/Female.png"/></td>
        <td><label for="girl">Girl:</label><input type="radio" id="girl" name="gender" onchange="showGirlAge()" ></td>
    </tr>
   </table>
  </div>
      
  <div class="form" id="boyAge" style="display:none;">
   <table>
    <tr><td><img src="../images/picturesForSignup/MaleYoung.png"/></td>
        <td>5 - 8: <input type="radio" name="bAge" onChange="showBoySkill()" ></td>
    <td><img src="../images/picturesForSignup/MaleMiddle.png"/></td>
        <td>9 - 11: <input type="radio" name="bAge" onChange="showBoySkill()" ></td>
    <td><img src="../images/picturesForSignup/Male.png"/></td>
        <td>12 - 14: <input type="radio" name="bAge" onChange="showBoySkill()" ></td>
    </tr>
   </table> 
  </div>
      
  <div class="form" id="girlAge" style="display:none;">
   <table>
    <tr><td><img src="../images/picturesForSignup/FemaleYoung.png"/></td>
        <td>5 - 8: <input type="radio" name="gAge" onChange="showGirlSkill()" ></td>
    <td><img src="../images/picturesForSignup/FemaleMiddle.png"/></td>
        <td>9 - 11: <input type="radio" name="gAge" onChange="showGirlSkill()" ></td>
    <td><img src="../images/picturesForSignup/Female.png"/></td>
        <td>12 - 14: <input type="radio" name="gAge" onChange="showGirlSkill()" ></td>
    </tr>
   </table>  
  </div>
      
  <div class="form" id="boySkill" style="display:none;">
      <table>
    <tr><td><img src="../images/picturesForSignup/Beginner.png"/></td>
        <td>Beginner: <input type="radio" name="bSkill" ></td>
    <td><img src="../images/picturesForSignup/Intermediate.png"/></td>
        <td>Intermediate: <input type="radio" name="bSkill" ></td>
    <td><img src="../images/picturesForSignup/Advanced.png"/></td>
        <td>Advanced: <input type="radio" name="bSkill" ></td>
    </tr>
   </table>
  </div>
      
  <div class="form" id="girlSkill" style="display:none;">
   <table>
    <tr><td><img src="../images/picturesForSignup/FemaleBeginner.png"/></td>
        <td>Beginner: <input type="radio" name="gSkill" ></td>
    <td><img src="../images/picturesForSignup/FemaleIntermediate.png"/></td>
        <td>Intermediate: <input type="radio" name="gSkill" ></td>
    <td><img src="../images/picturesForSignup/FemaleAdvanced.png"/></td>
        <td>Advanced: <input type="radio" name="gSkill" ></td>
    </tr>
   </table>   
  </div>
      
  <input type="submit" >
  </form>
 </body>
</html>
