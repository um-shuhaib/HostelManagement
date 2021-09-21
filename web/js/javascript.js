function valid_staff(){
  let name = document.getElementById("staff_name").value
  let age = document.getElementById("age").value
  let hostel = document.getElementById("hostel").value
  let salary = document.getElementById("salary").value
  let address = document.getElementById("address").value
  let designation = document.getElementById("designation").value
  let phone = document.getElementById("phone").value
  let mail = document.getElementById("email").value
  let pass = document.getElementById("password").value

  if(name == "" || name == null){
    alert("Please Enter Your Name")
    document.getElementById("staff_name").focus()
    return false
  }
  //To check whether Name contains specail characters of Numbers
  if(/[^a-z\s]/gi.test(name)){
    alert("Please Enter Valid Name")
    document.getElementById("staff_name").focus()
    return false
  }

  //To check whether Name contains less than 2 characters
  if(name.length <= 2){
    alert("Please Enter Your Full Name")
    document.getElementById("staff_name").focus()
    return false
  }

  if(age == null || age == ""){
    alert("Please Enter Your Age")
    document.getElementById("age").focus()
    return false
  }

  //To Limit Age below 100
  if(age > 100){
    alert("Not a Valid Age !")
    document.getElementById("age").focus()
    return false
  }

  //To limit Entries of people b/w 15 and 50
  if(age < 15 || age > 50 ){
    alert("You are Too old or Too Young!")
    document.getElementById("age").focus()
    return false
  }

  if(hostel == "-1"){
    alert("Please select a Hostel")
    document.getElementById("hostel").focus()
    return false
  }

  if(salary == null || salary == ""){
    alert("Please Enter Your Salary")
    document.getElementById("salary").focus()
    return false
  }

  if(/[^0-9\s]/gi.test(salary)){
    alert("Please Enter a Valid Salary")
    document.getElementById("salary").focus()
    return false
  }

  if(address.length < 5){
    alert("Please Enter your address")
    document.getElementById("address").focus()
    return false
  }

  if(designation == "-1"){
    alert("Please select a Designation")
    document.getElementById("designation").focus()
    return false
  }

  if(mail == null || mail == ""){
    alert("Please Add you Email Address")
    document.getElementById("email").focus()
    return false
  }

  if(pass == "" || pass == null){
    alert("please Add a Password")
    document.getElementById("password").focus()
    return false
  }
}
