import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


import { initMapbox } from 'packs/init_mapbox';
import { initAutocomplete } from 'packs/init_autocomplete';

initMapbox();
initAutocomplete(bien_address);
