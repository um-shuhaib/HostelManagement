<script type="text/javascript">
    function valid(){
        let name = document.getElementById("staff_name").value
        let age = document.getElementById("age").value
        let hostel = document.getElementById("hostel").value

        if(name == ""){
            console.log("Enter a valid name")
            alert("Please Enter a Valid Name")
            document.getElementById("staff_name").focus()
            return false
        }
        if(/[^a-z\s]/gi.test(name)){
            console.log("Not a valid name")
            alert("Not a Valid Name")
            document.getElementById("staff_name").focus()
            return false
        }

        // if(isNaN(age)){
        // 	alert("Please Enter a Valid Age")
        // 	document.getElementById("age").focus()
        // 	return false
        // }
        if(Age <15 || Age >50){
            alert("You are Too Old or Too Young ")
            document.getElementById("age").focus()
            return false
        }

        if(hostel == -1){
            alert("Please select hostel")
            document.getElementById("hostel").focus()
            return false
        }

    }

</script>
