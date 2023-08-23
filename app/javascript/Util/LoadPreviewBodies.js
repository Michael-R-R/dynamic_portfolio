export function loadPreviewBodies(className)
{
    let bodies = document.getElementsByClassName(className);
    for(let i = 0; i < bodies.length; i++)
    {
        let content = bodies[i].innerText;
        bodies[i].innerHTML = content;
    }
}