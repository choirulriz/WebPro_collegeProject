<div class="container-fluid mt-2">
    <div class="d-flex p-3 bd-highlight ">
        <div class="">
            <a href="#">
                <img src="<?= base_url(); ?>assets/img/logoToko/<?= $toko['Gambar']; ?>" width="100px" alt="">
            </a>
        </div>

        <div class="d-flex align-items-center mb-3">
            <div class="d-flex flex-column">
                <div>
                    <?= $toko['Nama_Toko']; ?>
                </div>
                <div>
                    <?= $toko['Kota']; ?>, <?= $toko['Provinsi']; ?>
                </div>
            </div>
        </div>
    </div>

    <div class="d-sm-flex mb-3">
        <div>
            <img src="<?= base_url(); ?>assets/img/barang/<?= $barang['Gambar']; ?>" style="width:800px;max-height:800px" alt="">
        </div>
        <div class="d-flex flex-fill flex-column ml-4">
            <div class="mb-4">
                <strong><?= $barang['Nama_Barang']; ?></strong>
            </div>
            <div class="d-flex flex-row justify-content-between">
                <div>
                    <strong><?= $barang['Harga']; ?></strong>
                </div>
                <div>
                    <button type=" button" class="btn btn-outline-dark"><img width="20px" style="margin-right:5px;margin-bottom:5px" src="<?= base_url(); ?>assets/img/heart.png">Favorite</button>
                </div>
            </div>
            <hr>



            <div class="d-flex flex-row mb-3 justify-content-between">
                <div>
                    variasi:
                </div>
                <div>
                    Ketersediaan Stok
                </div>
            </div>
            <div class="d-flex mb-3 flex-row justify-content-between">
                <div class="dropdown">
                    <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Variasi
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </div>
                <div>
                    <strong><?= $barang['Stok']; ?></strong>
                </div>
            </div>

            <div class="mb-3">
                Persediaan:
            </div>

            <div class="mb-3">
                Dukugan Pengiriman:
            </div>
            <div class="mb-3">
                <?= $barang['Jenis_pengiriman']; ?>
            </div>
            <div class="d-flex justify-content-center">
                <div class="mb-5 " style="width:400px">

                    <button type=" button" class="btn btn-dark rounded-0" style="width:400px">BELI</button>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <div style="padding:5px;border-style:dashed;width:350px">
                    <img width="50px" style="margin-top:10px;margin-left:5px;margin-right:5px;margin-bottom:5px" src="<?= base_url(); ?>assets/img/security.png">

                    <small>Belanja 100% Aman, Mudah dan Terjamin di Handmadenesia</small>


                </div>
            </div>
        </div>

    </div>


</div>
</div>





</div>