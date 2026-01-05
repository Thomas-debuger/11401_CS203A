let mapArray, ctx, currentImgMain;
let imgMountain, imgMain, imgEnemy;
const gridLength = 100;

function loadImages(sources, callback) { //mod
    var images = {}; 
    var loadedImages = 0;
    var numImages = 0;
    // get num of sources
    for(var src in sources) {
      numImages++;
    }
    for(var src in sources) {
      images[src] = new Image();
      images[src].onload = function() {
        if(++loadedImages >= numImages) {
          callback(images);
        }
      };
      images[src].src = sources[src];
    }
  }

//initial
$(function(){
    // 0 : available, 1 : Mountain, 2 : Final Stop, 3 : Enemy
    mapArray = [
        [0, 0, 1, 0, 0, 0, 1, 4],
        [1, 0, 0, 0, 1, 0, 0, 0],
        [1, 1, 0, 1, 1, 1, 0, 1],
        [1, 0, 0, 1, 1, 1, 0, 1],
        [1, 0, 1, 1, 1, 1, 0, 1],
        [3, 0, 1, 1, 1, 1, 0, 2],
    ];
    ctx = $("#myCanvas")[0].getContext("2d");

    imgMain = new Image();
    imgMain.src = "/static/images/spriteSheet.png";
    currentImgMain = {
        x:0,
        y:0
    };


    imgMountain = new Image();
    imgMountain.src = "/static/images/material.png";
    imgEnemy = new Image();
    imgEnemy.src = "/static/images/Enemy.png";

    
    const sources = {
        imgMain: "/static/images/spriteSheet.png",
        imgMountain: "/static/images/material.png",
        imgEnemy: "/static/images/Enemy.png"
    };

    loadImages(sources, function(images) {
        // Draw main character
        ctx.drawImage(images.imgMain, 0, 0, 80, 130, currentImgMain.x, currentImgMain.y, gridLength, gridLength);

        // Draw map elements
        for (let x in mapArray) {
            for (let y in mapArray[x]) {
                if (mapArray[x][y] == 1) {
                    ctx.drawImage(images.imgMountain, 32, 65, 32, 32, y * gridLength, x * gridLength, gridLength, gridLength);
                } else if (mapArray[x][y] == 3) {
                    ctx.drawImage(images.imgEnemy, 7, 40, 104, 135, y * gridLength, x * gridLength, gridLength, gridLength);
                }else if(mapArray[x][y]==4){
                    ctx.drawImage(images.imgMountain, 64, 65, 32, 32, y * gridLength, x * gridLength, gridLength, gridLength);
                }
            }
        }
    });

    /*
    imgMountain.onload = function(){
        imgEnemy.onload = function(){
            for(let x in mapArray){
                for(let y in mapArray[x]){
                    if(mapArray[x][y] == 1){
                        ctx.drawImage(imgMountain, 32, 65, 32, 32, y*gridLength, x*gridLength, gridLength, gridLength);
                    }else if(mapArray[x][y] == 3){
                        ctx.drawImage(imgEnemy, 7, 40, 104, 135, y*gridLength, x*gridLength, gridLength, gridLength);
                    }
                }
            }
        };
    };
    */
});

//Click Event
$(document).on("keydown", function(event){
    console.log(event.code);
    let targetImg, targetBlock, cutImagePositionX;
    targetImg = {
        x:-1,
        y:-1
    };
    targetBlock = {
        x:-1,
        y:-1
    };
    event.preventDefault();
    switch(event.code){
        case "ArrowLeft":
            targetImg.x = currentImgMain.x - gridLength;
            targetImg.y = currentImgMain.y;
            cutImagePositionX = 175;
            break;
        case "ArrowUp":
            targetImg.x = currentImgMain.x;
            targetImg.y = currentImgMain.y - gridLength;
            cutImagePositionX = 355;
            break;
        case "ArrowRight":
            targetImg.x = currentImgMain.x + gridLength;
            targetImg.y = currentImgMain.y;
            cutImagePositionX = 540;
            break;
        case "ArrowDown":
            targetImg.x = currentImgMain.x;
            targetImg.y = currentImgMain.y + gridLength;
            cutImagePositionX = 0;
            break;
        default:
            return;
    }

    if(targetImg.x <= 800 && targetImg.x >=0 && targetImg.y <= 600 && targetImg.y >=0){
        targetBlock.x = targetImg.y / gridLength;
        targetBlock.y = targetImg.x / gridLength;
    }else{
        targetBlock.x = -1;
        targetBlock.y = -1;
    }

    ctx.clearRect(currentImgMain.x, currentImgMain.y, gridLength, gridLength);

    if(targetBlock.x != -1 && targetBlock.y != -1){
        switch(mapArray[targetBlock.x][targetBlock.y]){
            case 0:
                $("#talkBox").text("");
                currentImgMain.x = targetImg.x;
                currentImgMain.y = targetImg.y;
                break;
            case 1:
                $("#talkBox").text("有山");
                break;
            case 2: // Final Stop
                $.post('/call_llm2')
                    .done(function (data) {
                        console.log(data);
                        $("#talkBox").text(data);
                    })
                    .fail(function (error) {
                        console.error("Error:", error);
                    });
                // $("#talkBox").text("哈摟");
    currentImgMain.x = targetImg.x;
    currentImgMain.y = targetImg.y;
    break;
            case 3: //Enemy
                $("#talkBox").text("機器人思考中...");
                $.post('/call_llm')
                    .done(function (data) {
                        console.log(data);
                        $("#talkBox").text(data);
                    })
                    .fail(function (error) {
                        console.error("Error:", error);
                    });
                // $("#talkBox").text("哈摟");
                break;
            case 4: //tomato
                $("#talkBox").text("番茄");
                currentImgMain.x = targetImg.x;
                currentImgMain.y = targetImg.y;
                ctx.clearRect(currentImgMain.x, currentImgMain.y, gridLength, gridLength);
                break;
        }
    }else{
        $("#talkBox").text("邊界");
    }

    ctx.drawImage(imgMain, cutImagePositionX, 0, 80, 130, currentImgMain.x, currentImgMain.y, gridLength, gridLength);

});