const spinRecord = function() {
    let record = document.getElementById('record-disc');
    record.classList.add('spin');
}

setTimeout(spinRecord, 2*1000);

const goToPage = function(name) {
    const el = document.getElementById(name + '-txt');
    const btn = document.getElementById('back-btn');
    const nav = document.getElementById('link-nav');
    [el,btn,nav].map( e => e.classList.toggle('hide'));
}
const goBack = function() {
    const els = document.getElementsByClassName('text');
    const btn = document.getElementById('back-btn');
    const nav = document.getElementById('link-nav');
    const elArray = Array.from(els)
    elArray.map(e => e.classList.add('hide'));
    [btn,nav].map( e => e.classList.toggle('hide'));
}

document.getElementById('about').addEventListener('click', () => goToPage('about'));
document.getElementById('project').addEventListener('click', () => goToPage('project'));

document.getElementById('back-btn').addEventListener('click', goBack);
