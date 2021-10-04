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

  if(age > 100 || age < 1)
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

  if(roomNo >200 || roomNo <1)
    return message("Please Enter a Valid Room NUmber b/w 1-200","room")

  if(beds == "" || beds == null)
    return message("Please Enter Number of Beds","beds")

  if(beds <1 || beds > 10)
    return message("Please Enter a Number b/w 1-10","beds")

  if(hostel == "-1")
    return message("Please Select a Hostel","hostel")

  if(floor == "-1")
    return message("Please Select a Floor","floor")

}
