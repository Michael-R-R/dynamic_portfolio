import { highlightNavigation } from "../Util/NavHighlighter";

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("header-nav");
});