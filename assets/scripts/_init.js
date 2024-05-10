// mendapatkan LOGIN element dari DOM
const loginElement = document.querySelector('#login');

// fungsi untuk menampilkan modal
function showPopUp() {
  loginElement.classList.add('display');

  // menyembunyikan login setelah 3 detik
  setTimeout(function() {
    loginElement.classList.remove('display')
  }, 3000)
}

// pindah ke halaman home
function goToHome() {
  location.href = './home.html';
}


// pindah ke halaman login
function goToLogin() {
  location.href = './index.html';
}
