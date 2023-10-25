<?php $no = 1; foreach ($absen as $row): ?>

<tr>
	<td><?= $no++; ?></td>
	<td><?= $row->nama_mesin; ?></td>
	<td>
	<?php if($row->nis === NULL){
				$nama = $row->nip;
				echo $row->nip;
			}else{
				$nama = $row->nis;
				echo $row->nis;
			}?>	
	</td>
	<td><?= join_member($nama); ?></td>
	<td><?= date('d-m-y',strtotime($row->date_in)); ?></td>
	<td class="text-success"><?= $row->time_in; ?></td>
	<td class="text-danger"><?= $row->time_out; ?></td>
	<td><?= $row->status; ?></td>
</tr>	
	
<?php endforeach ?>
