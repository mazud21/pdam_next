<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <script type="text/javascript">
            $(function() {
                    $.datepicker.regional['id'] = {clearText: 'Effacer', clearStatus: '',
                    
                    monthNames: ['Januari','Februari','Maret','April','Mei','Juni',
                    'Juli','Agustus','September','Oktober','November','Desember'],
                    monthNamesShort: ['Jan','Feb','Mar','Apr','Mei','Jun',
                    'Jul','Agu','Sep','Okt','Nov','Des'],
                    monthStatus: 'Voir un autre mois', yearStatus: 'Voir un autre année',
                    
                    dayNames: ['Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu'],
                    dayNamesShort: ['Min','Sen','Sel','Rab','Kam','Jum','Sab'],
                    dayNamesMin: ['Mi','Se','Se','Ra','Ka','Ju','Sa'],
                    
                    dateFormat: 'dd/mm/yy', firstDay: 0, 
                    };
                    $.datepicker.setDefaults($.datepicker.regional['id']);
                
                $('.tanggalShow').datepicker({
                    dateFormat:'DD yy-mm-dd'
                    });
            });
        </script>

        <script>
            function splitDate(){
                var spldt = document.getElementById("tanggalShow").value;
                var rslt = spldt.split(" ",1);
                var tgl = spldt.split(" ");
                
                document.getElementById("hari").value=rslt;
                document.getElementById("tanggal").value=tgl[1];
            }
        </script>
        
</head>
<body>       
<div class="container">

    <div class="row mt-3">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header">
                    Form Ubah Data Masalah Air
                </div>
                <div class="card-body">
                <form action="" method="post">
                        <div class="form-group">
                            <label for="no_info">Nomor Info</label>
                            <input type="text" name="no_info" class="form-control" id="no_info" value="<?= $no_info['no_info']; ?>" readonly>
                            <small class="form-text text-danger"><?= form_error('no_info'); ?></small>
                        </div>

                        <div class="form-group">
                            <label for="wilayah">Wilayah</label>
                            <input type="text" name="wilayah" class="form-control" id="wilayah" value="<?= $no_info['wilayah']; ?>">
                            <small class="form-text text-danger"><?= form_error('wilayah'); ?></small>
                        </div>

                        <div class="form-group">
                            <label for="hari">Hari</label>
                            <input type="text" name="hari" class="form-control" id="hari" value="<?= $no_info['hari']; ?>">
                            <small class="form-text text-danger"><?= form_error('hari'); ?></small>
                        </div>

                        <div class="form-group">
                            <label for="tanggal">Tanggal</label>
                            <input type="text" name="tanggalShow" class="form-control tanggalShow" id="tanggalShow" value="<?= $no_info['tanggal']; ?>" onChange="splitDate()" readonly>
                            <input type="text" name="tanggal" class="form-control tanggal" id="tanggal" onChange="splitDate()" hidden>
                            <small class="form-text text-danger"><?= form_error('tanggal'); ?></small>
                        </div>

                        <div class="form-group">
                            <label for="estimasi">Estimasi</label>
                            <input type="text" name="estimasi" class="form-control" id="estimasi" value="<?= $no_info['estimasi']; ?>">
                            <small class="form-text text-danger"><?= form_error('estimasi'); ?></small>
                        </div>
                        
                        <div class="form-group">
                            <label for="est_mulai">Waktu Mulai Perbaikan</label>
                            <input type="time" name="est_mulai" class="form-control" id="est_mulai" value="<?= $no_info['est_mulai']; ?>">
                            <small class="form-text text-danger"><?= form_error('est_mulai'); ?></small>
                        </div>
                        
                        <div class="form-group">
                            <label for="est_selesai">Waktu Selesai Perbaikan</label>
                            <input type="time" name="est_selesai" class="form-control" id="est_selesai" value="<?= $no_info['est_selesai']; ?>">
                            <small class="form-text text-danger"><?= form_error('est_selesai'); ?></small>
                        </div>
                        
                        <div class="form-group">
                            <label for="kerusakan">Kerusakan</label>
                            <input type="text" name="kerusakan" class="form-control" id="kerusakan" value="<?= $no_info['kerusakan']; ?>">
                            <small class="form-text text-danger"><?= form_error('kerusakan'); ?></small>
                        </div>
                        
                        <div class="form-group">
                            <label for="alternatif">Alternatif</label>
                            <input type="text" name="alternatif" class="form-control" id="alternatif" value="<?= $no_info['alternatif']; ?>">
                            <small class="form-text text-danger"><?= form_error('alternatif'); ?></small>
                        </div>
                        
                        <div class="form-group">
                            <label for="penanganan">Penanganan</label>
                            <input type="text" name="penanganan" class="form-control" id="penanganan" value="<?= $no_info['penanganan']; ?>">
                            <small class="form-text text-danger"><?= form_error('penanganan'); ?></small>
                        </div>
                        <button type="submit" name="ubah" class="btn btn-primary float-right " >Ubah Data</button>
                        <a href="<?= base_url(); ?>masalah" class="btn btn-secondary float-right mx-2">Kembali</a>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>