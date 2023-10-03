export function highlightNavigation(id)
{
    let nav = document.getElementById(id);
    if (nav === null)
        return;

    let collection = nav.querySelectorAll("li");
    if(collection === null)
        return;

    for(let i = 0; i < collection.length; i++)
    {
        collection[i].onmouseenter = dehighlight;
        collection[i].onmouseleave = highlight;
    }

    function dehighlight(e)
    {
        for(let i = 0; i < collection.length; i++)
        {
            if(e.target.innerText === collection[i].innerText)
                continue;

            collection[i].style.opacity = "1";
            collection[i].style.transition = "opacity 0.5s";
            collection[i].style.opacity = "0.2";
        }
    }

    function highlight(e)
    {
        for(let i = 0; i < collection.length; i++)
        {
            collection[i].style.opacity = "0.2";
            collection[i].style.transition = "opacity 1s";
            collection[i].style.opacity = "1";
        }
    }
}