import { highlightNavigation } from "../public/NavHighlighter";

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("header-nav");
});