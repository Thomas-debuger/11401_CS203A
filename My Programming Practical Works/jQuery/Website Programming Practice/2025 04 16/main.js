d3.csv('https://raw.githubusercontent.com/ryanchung403/dataset/refs/heads/main/harry_potter.csv').then(res =>{
    console.log(res);
    drawGraph(res);
});

//unpack the data
function unpack(rows, key) {
    return rows.map(function (row) {
        return row[key];
    });
}

function drawGraph(res){
    console.log(res);
    let years = unpack(res, "release_year");
    let revenues = unpack(res, "revenue");
    let budgets = unpack(res, "budget");
    let trace1 = {
        type: "scatter",
        mode: "markers+lines",
        name: "revenue",
        x: unpack(res, "release_year"),
        y: revenues,
        marker: {
            size: 10
        }
    };

    /*for (let i = 0; i < set1.length; i++) {
        trace1.x.push(set1[i][0]);
        trace1.y.push(set1[i][1]);
    }*/

    let trace2 = {
        type: "scatter",
        mode: "markers+lines",
        name: "budget",
        x: years,
        y: budgets,
    };

    /*for (let i = 0; i < set2.length; i++) {
        trace2.x.push(set2[i][0]);
        trace2.y.push(set2[i][1]);
    }*/

    let data = [trace1, trace2];

    let layout = {
        margin: {
            t: 50,
            b: 30,
            l: 30,
            r: 20
        },
        title: {
            text: "Harry Potter 電影：年度預算與票房"
        }
    };

    Plotly.newPlot("myGraph", data, layout);
}