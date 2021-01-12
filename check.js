function validateForm() {
	var x = document.forms["addMember"]["T_USERNAME"].value;
	if (x == "") {
		alert("Username harus diisi");
		return false;
	} else if (x.length<6){
		alert("Username Minimal 6 karakter");
		return false;
	}
	var c = document.forms["addMember"]["T_NAMA"].value;
	if (c == "") {
		alert("Nama harus diisi");
		return false;
	} else if (c.length<6){
		alert("Nama Minimal 6 karakter");
		return false;
	}
	var a = document.forms["addMember"]["T_TELEPON"].value;
	if (a == "") {
		alert("Nomor Telepon harus diisi");
		return false;
	} else if (a.length<11){
		alert("Nomor Telepon Minimal 11 angka");
		return false;
	} else if (a.match(/[a-z]/g) || a.match(/[A-Z]/g)){
		alert("Nomor Telepon Tidak Valid");
		return false;
	}
	var b = document.forms["addMember"]["T_ALAMAT"].value;
	if (b == "") {
		alert("Nomor Telepon harus diisi");
		return false;
	}
	var y = document.forms["addMember"]["T_PASSWORD"].value;
	if (y == "") {
		alert("Password harus diisi");
		return false;
	} else if (y.length < 8){
		alert("Password terlalu pendek (Minimal 8 karakter dan mengandung huruf besar,huruf kecil, dan angka)");
		return false;
	}else if (!y.match(/[a-z]/g) || !y.match(/[A-Z]/g) || !y.match(/[0-9]/g)){
		alert("Password harus mengandung huruf besar, huruf kecil, dan angka");
		return false;
	}
}
