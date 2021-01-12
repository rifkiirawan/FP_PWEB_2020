function validateForm() {
	var x = document.forms["daftar_admin"]["username"].value;
	if (x == "") {
		alert("Username harus diisi");
		return false;
	} else if (x.length<6){
		alert("Username terlalu pendek");
		return false;
	}
	var y = document.forms["daftar_admin"]["password"].value;
	if (y == "") {
		alert("Password harus diisi");
		return false;
	} else if (y.length < 8){
		alert("Password terlalu pendek");
		return false;
	}else if (!y.match(/[a-z]/g) || !y.match(/[A-Z]/g) || !y.match(/[0-9]/g)){
		alert("Password harus mengandung huruf besar, huruf kecil, dan angka");
		return false;
	}
	var z = document.forms["daftar_admin"]["ulang_password"].value;
	if (y != z){
		alert("Password tidak sesuai");
		return false;
	}
}
