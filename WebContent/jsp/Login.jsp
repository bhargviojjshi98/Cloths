

<head>     
<style type="text/css">
 #bg
{
  border: 2px solid black;
  padding: 25px;
  background-image: url("../images/image3.jpg");
  background-repeat: no-repeat;
  background-size:cover;
   height: 100%;
   width: 100%;
}

</style>
</head>
<%@include file="../header.jsp"%>
<br>
<form action="../registration" method="post" >
<div class="row">
 <div class="col-sm-2" >
 <label for="exampleInputEmail1">Mobile Num. For Authentication</label>
 </div>
       <div class="col-sm-2" >
       <input type="tel" class="form-control" name="txtMobile" placeholder="Enter Mobile No." pattern="[7-9]{1}[0-9]{9}" required="required">
       </div>
         <div class="col-sm-2" >
       <input type="submit" class="btn btn-primary" value="Next">
       </div>
       </div>
</form>

<div id="bg">

 </div>

<%@include file="../footer.jsp"%>


