import "bootstrap";
import "jquery";

import { loadDynamicBannerText } from '../packs/components/banner';
const bannerTypedTextContainer = document.getElementById('banner-typed-text');
if (bannerTypedTextContainer) {
  loadDynamicBannerText();
}

import { popover } from '../packs/components/popover';
popover();
