<?php $no = 1; foreach ($absen as $row): ?>

<tr>
	<td><?= $no++; ?></td>
	<td><?= $row->nis; ?></td>
	<td><?= $row->nama; ?></td>
	<td><?= $row->kelas; ?></td>
	<td><?= date('d-m-y',strtotime($row->date_in)); ?></td>
	<td class="text-success"><?= $row->time_in; ?></td>
	<td class="text-danger"><?= $row->time_out; ?></td>
	<td><?= $row->status; ?></td>
	<td>
		<?php if($row->flag == 'Y'):?>
			<div class="badge badge-success">terkirim</div>
		<?php else:?>
			<div class="badge badge-danger">belum terkirim</div>
		<?php endif?>	
	</td>
</tr>	
	
<?php endforeach ?>
