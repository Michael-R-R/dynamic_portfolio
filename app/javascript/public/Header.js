import { highlightNavigation } from "utility/NavHighlighter";

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("header-nav");
});