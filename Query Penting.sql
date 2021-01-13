INSERT INTO `peminjaman` (
		`B_ID`, 
		`T_USERNAME`, 
		`PT_ID`, 
		`P_MULAI`, 
		`P_SELESAI`, 
		`P_status`
		) 
	VALUES (
		'$idbuku', 
		'$username', 
		'$petugas', 
		current_timestamp(), 
		date_add(curdate(),interval 7 day), 
		'dipinjam'
		);
		
		

select 
	member.T_NAMA as 'nama peminjam', 
	buku.B_JUDUL as 'buku yang dipinjam', 
from peminjaman, member, buku 
where 
	peminjaman.B_ID = buku.B_id 
	and peminjaman.T_username = member.T_username
	and status = 0
	
update buku
	set B_Status = 1
	where B_id =$_GET['id'];
	
update peminjaman
	set P_Status = 1
	where P_id =$_GET['P_id']
	
select B_judul as 'Judul Buku', B_pengarang as 'Pengarang' where B_status = 0;
