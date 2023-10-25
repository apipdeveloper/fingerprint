
<?php $no = 1; foreach ($absen as $row): ?>

<tr>
	<td><?= $no++;?></td>	
	<td><?= $row['nis']; ?></td>
	<td><?= $row['nama']; ?></td>
	<td><?= $row['kelas']; ?></td>
	<td>
	<input type="hidden" name="pin[]" value="<?= $row['pin'];?>" >
		<select name="status[]">
			<option value="" selected disabled>::-Pilih-::</option>
			<option value="H">Hadir</option>
			<option value="I">Izin</option>
			<option value="S">Sakit</option>
			<option value="A">Alpa</option>
			<option value="C">Cuti</option>
		</select>
	</td>
	
</tr>	


	
<?php endforeach ?>
