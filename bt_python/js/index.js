document.addEventListener("DOMContentLoaded", function () {
  console.log("oke tải index.js");
});

function randomNow(){
  fetch(`http://localhost/bt_python/api.php?action=get_it`)
  .then((response) => {
    // Xử lý phản hồi từ máy chủ
    if (!response.ok) {
      throw new Error("Network response was not ok");
    }
    return response.json();
  })
  .then((json_data) => {
    // Chế table
    console.log("datatanow: ",json_data)
    let kq = `
      <table class="table table-bordered table-success">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Sid</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>`
            json_data.forEach((item, index) => {
              kq += `
              <tr>
                  <td>${index}</td>
                  <td>${item.sid}</td>
                  <td>${item.Name}</td>
                  <td>${item.value}</td>
                  <td>${item.time}</td>
                  </tr>
              `;
          });
           kq +=  `</tbody>
        </table>
    `;

    document.getElementById("table_now").innerHTML = kq;
  });
  }

  function random_all(){
    fetch("http://localhost/bt_python/api.php?action=get_all")
      .then((response) => {
        // Xử lý phản hồi từ máy chủ
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((json_data) => {
        console.log(json_data);
         const sensor1Data = json_data.filter(d => d.sid.trim() === "1");
        const sensor2Data = json_data.filter(d => d.sid.trim() === "2");

        const sensor1Temps = sensor1Data.map(d => ({x: d.time, y: d.value}));
        const sensor2Temps = sensor2Data.map(d => ({x: d.time, y: d.value}));

        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'line',
            data: {
                datasets: [
                    {
                        label: 'Cảm biến 1 (Nhiệt độ)',
                        data: sensor1Temps,
                        borderColor: 'rgba(255, 99, 132, 1)',
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        borderWidth: 1,
                        fill: false,
                    },
                    {
                        label: 'Cảm biến 2 (Nhiệt độ)',
                        data: sensor2Temps,
                        borderColor: 'rgba(54, 162, 235, 1)',
                        backgroundColor: 'rgba(54, 162, 235, 0.2)',
                        borderWidth: 1,
                        fill: false,
                    }
                ]
            },
            options: {
                scales: {
                    x: {
                        type: 'time',
                        time: {
                            unit: 'minute'
                        },
                        title: {
                            display: true,
                            text: 'Thời gian'
                        }
                    },
                    y: {
                        title: {
                            display: true,
                            text: 'Giá trị'
                        }
                    }
                },
                plugins: {
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    }
                }
            }
        });
      })
      .catch((error) => {
        // Xử lý lỗi nếu có
        console.error("There was a problem with the fetch operation:", error);
      });
  }

  random_all();
  randomNow();
setInterval(() => {
  randomNow();
  random_all();
}, 1000*30);


