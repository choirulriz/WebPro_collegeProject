<div class="container-fluid mt-2">

    <div class="d-flex justify-content-center bd-highlight  position-relative" style="height:45px">
        <div class=" position-absolute">
            <button type="button" class="btn rounded-0 btn-outline-dark">Editor's Picks</button>
        </div>
        <div class="d-flex mt-auto ml-auto">
            <a href="">lihat Semua</a>
        </div>
    </div>


    <div class="d-lg-flex flex-wrap m-5 justify-content-center">

        <?php foreach ($barang as $b) : ?>

            <div class="card m-3" style="width: 18rem;">
                <a href="<?= base_url(); ?>home/product/<?= $b['ID_Barang']; ?>" style="text-decoration:none">
                    <img class="card-img-top" src="<?= base_url(); ?>assets/img/barangHome/<?= $b['Gambar']; ?>" alt="<?= $b['Gambar']; ?>">
                    <div>
                        <?= $b['Nama_Barang']; ?>
                    </div>
                    <div class="mt-1">
                        <strong> Rp <?= $b['Harga']; ?></strong>
                    </div>
            </div>
            </a>
        <?php endforeach; ?>
    </div>


    <div class="d-flex justify-content-center bd-highlight " style="margin-bottom:80px">
        <div class="kotakTengah">
            Belanja untuk Hadiah
        </div>
    </div>


    <div class="d-flex justify-content-center mb-5">
        <div class="mr-3 ml-3">
            <a href="">
                <img src="<?= base_url(); ?>assets/img/forher.png" width="300px" alt="For Her">

            </a>
        </div>
        <div class="mr-3 ml-3">
            <a href="">

                <img src="<?= base_url(); ?>assets/img/forhim.png" width="300px" alt="For Him">
            </a>
        </div>
        <div class="mr-3 ml-3">
            <a href="">

                <img src="<?= base_url(); ?>assets/img/forkid.png" width="300px" alt="For Kid">
            </a>
        </div>
    </div>
    <!-- 
    <div class="d-flex justify-content-center bd-highlight  " style="margin-bottom:80px">
        
    </div> -->





    <div class="mb-5">
        <a href="#">
            <img src="<?= base_url(); ?>assets/img/bannerBukaToko.jpg" width="100%" alt="Banner buka Toko">
        </a>
    </div>

    <div class="mb-5">
        <a href="#">
            <img src="<?= base_url(); ?>assets/img/bannerMakanan.jpg" width="100%" alt="Banner buka makanan">
        </a>
    </div>
    <div class="mb-5">
        <a href="#">
            <img src="<?= base_url(); ?>assets/img/bannerTool.png" width="100%" alt="Banner buka Tools">
        </a>
    </div>

    <div class="border rounded-0 border-dark position-relative" style="left:50%;margin-left:-125px;margin-top:80px;width:250px;height:40px">
        <div class="position-absolute" style="top:5px;left:50px">
            Bekerjasama dengan:
        </div>
    </div>

    <div class="d-flex justify-content-center bd-highlight " style="margin-top:50px;margin-left:-30px">
        <div class="" style="margin-left:60px">
            <a href="#">
                <img src="<?= base_url(); ?>assets/img/berita_satu.png" height="45px" alt="">
            </a>
        </div>
        <div class="" style="margin-left:60px">
            <a href="#">
                <img src="<?= base_url(); ?>assets/img/ibc.png" height="45px" alt="">
            </a>
        </div>
        <div class="" style="margin-left:60px">
            <a href="#">
                <img src="<?= base_url(); ?>assets/img/infoserpong.png" height="45px" alt="">
            </a>
        </div>
    </div>

    <div class="d-flex justify-content-between bd-highlight position-relative" style="height:45px;margin-top:80px">
        <div class="" style="width:45px">
            Metode Pembayaran
        </div>
        <!-- <div>
            <img src="assets/img/bca.jpg" width="3%" alt="">
        </div> -->
        <div class=" text-right" style="width:80px">
            Jasa Pengriman
        </div>
    </div>


</div>