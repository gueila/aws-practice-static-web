const blob = document.getElementById('blob');

document.body.addEventListener('mousemove', (e) => {
    const { clientX, clientY } = e;
    
    blob.animate({
        left: `${clientX}px`,
        top: `${clientY}px`
    }, { duration: 4000, fill: "forwards" });
});
