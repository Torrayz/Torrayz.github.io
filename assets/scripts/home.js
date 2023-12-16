const inputNim = document.getElementById('nim');
const inputName = document.getElementById('nama');
const inputJurusan = document.getElementById('jurusan');

function addData() {
  const nim = inputNim.value;
  const nama = inputName.value;
  const jurusan = inputJurusan.value;

  const tableData = document.getElementById('data-table');
  const row = document.createElement('tr');

  const value = [nim, nama, jurusan];

  for (let i = 0; i < value.length; i++) {
    const cell = document.createElement('td');
    cell.innerHTML = value[i];
    row.appendChild(cell);
  }

  tableData.appendChild(row);
}