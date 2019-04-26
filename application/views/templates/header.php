<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title><?= $judul; ?></title>
</head>


<body>
    <div class="container-fluid shadow-sm">
        <!-- //awal header utama -->
        <div class="d-flex justify-content-between ">
            <div>
                <a href="">
                    <img src="<?= base_url('assets/img/LogoHandmadenesiaEarthHour.png'); ?>" height="60px" alt="Logo hand madenesia earth hour">
                </a>
            </div>
            <div style="width:450px;min-width:200px">
                <input type="text" class=" form-control rounded-pill" style="margin-top:10px" id="search" autocomplete="false">
            </div>

            <div class="d-flex ">
                <div class=" position-relative" style="width:90px">
                    <a class="nav-link" href="#">
                        <div class="position-absolute" style="left:30px">
                            <img class="d-block" src="<?= base_url(); ?>assets/icon/promotion.png" width="30px" alt="">
                        </div>
                        <div class="position-absolute mt-1" style="left:30px;top:50%">
                            Sale
                        </div>
                    </a>
                </div>
                <div class=" position-relative" style="width:90px">
                    <a class="nav-link d-block" href="#">
                        <div class="position-absolute" style="left:30px">
                            <img class="d-block" src="<?= base_url(); ?>assets/icon/shopIcon.png" width="30px" alt="">
                        </div>
                        <div class="position-absolute mt-1" style="left:25px;top:50%">
                            Toko
                        </div>
                    </a>
                </div>
                <div class=" position-relative" style="width:90px">
                    <a class="nav-link" href="#">
                        <div class="position-absolute" style="left:30px">
                            <img class="d-block" src="<?= base_url(); ?>assets/icon/favorites.png" width="30px" alt="">
                        </div>
                        <div class="position-absolute mt-1" style="left:20px;top:50%">
                            Favorit
                        </div>
                    </a>
                </div>
                <div class=" position-relative" style="width:90px">
                    <a class="nav-link" href="<?= base_url('Auth'); ?>">
                        <div class="position-absolute" style="left:30px">
                            <img class="d-block" src="<?= base_url(); ?>assets/icon/profile.png" width="30px" alt="">
                        </div>
                        <div class="position-absolute mt-1" style="left:25px;top:50%">
                            Sign In
                        </div>
                    </a>
                </div>
                <div class=" position-relative" style="width:90px">
                    <a class="nav-link" href="#">
                        <div class="position-absolute" style="left:25px">
                            <img class=" " src="<?= base_url(); ?>assets/icon/keranjang.png" width="30px" alt="">
                        </div>
                        <div class="position-absolute mt-1" style="left:10px;top:50%">Keranjang</div>
                    </a>
                </div>
            </div>
        </div>
        <!-- //akhir header utama -->
        <!-- awal header kedua -->
        <div class="d-flex justify-content-between mt-3 ">
            <div class="">
                <a href="">
                    <img src="<?= base_url(); ?>assets/img/workshop.png" style="width:200px" alt="Logo hand madenesia earth hour">
                </a>

            </div>

            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/women.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Women
                    </div>
                </a>
            </div>

            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/men.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Men
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/kids.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Kids
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/tools.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Tools
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/electronic.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Electronic Accessories
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/wedding.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Wedding Party
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/cullinary.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Cullinary
                    </div>
                </a>

            </div>
            <div class="kategori " style="padding:20px">
                <a href="">
                    <div class="subkategori ">
                        <img class="d-block" src="<?= base_url(); ?>assets/icon/editor.png" width="30px" alt="">
                    </div>
                    <div class="subkategoriNama">
                        Editor Picks
                    </div>
                </a>

            </div>
        </div>





    </div>