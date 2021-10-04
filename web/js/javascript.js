function message(msg,id){
  alert(msg)
  document.getElementById(id).focus()
  return false
}


function valid_staff(){
  let name = document.getElementById("staff_name").value
  let age = document.getElementById("age").value
  let address = document.getElementById("address").value
  let salary = document.getElementById("salary").value
  let phone = document.getElementById("phone").value
  let mail = document.getElementById("email").value
  let pass = document.getElementById("password").value
  let hostel = document.getElementById("hostel").value
  let designation = document.getElementById("designation").value

  if(name == "" || name == null)
    return message("Please Enter your Name","staff_name")

  if(/[^a-z\s]/gi.test(name))
    return message("Please Enter a Valid Name","staff_name")

  if(name.length <=2)
    return message("Please Enter Your Full Name","staff_name")

  if(age == null || age == "")
    return message("Please Enter Your Age","age")

  if(age > 100 || age < 1 || /[^0-9]/gi.test(age))
    return message("Not a Valid Age!","age")

  if(age < 18 || age > 50 )
    return message("You are Too old or Too Young!","age")

  if(address == "" || address == null)
    return message("Please Enter your Address","address")

  if(address.length <= 10)
    return message("Please Enter a Valid Address","address")

  if(salary == "" || salary == null)
    return message("Please Enter Salary","salary")

  if(/[^0-9\s]/gi.test(salary))
    return messge("Please Enter a valid Salary","salary")

  if(salary >= 1000000)
    return  message("Please Enter a Valid Salary","salary")




  if(mail == null || mail == "")
    return message("Please Enter Your Email Address","email")

  if(pass == "" || pass == null)
    return message("please Add a Password","password")

  if(hostel == "-1")
    return message("Please Select Hostel","hostel")

  if(designation == "-1")
    return message("Please Select Designation","designation")

}

function valid_room(){
  let roomNo= document.getElementById("room").value
  let beds = document.getElementById("beds").value
  let hostel = document.getElementById("hostel").value
  let floor = document.getElementById("floor").value

  if(roomNo == "" || roomNo ==null)
    return message("Please Enter Room Number","room")

  if(roomNo >200 || roomNo <1 || /[^0-9]/gi.test(roomNo))
    return message("Please Enter a Valid Room NUmber b/w 1-200","room")

  if(beds == "" || beds == null)
    return message("Please Enter Number of Beds","beds")

  if(beds <1 || beds > 10 || /[^0-9]/gi.test(beds))
    return message("Please Enter a Number b/w 1-10","beds")

  if(hostel == "-1")
    return message("Please Select a Hostel","hostel")

  if(floor == "-1")
    return message("Please Select a Floor","floor")

}

function valid_student(){
  let name = document.getElementById("name").value
  let age = document.getElementById("age").value
  let address = document.getElementById("address").value
  let fname = document.getElementById("fathname").value
  let fno = document.getElementById("fatherno").value
  let mname = document.getElementById("mothname").value
  let mno = document.getElementById("motherno").value
  let gname = document.getElementById("guardname").value
  let gno = document.getElementById("guardno").value
  let institute = document.getElementById("college").value
  let date = document.getElementById("joindate").value
  let room = document.getElementById("roomid").value

  if(name == "" || name == null)
    return message("Please Enter your Name","name")

  if(/[^a-z\s]/gi.test(name))
    return message("Please Enter a Valid Name","name")

  if(name.length <=2)
    return message("Please Enter Your Full Name","name")


  if(age == null || age == "")
    return message("Please Enter Your Age","age")

  if(age > 100 || age < 1 || /[^0-9]/gi.test(age))
    return message("Not a Valid Age!","age")

  if(age < 18 || age > 50 )
    return message("You are Too old or Too Young!","age")


  if(address == "" || address == null)
    return message("Please Enter your Address","address")

  if(address.length <= 10)
    return message("Please Enter a Valid Address","address")


  if(fname == "" || fname == null)
    return message("Please Enter your Father's Name","fathname")

  if(/[^a-z\s]/gi.test(fname))
    return message("Please Enter a Valid Name","fathname")

  if(fname.length <=2)
    return message("Please Enter Full Name of Your Father","fathname")








  if(mname == "" || mname == null)
    return message("Please Enter your Mother's Name","mothname")

  if(/[^a-z\s]/gi.test(mname))
    return message("Please Enter a Valid Name","mothname")

  if(mname.length <=2)
    return message("Please Enter Full Name of Your Mother","mothname")







  if(gname == "" || gname == null)
    return message("Please Enter your Guardian's Name","guardname")

  if(/[^a-z\s]/gi.test(gname))
    return message("Please Enter a Valid Name","guardname")

  if(gname.length <=2)
    return message("Please Enter Full Name of Your Guardian","guardname")


  if(institute == "" || institute == null)
    return message("Please Add Your Institution","college")

  if(institute.length <= 10)
    return message("Please Enter a valid Institution","college")

  //Date

  if(room == "-1")
    return message("Please Select Room","roomid")
}
