<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><?= $title;?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">Data User</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
						<tr>
							<th>No</th>
							<th>Pin</th>
							<th>DateTime</th>
							<th>Verified</th>
							<th>Status</th>
							<th>WorkCode</th>
						</tr>
					</thead>
					<tbody>
					<?php var_dump($user); ?>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>