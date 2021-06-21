<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
button {
  margin: 2em auto;
  display: block;
  -webkit-appearance: none;
  border: 6px solid rgba(255, 255, 255, 0.45);
  border-radius: 50px;
  padding: 1em 3em;
  background-repeat: no-repeat;
  background-size: 100%;
  background-clip: padding-box;
  position: relative;
  color: #fff;
}
.butt1:before {
  content: "";
  width: 100%;
  height: 100%;
  position: absolute;
  top: 5px;
  left: 5px;
  border-radius: 50px;
  z-index: -1;
  filter: blur(14px);
}
.butt1:after {
  content: "";
  width: 100%;
  height: 100%;
  position: absolute;
  top: 5px;
  right: 5px;
  border-radius: 50px;
  z-index: -1;
  filter: blur(14px);
}
.butt1 {
  background-image: linear-gradient(90deg, #7b81ec, #3bd1d3);
}
.butt1:before {
  background-image: linear-gradient(90deg, #7b81ec, transparent);
}
.butt1:after {
  background-image: linear-gradient(90deg, transparent, #3bd1d3);
}
.butt2 {
  background-image: linear-gradient(90deg, #fa80d2, #fed757);
}
.butt2:before {
  background-image: linear-gradient(90deg, #fa80d2, transparent);
}
.butt2:after {
  background-image: linear-gradient(90deg, transparent, #fed757);
}
.butt3 {
  background-image: linear-gradient(90deg, #8ce0f1, #79f391);
}
.butt3:before {
  background-image: linear-gradient(90deg, #8ce0f1, transparent);
}
.butt3:after {
  background-image: linear-gradient(90deg, transparent, #79f391);
}
.butt4 {
  background-image: linear-gradient(90deg, #525a69, #898dda);
}
.butt4:before {
  background-image: linear-gradient(90deg, #525a69, transparent);
}
.butt4:after {
  background-image: linear-gradient(90deg, transparent, #898dda);
}
 
</style>
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<head>
<button class="butt1">I'm a button</button>
<button class="butt2">I'm a button</button>
<button class="butt3">I'm a button</button>
<button class="butt4">I'm a button</button>
</head>
<body>

</body>

</html>
