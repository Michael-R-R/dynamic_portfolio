import { highlightNavigation } from "../public/NavHighlighter"
import { loadPreviewBodies } from "../public/LoadPreviewBodies"

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("v-nav-projects-preview");
    loadPreviewBodies("post-preview-body");
});