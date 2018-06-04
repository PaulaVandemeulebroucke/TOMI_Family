import "bootstrap";
import "jquery";

import { loadDynamicBannerText } from '../packs/components/banner';
const bannerTypedTextContainer = document.getElementById('banner-typed-text');
if (bannerTypedTextContainer) {
  loadDynamicBannerText();
}

import { popover } from '../packs/components/popover';
popover();

// import { swipe } from '../packs/components/swipe';
// swipe();

import { moveToLeft } from '../packs/components/card';
moveToLeft();

import { myFunction } from '../packs/components/filter';
myFunction();

import { filterFunction } from '../packs/components/filter';
filterFunction();

