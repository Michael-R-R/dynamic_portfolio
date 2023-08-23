import { highlightNavigation } from "../Util/NavHighlighter"
import { loadPreviewBodies } from "../Util/LoadPreviewBodies"
import "../Util/LoadMorePost"

document.addEventListener("turbo:load", () =>
{
    highlightNavigation("v-nav-projects-preview");
    loadPreviewBodies("post-preview-body");
});