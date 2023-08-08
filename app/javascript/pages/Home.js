import { highlightNavigation } from "../public/NavHighlighter"

document.addEventListener('turbo:load', () =>
{
    highlightNavigation("v-nav-projects-preview");
    highlightNavigation("v-nav-articles-preview");
});
