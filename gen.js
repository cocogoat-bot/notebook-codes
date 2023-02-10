import fs from 'fs';


function randomString(e) {    
    var t = "abcdefhijkmnprstwxyz2345678",
    a = t.length,
    n = "";
    for (let i = 0; i < e; i++) n += t.charAt(Math.floor(Math.random() * a));
    return n
}


function genFileName(e, type) {
    type = type || 'c';
    e = e || 8;
    let id = randomString(e);
    while(fs.existsSync(id + "." + type)) {
        id = randomString(e);
        path = randomString(4);
    }
    return id + "." + type;
}


let type = process.env.type || 'c';
let e = process.env.e || 8;
let fileName = genFileName(e, type);
fs.writeFileSync(fileName, '');
console.log('--- FileName ---');
console.log(fileName);
console.log('--- Markdown ---');
console.log('[](https://github.com/cocogoat-bot/notebook-codes/blob/main/' + fileName + ")");