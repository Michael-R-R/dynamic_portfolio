import { highlightNavigation } from "../Util/NavHighlighter"
import { loadPreviewBodies } from "../Util/LoadPreviewBodies"

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("v-nav-projects-preview");
    highlightNavigation("v-nav-articles-preview");
    loadPreviewBodies("post-preview-body");
});
