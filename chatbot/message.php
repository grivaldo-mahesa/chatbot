<?php
$conn = mysqli_connect("localhost", "root", "", "bot") or die("Database Error");

$getMesg = mysqli_real_escape_string($conn, $_POST['text']);

$check_data = "SELECT replies FROM chatbot WHERE questions LIKE '%$getMesg%'";
$run_query = mysqli_query($conn, $check_data) or die("Error");

if(mysqli_num_rows($run_query) > 0){
    $fetch_data = mysqli_fetch_assoc($run_query);
    $replay = $fetch_data['replies'];
    echo $replay;
}else{
    echo "Silahkan mengunjungi <br>website resmi Nusantara di Nusa-antara.id untuk <br>informasi lebih lanjut dengan menghubungi kami <br>pada kontak yang telah disediakan atau anda <br>dapat chat CS kami melalui page facebook di <br><b><i>Nusantara.help</b></i>";
}

?>
