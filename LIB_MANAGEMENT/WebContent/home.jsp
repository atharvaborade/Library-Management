<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='1440' height='560' preserveAspectRatio='none' viewBox='0 0 1440 560'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1013%26quot%3b)' fill='none'%3e%3crect width='1440' height='560' x='0' y='0' fill='%230e2a47'%3e%3c/rect%3e%3cpath d='M499.765%2c673.421C547.49%2c672.432%2c592.93%2c649.964%2c616.529%2c608.47C639.88%2c567.412%2c637.559%2c515.969%2c611.85%2c476.344C588.152%2c439.819%2c543.275%2c430.101%2c499.765%2c428.503C452.22%2c426.757%2c399.155%2c428.176%2c372.45%2c467.551C343.182%2c510.706%2c346.879%2c569.142%2c374.305%2c613.491C400.432%2c655.739%2c450.102%2c674.45%2c499.765%2c673.421' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M834.3267713413095 139.1999685801319L927.8884686987595 27.69747962517856 722.8242823863561 45.63827122268184z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M1291.4709719576788 283.6309646112502L1438.1932311489827 278.5073104187221 1433.0695769564545 131.7850512274183 1286.3473177651506 136.9087054199464z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M859.932%2c389.713C879.823%2c391.081%2c899.944%2c381.557%2c909.489%2c364.052C918.711%2c347.138%2c912.41%2c327.382%2c903.12%2c310.505C893.38%2c292.809%2c880.112%2c274.898%2c859.932%2c274.017C838.588%2c273.085%2c818.68%2c287.051%2c809.677%2c306.425C801.736%2c323.515%2c811.19%2c341.825%2c820.926%2c357.96C830.209%2c373.345%2c842.005%2c388.48%2c859.932%2c389.713' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M693.5511090421727 37.55143433656248L612.8460967653214 31.90799012018039 644.7334365791739 155.78723064364846z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M724.7352135416695 485.60530388752903L667.3170145287519 327.3810827051733 570.7854771684733 438.42791358491223z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M780.7618956269607 425.93427976034127L649.7260571289147 400.46349296497095 624.2552703335443 531.4993314630169 755.2911088315903 556.9701182583873z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M433.917%2c443.948C468.727%2c444.899%2c500.649%2c425.272%2c518.378%2c395.3C536.447%2c364.755%2c537.778%2c327.51%2c521.427%2c296.012C503.638%2c261.744%2c472.526%2c232.329%2c433.917%2c232.599C395.652%2c232.866%2c365.21%2c262.796%2c348.501%2c297.221C333.827%2c327.454%2c340.181%2c361.85%2c357.088%2c390.893C373.87%2c419.721%2c400.572%2c443.037%2c433.917%2c443.948' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M919.6246060507434 233.71879327678982L1008.383594513122 269.5797523941909 1017.7955389580343 118.51079014192234z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M169.98423818221414 389.80958008035265L225.49495374954887 514.4886885903237 294.6633466921852 334.2988645130179z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M1004.6026711069849 193.19445277191943L846.356132691139 144.64867369009636 876.4399640410013 286.18197246712987z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M345.952%2c324.057C386.419%2c326.833%2c430.22%2c319.014%2c452.632%2c285.206C477.087%2c248.318%2c476.263%2c199.483%2c453.829%2c161.332C431.688%2c123.678%2c389.585%2c101.741%2c345.952%2c103.785C305.449%2c105.683%2c272.378%2c134.403%2c254.271%2c170.682C238.041%2c203.201%2c243.288%2c240.926%2c261.935%2c272.122C280.041%2c302.411%2c310.747%2c321.642%2c345.952%2c324.057' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M87.87510484801805 82.51279968268322L56.66656970237402 217.6918167377895 191.8455867574803 248.90035188343353 223.05412190312433 113.72133482832726z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1013'%3e%3crect width='1440' height='560' fill='white'%3e%3c/rect%3e%3c/mask%3e%3cstyle%3e %40keyframes float1 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-10px%2c 0)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float1 %7b animation: float1 5s infinite%3b %7d %40keyframes float2 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-5px%2c -5px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float2 %7b animation: float2 4s infinite%3b %7d %40keyframes float3 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(0%2c -10px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float3 %7b animation: float3 6s infinite%3b %7d %3c/style%3e%3c/defs%3e%3c/svg%3e");
  background-attachment: fixed;
  background-size: cover;
  text-align:center;
 
  }
  
  .active {
  height:7px;
  width:15px;
  background-color:#CCCCFF;
  border-radius:5%;
  text-decoration:none;

  }
  h1{
  color:white;4
  border: 2px greay;
  
  
  }
  h1 span{
  color:skyblue;}
  
  .active:hover{
  background-color:#ff5733;
  box-shadow: 3px 3px 2px white;
  }
 
  </style>
  <head>
      <title>Homepage</title>
   </head>
<body>
<h1 >HOME <span>PAGE</h1>
<ul>
 <h3 ><a class="active" href="Available.jsp">Books</a></h3>
 <h3 ><a class="active" href="Issue.jsp">Issuing</a></h3>
 <h3 ><a class="active" href="Return.jsp">Returning</a></h3>
 <h3 ><a class="active" href="due_date.jsp">Due Dates</a></h3>
 <h3 ><a class="active" href="Reader.jsp">Readers</a></h3>
</ul>
</body>
</html>