let twd_jpy_line_1 = document.getElementById('line-chart-1');
let twd_jpy_line_2 = document.getElementById('line-chart-2');
let twd_jpy_data = JSON.parse(document.getElementById('exchangeData').innerHTML);

console.log(twd_jpy_data);

// 設定第一
let trace1 = {
    type: "scatter",
    mode: "lines",
    name: "TWD to JPY",
    text: [],
    x: [],
    y: []
};

for (let i = 0; i < twd_jpy_data.length; i++) {
    trace1.x[i] = twd_jpy_data[i].date;
    trace1.y[i] = twd_jpy_data[i]['twd-jpy'];
}

console.log("trace1.x: ", trace1.x);
console.log("trace1.y: ", trace1.y);

let data1 = [trace1];

let layout1 = {
    margin: { t: 0 },
    xaxis: { showline: true },
    yaxis: { showline: true },
    annotations: [
        {
            xref: 'paper',
            yref: 'paper',
            x: 0.5,
            y: 0.1,
            text: `JPY Exchange ${trace1.x[0]} ~ ${trace1.x.slice(-1)}`,
            showarrow: false,
            xanchor: 'center',
            yanchor: 'top',
            font: { size: 15, color: 'gray' }
        }
    ]
};

Plotly.newPlot(twd_jpy_line_1, data1, layout1);

// 設定第二
let trace2 = {
    type: "scatter",
    mode: "lines",
    name: "TWD to JPY (Copy)",
    text: [],
    x: [],
    y: []
};

for (let i = 0; i < twd_jpy_data.length; i++) {
    trace2.x[i] = twd_jpy_data[i].date;
    trace2.y[i] = twd_jpy_data[i]['usd-twd'];
}

let data2 = [trace2];

let layout2 = {
    margin: { t: 0 },
    xaxis: { showline: true },
    yaxis: { showline: true },
    annotations: [
        {
            xref: 'paper',
            yref: 'paper',
            x: 0.5,
            y: 0.1,
            text: `USD Exchange ${trace2.x[0]} ~ ${trace2.x.slice(-1)}`,
            showarrow: false,
            xanchor: 'center',
            yanchor: 'top',
            font: { size: 15, color: 'gray' }
        }
    ]
};

// 繪製第二個圖表
Plotly.newPlot(twd_jpy_line_2, data2, layout2);