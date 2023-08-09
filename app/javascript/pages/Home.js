import { highlightNavigation } from "../public/NavHighlighter"
import { loadPreviewBodies } from "../public/LoadPreviewBodies";

document.addEventListener('turbo:load', () =>
{
    highlightNavigation("v-nav-projects-preview");
    highlightNavigation("v-nav-articles-preview");
    loadPreviewBodies("post-preview-body")
});
