class Pathology {
  String title;
  String description;
  String imageUrl;
  String orgControl;
  String chemControl;
  String measures;
  String sinTitle;
  String sinDescription;
  String sinOrgControl;
  String sinChemControl;
  String sinMeasures;
  String imageUrl1;
  String imageUrl2;

  Pathology({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.orgControl,
    required this.chemControl,
    required this.measures,
    required this.sinTitle,
    required this.sinDescription,
    required this.sinOrgControl,
    required this.sinChemControl,
    required this.sinMeasures,
    required this.imageUrl1,
    required this.imageUrl2,
  });
}

List<Pathology> riceList = [
  Pathology(
    title: 'Rice Blast',
    description:
        'Rice blast, caused by a fungus, affects all the above-ground parts of the plant: leaf, collar, node, neck, parts of panicle, and sometimes leaf sheath. Leaves exhibit yellow to light green chlorotic, eye-shaped lesions with pointed ends. The borders of these lesions are necrotic and the center is grey to white. The size of the lesions depends on the age of the plant, the variety and the time of infection. As the lesions grow, the leaves dry out gradually, occasionally causing the complete death of seedling or young plants.',
    imageUrl: 'assets/images/rice_blast.png',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Fungicides containing azoxystrobin, or active ingredients of the family of triazoles or strobilurins can also be sprayed at nursery, tillering and panicle emergence stages to control rice blast. One or two fungicide applications at heading can be effective in controlling the disease.',
    measures:
        '- Avoid excessive nitrogen fertilization and split the applications into two or more treatments.\n- Maintain continuous flooding and avoid drainage of the rice field.\n- Apply silicon fertilizers if the soil is known to be silicon deficient.\n- Destroy all infected plant residues to prevent the carry-over of the fungus in the field.',
    sinTitle: 'කොළ පාළුව',
    sinDescription:
        'දිලීරයකින් ඇති වන අතර, ශාකයේ සියලුම ඉහත බිම් කොටස් වලට බලපායි: කොළ, කරපටි, නෝඩ්, බෙල්ල, පැනල් කොටස් සහ සමහර විට කොළ කොපුව.පත්‍ර කහ සිට ලා කොළ, උල් වූ කෙළවර සහිත අක්ෂි හැඩැති තුවාල පෙන්නුම් කරයි.මෙම තුවාල වල මායිම් නික්‍රෝටික් වන අතර මධ්‍යයේ අළු සිට සුදු පැහැයක් ගනී.තුවාලයේ ප්‍රමාණය ශාකයේ වයස, විවිධත්වය සහ ආසාදනයේ කාලය මත රඳා පවතී.තුවාල වර්ධනය වන විට, පත්‍ර ක්‍රමයෙන් වියළී යන අතර, ඉඳහිට බීජ පැල හෝ තරුණ පැළෑටි සම්පූර්ණයෙන් මිය යයි.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'මෙම රෝගය පාලනය කිරීම සඳහා ඇසොක්සිස්ට්‍රොබින් අඩංගු දිලීර නාශක හෝ ට්‍රයිසෝල් හෝ ස්ට්‍රොබියුරින් පවුලට අයත් ක්‍රියාකාරී අමුද්‍රව්‍ය තවාන්, ගොයම් කැපීම සහ පැනල් හටගන්නා අවස්ථා වලදී ඉසිය හැක. ශීර්ෂයේදී දිලීර නාශක යෙදීම් එකක් හෝ දෙකක් රෝගය පාලනය කිරීම සඳහා ඵලදායී විය හැක.',
    sinMeasures:
        '- අධික ලෙස නයිට්‍රජන් පොහොර යෙදීමෙන් වළකින්න සහ ප්‍රතිකාර දෙකකට හෝ වැඩි ගණනකට යෙදීම් බෙදන්න.\n- අඛණ්ඩ ගංවතුර නඩත්තු කිරීම සහ කුඹුරේ ජලාපවහනය වළක්වන්න.\n- පස සිලිකන් ඌනතාවක් ඇති බව දන්නේ නම් සිලිකන් පොහොර යොදන්න.\n- සියල්ල විනාශ කරන්න. ආසාදිත ශාක අපද්‍රව්‍ය ක්ෂේත්‍රයේ දිලීර රැගෙන යාම වැළැක්වීම සඳහා.',
    imageUrl1: 'assets/images/rice_blast1.jpg',
    imageUrl2: 'assets/images/rice_blast2.jpg',
  ),
  Pathology(
    title: 'Rice Hispa',
    description:
        'Adult beetles feed externally on the upper epidermis, causing a characteristic pattern of white, parallel streaks along the main axis of the leaf. They can be detected by holding the damaged leaf against light or by passing the fingers along the tunnel. Infested leaves dry up, and present a white appearance in the field. Grassy weeds, heavy fertilization, heavy rains and high relative humidity favor rice hispa infestation.',
    imageUrl: 'assets/images/rice_hispa.png',
    orgControl:
        'The larval parasitoid, Eulophus femoralis, has been introduced to reduce the hispa. There are small wasps that attack the eggs and larvae and a bug that eats on the adults.',
    chemControl:
        'Several chemical formulations containing the following active ingredients could be used to control populations: chlorpyrifos, malathion, cypermethrin, phenthoate.',
    measures:
        '- Use narrower plant spacing with greater leaf densities.\n-  Cut the shoot tip to prevent egg-laying.\n- Collect adult bugs with a sweeping net, preferably early in the morning when they are less mobile.\n- Infested leaves and shoots should be clipped and burned, or buried deep in the mud.\n- Avoid excessive nitrogen fertilization in infested fields.',
    sinTitle: 'හිස්පා',
    sinDescription:
        'වැඩිහිටි කුරුමිණියන් ඉහළ එපීඩර්මිස් මත බාහිරව පෝෂණය වන අතර, පත්‍රයේ ප්‍රධාන අක්ෂය දිගේ සුදු, සමාන්තර ඉරි වල ලාක්ෂණික රටාවක් ඇති කරයි. හානියට පත් පත්‍රය ආලෝකයට එරෙහිව අල්ලා ගැනීමෙන් හෝ උමඟ දිගේ ඇඟිලි හරහා යාමෙන් ඒවා හඳුනාගත හැකිය. ආසාදිත පත්‍ර වියළී ගොස් කෙතේ සුදු පැහැයක් ගනී. තණකොළ සහිත වල් පැලෑටි, අධික පොහොර යෙදීම, අධික වර්ෂාව සහ ඉහළ සාපේක්ෂ ආර්ද්‍රතාවය සහල් හිස්පා ආසාදනයට හිතකරය.',
    sinOrgControl:
        'ඉයුලෝෆස් ෆෙමොරලිස් නම් කීට පරපෝෂිතයා හිස්පා අඩු කිරීම සඳහා හඳුන්වා දී ඇත. බිත්තර හා කීටයන්ට පහර දෙන කුඩා බඹරුන් සහ වැඩිහිටියන් ආහාරයට ගන්නා මකුණක් ඇත.',
    sinChemControl:
        'ජනගහනය පාලනය කිරීම සඳහා පහත ක්‍රියාකාරී අමුද්‍රව්‍ය අඩංගු රසායනික සංයෝග කිහිපයක් භාවිතා කළ හැක: chlorpyrifos, malathion, cypermethrin, phenthoate.',
    sinMeasures:
        '- වැඩි පත්‍ර ඝනත්වයක් සහිත පටු ශාක පරතරයක් භාවිතා කරන්න.\n- බිත්තර දැමීම වැලැක්වීම සඳහා අංකුර තුඩ කපා දමන්න.\n- වැඩිහිටි මකුණන් අතුගා දැමීමේ දැලකින් එකතු කරන්න, වඩාත් සුදුසු උදේ පාන්දර ඔවුන් ජංගම අඩු විට.\n- ආසාදිත කොළ සහ රිකිලි කපා පුළුස්සා දැමිය යුතුය, නැතහොත් මඩෙහි ගැඹුරට වළලනු ලැබිය යුතුය.\n- ආසාදිත ක්ෂේත්‍රවල අධික නයිට්‍රජන් පොහොර යෙදීමෙන් වළකින්න.',
    imageUrl1: 'assets/images/rice_hispa1.jpg',
    imageUrl2: 'assets/images/rice_hispa2.jpg',
  ),
  Pathology(
    title: 'Iron Deficiency',
    description:
        'Iron deficiency can be a serious problem in leached tropical soils or in poorly drained soils, mostly under cool, damp springs. Iron is important for photosynthesis and for the development and maintenance of root nodules in legumes. Therefore, iron deficiency severely depresses nodule mass, nitrogen fixation, and crop yield. This also increases the uptake and accumulation of cadmium in plants. This is identified by the yellowing (chlorosis) of upper leaves, with the midrib and leaf veins remaining clearly green (interveinal chlorosis). ',
    imageUrl: 'assets/images/rice_iron.png',
    orgControl:
        'Can use a leaf fertilizer made of nettle slag and algae extract. Application of animal manure, peat and composts also add iron to the soil. Plant dandelions in the proximity of your crops, since they make iron available to nearby crops, especially trees.',
    chemControl:
        'Use fertilizers containing iron (e.g. Ferrous sulphate Fe 19%).',
    measures:
        '- Plant dandelion nearby cultivated plants.\n-  Improve the drainage of the soils and do not over-water.',
    sinTitle: 'යකඩ ඌනතාවය',
    sinDescription:
        'යකඩ ඌනතාවය කාන්දු වූ නිවර්තන පසෙහි හෝ දුර්වල ලෙස ජලය බැස යන පස්වල, බොහෝ දුරට සිසිල්, තෙත් උල්පත් යටතේ බරපතල ගැටළුවක් විය හැක. ප්‍රභාසංශ්ලේෂණයට සහ රනිල කුලයට අයත් බෝගවල මූල ගැටිති වර්ධනයට හා නඩත්තු කිරීමට යකඩ වැදගත් වේ. එමනිසා, යකඩ ඌනතාවය නූඩ්ල් ස්කන්ධය, නයිට්රජන් සවි කිරීම සහ බෝග අස්වැන්න දැඩි ලෙස අවපාත කරයි. මෙය ශාකවල කැඩ්මියම් අවශෝෂණය හා සමුච්චය කිරීම ද වැඩි කරයි. මධ්‍ය නාල සහ පත්‍ර ශිරා පැහැදිලිවම කොළ පැහැයෙන් (අන්තර්වීන ක්ලෝරෝසිස්) පැවතීමත් සමඟ ඉහළ පත්‍රවල කහ පැහැය (ක්ලෝරෝසිස්) මගින් මෙය හඳුනා ගැනේ.',
    sinOrgControl:
        'ඇල්ගී සාරය වලින් සාදන ලද කොළ පොහොර භාවිතා කළ හැකිය. සත්ව පොහොර, පීට් සහ කොම්පෝස්ට් යෙදීම ද පසට යකඩ එකතු කරයි. ඔබේ බෝග ආසන්නයේ යාපහුව බලකොටුව සිටුවන්න, මන්ද ඒවා අවට බෝගවලට, විශේෂයෙන් ගස්වලට යකඩ ලබා ගත හැකි බැවිනි.',
    sinChemControl: 'යකඩ අඩංගු පොහොර භාවිතා කරන්න (උදා: ෆෙරස් සල්ෆේට් Fe 19%).',
    sinMeasures:
        '- වගා කරන ලද පැල අසල දාස් සිටුවන්න.\n- පසෙහි ජලාපවහනය වැඩි දියුණු කිරීම සහ අධික ලෙස ජලය දැමීම නොකරන්න.',
    imageUrl1: 'assets/images/rice_iron1.jpg',
    imageUrl2: 'assets/images/rice_iron2.jpg',
  ),
  Pathology(
    title: 'Nitrogen Deficiency',
    description:
        'High rates of nitrogen are important during the vegetative growth of the plant. Nitrogen deficiencies can be observed in sandy, well-drained soils with little organic matter as they are prone to the leaching of nutrients. Frequent rainfalls, flooding or heavy irrigation wash down nitrogen into the soil and can also lead to deficiencies. Symptoms develop first in older leaves and move gradually up to the younger ones. In mild cases, the older mature leaves turn pale green. If not amended, over time a widespread yellowing develops on those leaves and turn yellowish-white and may curl or grow deformed.',
    imageUrl: 'assets/images/rice_nitrogen.png',
    orgControl:
        'Organic matter can be added to soils as manure, compost, peat, or simply with the addition of nettle slag, guano, horn meal or nitrolime. Nettle slag can be sprayed directly on the leaves.',
    chemControl:
        'Use fertilizers containing nitrogen (N) like: Urea, NPK, ammonium nitrate.',
    measures:
        '- Provide fields with good drainage and do not over-water.\n-  Excessive or unbalanced use of fertilizers may result in some micronutrients becoming unavailable to the plant.\n- Add organic matter from compost, manure',
    sinTitle: 'නයිට්රජන් ඌනතාවය',
    sinDescription:
        'ශාකයේ ශාකමය වර්ධනයේදී නයිට්‍රජන් ඉහළ අගයක් ගැනීම වැදගත් වේ. කාබනික ද්‍රව්‍ය අඩු වැලි සහිත, හොඳින් ජලය බැස යන පස්වල නයිට්‍රජන් ඌනතාවයන් නිරීක්ෂණය කළ හැක්කේ ඒවා පෝෂක ද්‍රව්‍ය කාන්දු වීමට ඉඩ ඇති බැවිනි. නිරන්තර වර්ෂාපතනය, ගංවතුර හෝ අධික වාරිමාර්ග නයිට්‍රජන් පසට සෝදා හරින අතර ඌනතාවයන්ට ද හේතු විය හැක. රෝග ලක්ෂණ මුලින්ම වර්ධනය වන්නේ වැඩිහිටි පත්‍රවල වන අතර ක්‍රමයෙන් තරුණ කොළ දක්වා ගමන් කරයි. මෘදු අවස්ථාවන්හිදී, වැඩිහිටි පරිණත කොළ සුදුමැලි කොළ පැහැයට හැරේ. සංශෝධනය නොකළහොත්, කාලයත් සමඟ එම පත්‍රවල පුළුල් කහ පැහැයක් වර්ධනය වී කහ-සුදු පැහැයට හැරෙන අතර වක්‍ර වී හෝ විකෘති වී වර්ධනය විය හැක.',
    sinOrgControl:
        'කාබනික ද්‍රව්‍ය පොහොර, කොම්පෝස්ට්, පීට් ලෙස හෝ හුදෙක් පෝෂදයි අපද්‍රව්‍ය හෝ nitrolime එකතු කිරීමෙන් පසට එකතු කළ හැක. පෝෂදයි අපද්‍රව්‍ය කෙලින්ම කොළ මත ඉසිය හැක.',
    sinChemControl:
        'යූරියා, NPK, ඇමෝනියම් නයිට්රේට් වැනි නයිට්රජන් (N) අඩංගු පොහොර භාවිතා කරන්න.',
    sinMeasures:
        '- හොඳ ජලාපවහන සහිත කෙත්වතු සපයන අතර අධික ලෙස ජලය දැමීම නොකරන්න.\n- පොහොර අධික ලෙස හෝ අසමතුලිතව භාවිතා කිරීම නිසා සමහර ක්ෂුද්‍ර පෝෂක ශාකයට ලබා ගත නොහැක.\n- කොම්පෝස්ට්, පොහොර වලින් කාබනික ද්‍රව්‍ය එකතු කරන්න.',
    imageUrl1: 'assets/images/rice_nitrogen1.jpg',
    imageUrl2: 'assets/images/rice_nitrogen2.jpg',
  ),
  Pathology(
    title: 'Potassium deficiency',
    description:
        'Potassium plays an essential role in the transport of water, the firmness of tissues and the exchange of gases with the atmosphere. The symptoms of potassium deficiency are irreversible, even if potassium is later added to the plants. Symptoms are mainly visible on older leaves and start to develop on young leaves only in the case of severe deficiencies. Mild potassium deficiency is characterized by the development of mild yellowing at the margins and tips of the leaves, later followed by tip burn.',
    imageUrl: 'assets/images/rice_potassium.png',
    orgControl:
        'Add organic matter in the form of ashes or plant mulch to the soil at least once a year. Wood ash also has high potassium content.',
    chemControl:
        'Use fertilizers containing Potassium (K) like: muriate of potash (MOP), potassium nitrate (KNO3).',
    measures:
        '- Provide fields with good drainage and do not over-water.\n-  Ensure a balanced use of fertilizers to secure  proper nutrients supply to the plant.\n- Add organic matter to the soil in the form of manure or plant mulch.',
    sinTitle: 'පොටෑසියම් ඌනතාවය',
    sinDescription:
        'පොටෑසියම් ජලය ප්‍රවාහනය, පටක වල ස්ථායීතාවය සහ වායුගෝලය සමඟ වායූන් හුවමාරු කිරීම සඳහා අත්‍යවශ්‍ය කාර්යභාරයක් ඉටු කරයි. පොටෑසියම් පසුකාලීනව ශාකවලට පොටෑසියම් එකතු කළත් පොටෑසියම් ඌනතාවයේ රෝග ලක්ෂණ ආපසු හැරවිය නොහැක. රෝග ලක්ෂණ ප්‍රධාන වශයෙන් වැඩිහිටි පත්‍රවල දක්නට ලැබෙන අතර ළපටි පත්‍ර මත වර්ධනය වීමට පටන් ගන්නේ දැඩි ඌනතාවයන් වලදී පමණි. මෘදු පොටෑසියම් ඌනතාවය මගින් සංලක්ෂිත වන්නේ පත්‍රවල මායිම් සහ ඉඟි වල මෘදු කහ පැහැයක් ඇතිවීම, පසුව ඉඟි පිළිස්සීමයි.',
    sinOrgControl:
        'අවම වශයෙන් වසරකට වරක් පසට අළු හෝ ශාක වසුන් ආකාරයෙන් කාබනික ද්රව්ය එකතු කරන්න. දැව අළු වල පොටෑසියම් ඉහළ අන්තර්ගතයක් ද ඇත.',
    sinChemControl:
        'පොටෑසියම් (K) අඩංගු පොහොර භාවිතා කරන්න: මියුරේට් ඔෆ් පොටෑෂ් (MOP), පොටෑසියම් නයිට්රේට් (KNO3).',
    sinMeasures:
        '- හොඳ ජලාපවහන සහිත කෙත්වතු සපයා දීම සහ අධික ලෙස ජලය දැමීම නොකරන්න.\n- ශාකයට නිසි පෝෂ්‍ය පදාර්ථ සැපයීම සහතික කිරීම සඳහා පොහොර සමතුලිතව භාවිතා කිරීම සහතික කිරීම.\n- කාබනික ද්‍රව්‍ය පොහොර හෝ ශාක වසුන් ආකාරයෙන් පසට එක් කරන්න.',
    imageUrl1: 'assets/images/rice_potassium1.jpg',
    imageUrl2: 'assets/images/rice_potassium2.jpg',
  ),
];

List<Pathology> berryList = [
  Pathology(
    title: 'Berry Leaf Scorch',
    description:
        'Strawberry Leaf Scorch caused by the fungus Apiognomonia erythrostoma, when favorable temperatures are reached, the fungus germinates and begins to produce spores that are later spread onto healthy leaves by wind or rain. Pale-green spots appear on leaves, either between the veins or along the margins. The spots later turn yellow to red, sometimes with yellow, and can also develop on the fruit and stem. Usually though, only leaves are affected and despite being striking, the disease rarely cause significant damage to the tree.',
    imageUrl: 'assets/images/berry_scorch1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Chemicals containing one of the following active ingredients can be used preventively or curatively: bitertanol, copper, dithianon, dodine, fenbuconazole, or ziram. Fungicides work best if combined with field sanitation.',
    measures:
        '- Select a planting sight that is exposed to direct sunlight and has good air circulation.\n-  Check the plants for any sign of disease after the leaves are completely unfolded.',
    sinTitle: 'ස්ට්‍රෝබෙරි පත්‍ර පිළිස්සීම',
    sinDescription:
        'Apiognomonia erythrostoma නම් දිලීරය මගින් ඇති වන අතර, හිතකර උෂ්ණත්වයන් ළඟා වූ විට, දිලීර ප්‍රරෝහණය වී බීජාණු නිපදවීමට පටන් ගනී, පසුව සුළඟ හෝ වර්ෂාවෙන් නිරෝගී කොළ මත පැතිරෙයි. සුදුමැලි-කොළ පැහැති ලප කොළ මත, නහර අතර හෝ මායිම් දිගේ දිස් වේ. ලප පසුව කහ පැහැයට රතු පැහැයට හැරේ, සමහර විට කහ පැහැයෙන් යුක්ත වන අතර පළතුරු සහ කඳේ ද වර්ධනය විය හැක. සාමාන්‍යයෙන්, කොළ පමණක් බලපාන අතර, පහර එල්ල වුවද, රෝගය කලාතුරකින් ගසට සැලකිය යුතු හානියක් සිදු කරයි.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'පහත සඳහන් ක්‍රියාකාරී අමුද්‍රව්‍ය වලින් එකක් අඩංගු රසායනික ද්‍රව්‍ය නිවාරක හෝ රෝග නිවාරක ලෙස භාවිතා කළ හැක: bitertanol, copper, dithianon, dodine, fenbuconazole හෝ ziram. ක්ෂේත්‍ර සනීපාරක්ෂාව සමඟ ඒකාබද්ධ නම් දිලීර නාශක වඩාත් හොඳින් ක්‍රියා කරයි.',
    sinMeasures:
        '- සෘජු හිරු එළියට නිරාවරණය වන සහ හොඳ වාතාශ්‍රය ඇති රෝපණ දර්ශනයක් තෝරන්න.\n- කොළ සම්පූර්ණයෙන්ම දිග හැරුණු පසු ශාකවල කිසියම් රෝග ලක්ෂණයක් ඇත්දැයි පරීක්ෂා කරන්න.',
    imageUrl1: 'assets/images/berry_scorch.png',
    imageUrl2: 'assets/images/berry_scorch2.jpg',
  ),
];

List<Pathology> chiliList = [
  Pathology(
    title: 'Chilli Leaf Spot',
    description:
        'The symptoms are caused by the fungus Stemphylium solani. Its incidence and the development of the disease is favored by high humidity, frequent rains and also prolonged drought. Potassium deficiency is the main factor but it may be coupled to drought, insect pressure or the presence of nematodes in the soil. Wind also help in the dispersal of the spores of these fungi to other plants. Gray Leaf Spots  can be up to about 2 cm in diameter, circular in shape and with purple  margins. This can lead to massive premature defoliation and yield loss if left untreated.',
    imageUrl: 'assets/images/chilli_leafspot1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Fungicides are available to treat this disease (pyraclostrobin, pyraclostrobin + metconazole).',
    measures:
        '- Make sure to have vigorous crop with a balanced fertilization.\n-  Apply fertilizers rich in potassium in a timely manner (split applications), especially on sandy soils.\n- Do not over-fertilize with potassium to solve the problem.\n- Irrigate regularly to avoid drought stress.',
    sinTitle: 'මිරිස් කොළ පුල්ලි රෝගය',
    sinDescription:
        'රෝග ලක්ෂණ ඇතිවන්නේ Stemphylium solani නම් දිලීරය මගිනි. අධික ආර්ද්‍රතාවය, නිරන්තර වර්ෂාපතනය සහ දිගු නියඟය මගින් එහි සිදුවීම සහ රෝගය වර්ධනය වීමට හිතකර වේ. පොටෑසියම් ඌනතාවය ප්‍රධාන සාධකය වන නමුත් එය නියඟය, කෘමි පීඩනය හෝ පසෙහි නෙමටෝඩාවන් පැවතීම සමඟ සම්බන්ධ විය හැක. මෙම දිලීර වල බීජාණු වෙනත් ශාක වලට විසුරුවා හැරීමට ද සුළඟ උපකාරී වේ. අළු පත්‍ර ලප විෂ්කම්භය සෙන්ටිමීටර 2 ක් පමණ වන අතර රවුම් හැඩයෙන් සහ දම් පැහැති මායිම් සහිත විය හැකිය. මෙය ප්‍රතිකාර නොකළහොත් විශාල අකලට පායන සහ අස්වැන්න අහිමි වීමට හේතු විය හැක.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'මෙම රෝගයට ප්‍රතිකාර කිරීම සඳහා දිලීර නාශක පවතී (pyraclostrobin, pyraclostrobin + metconazole).',
    sinMeasures:
        '- සමතුලිත පොහොර සමග ශක්තිමත් බෝග ලබා ගැනීමට වග බලා ගන්න.\n- පොටෑසියම් බහුල පොහොර නියමිත වේලාවට යොදන්න (බෙදී ඇති යෙදුම්), විශේෂයෙන් වැලි සහිත පස් මත.\n- ගැටලුව විසඳීම සඳහා පොටෑසියම් සමඟ පොහොර වැඩිපුර නොයන්න.\ n- නියඟ ආතතිය වළක්වා ගැනීම සඳහා නිතිපතා ජලය දැමීම.',
    imageUrl1: 'assets/images/chilli_leafspot2.jpg',
    imageUrl2: 'assets/images/chilli_leafspot.png',
  ),
  Pathology(
    title: 'Bell Pepper Leaf Spot',
    description:
        'The symptoms are caused by the fungus Stemphylium solani. Its incidence and the development of the disease is favored by high humidity, frequent rains and also prolonged drought. Potassium deficiency is the main factor but it may be coupled to drought, insect pressure or the presence of nematodes in the soil. Wind also help in the dispersal of the spores of these fungi to other plants. Gray Leaf Spots  can be up to about 2 cm in diameter, circular in shape and with purple  margins. This can lead to massive premature defoliation and yield loss if left untreated.',
    imageUrl: 'assets/images/bellpepper_ls.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Fungicides are available to treat this disease (pyraclostrobin, pyraclostrobin + metconazole).',
    measures:
        '- Make sure to have vigorous crop with a balanced fertilization.\n-  Apply fertilizers rich in potassium in a timely manner (split applications), especially on sandy soils.\n- Do not over-fertilize with potassium to solve the problem.\n- Irrigate regularly to avoid drought stress.',
    sinTitle: 'කොළ පුල්ලි රෝගය',
    sinDescription:
        'රෝග ලක්ෂණ ඇතිවන්නේ Stemphylium solani නම් දිලීරය මගිනි. අධික ආර්ද්‍රතාවය, නිරන්තර වර්ෂාපතනය සහ දිගු නියඟය මගින් එහි සිදුවීම සහ රෝගය වර්ධනය වීමට හිතකර වේ. පොටෑසියම් ඌනතාවය ප්‍රධාන සාධකය වන නමුත් එය නියඟය, කෘමි පීඩනය හෝ පසෙහි නෙමටෝඩාවන් පැවතීම සමඟ සම්බන්ධ විය හැක. මෙම දිලීර වල බීජාණු වෙනත් ශාක වලට විසුරුවා හැරීමට ද සුළඟ උපකාරී වේ. අළු පත්‍ර ලප විෂ්කම්භය සෙන්ටිමීටර 2 ක් පමණ වන අතර රවුම් හැඩයෙන් සහ දම් පැහැති මායිම් සහිත විය හැකිය. මෙය ප්‍රතිකාර නොකළහොත් විශාල අකලට පායනයට සහ අස්වැන්න නැතිවීමට හේතු විය හැක.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'මෙම රෝගයට ප්‍රතිකාර කිරීම සඳහා දිලීර නාශක පවතී (pyraclostrobin, pyraclostrobin + metconazole).',
    sinMeasures:
        '- සමතුලිත පොහොර සමග ශක්තිමත් බෝග ලබා ගැනීමට වග බලා ගන්න.\n- පොටෑසියම් බහුල පොහොර නියමිත වේලාවට යොදන්න (බෙදී ඇති යෙදුම්), විශේෂයෙන් වැලි සහිත පස් මත.\n- ගැටලුව විසඳීම සඳහා පොටෑසියම් සමඟ පොහොර වැඩිපුර නොයන්න.\ n- නියඟ ආතතිය වළක්වා ගැනීම සඳහා නිතිපතා ජලය දැමීම.',
    imageUrl1: 'assets/images/bellpepper_ls1.jpg',
    imageUrl2: 'assets/images/bellpepper_ls2.jpg',
  ),
  Pathology(
    title: 'Pepper Bacterial Spot',
    description:
        'Bacterial spot occurs worldwide and is one of the most devastating diseases. The pathogen can survive in association with seeds, either externally or internally as well as on specific weeds and later spreads through rain or overhead irrigation. It enters the plant through leaf pores and wounds. The first symptoms are small, yellow-green lesions on young leaves, which usually appear deformed and twisted. Once the crop is fully infected, the disease is very difficult to control and can lead to total crop losses.',
    imageUrl: 'assets/images/pepper_bs1.jpg',
    orgControl:
        'Copper-containing bactericides provide a protective cover on foliage and fruit. Bacterial viruses (bacteriophages) that specifically kill the bacteria are available.  Submerge seeds for one minute in 1.3% sodium hypochlorite or in hot water (50°C) for 25 minutes.',
    chemControl:
        'Copper-containing bactericides can be used as a protectant and give partial disease control. Application at the first sign of disease and then at 10- to 14-day intervals when warm, moist conditions prevail. The active ingredients copper and mancozeb give a better protection.',
    measures:
        '- Remove and burn any seedling or plants with leaf spots, as well as adjacent plants.\n-  Remove weeds in and around the field.\n- Avoid overhead irrigation and working in fields when foliage is wet.\n- Plow plant debris deep into the soil after harvest.',
    sinTitle: 'ගම්මිරිස් බැක්ටීරියා කොළ පුල්ලි රෝගය',
    sinDescription:
        'බැක්ටීරියා කොළ පුල්ලි රෝගය ලොව පුරා ඇති අතර එය වඩාත් විනාශකාරී රෝග වලින් එකකි. රෝග කාරකයට බීජ ආශ්‍රිතව බාහිරව හෝ අභ්‍යන්තරව මෙන්ම විශේෂිත වල් පැලෑටි මතද නොනැසී පැවතිය හැකි අතර පසුව වැසි හෝ උඩිස් වාරිමාර්ග හරහා පැතිරෙයි. එය කොළ සිදුරු හා තුවාල හරහා ශාකයට ඇතුල් වේ. පළමු රෝග ලක්ෂණ වන්නේ තරුණ කොළ මත කුඩා, කහ-කොළ තුවාල වන අතර, සාමාන්යයෙන් විකෘති වී ඇඹරුණු ලෙස පෙනේ. බෝගය සම්පූර්ණයෙන්ම ආසාදනය වූ පසු, රෝගය පාලනය කිරීම ඉතා අපහසු වන අතර එය සම්පූර්ණ අස්වැන්න අහිමි වීමට හේතු විය හැක.',
    sinOrgControl:
        'තඹ අඩංගු බැක්ටීරියා නාශක ශාක පත්‍ර සහ පලතුරු මත ආරක්ෂිත ආවරණයක් සපයයි. විශේෂයෙන් බැක්ටීරියා විනාශ කරන බැක්ටීරියා වෛරස් (බැක්ටීරියෝෆේජ්) තිබේ. බීජ විනාඩි 1.3% සෝඩියම් හයිපොක්ලෝරයිට් හෝ උණු වතුරේ (50 ° C) විනාඩි 25 ක් ගිල්වන්න.',
    sinChemControl:
        'තඹ අඩංගු බැක්ටීරියා නාශක ආරක්ෂිතයක් ලෙස භාවිතා කළ හැකි අතර අර්ධ රෝග පාලනයක් ලබා දිය හැකිය. රෝගයේ පළමු රෝග ලක්ෂණයේදී අයදුම් කිරීම සහ උණුසුම්, තෙත් තත්ත්වයන් පවතින විට දින 10 සිට 14 දක්වා කාල පරතරයකින්. සක්‍රීය අමුද්‍රව්‍ය තඹ සහ මැන්කොසෙබ් වඩා හොඳ ආරක්ෂාවක් සපයයි.',
    sinMeasures:
        '- පත්‍ර ලප ඇති ඕනෑම පැළයක් හෝ පැළයක් මෙන්ම යාබද පැල ඉවත් කර පුළුස්සා දමන්න.\n- ක්ෂේත්‍රයේ සහ ඒ අවට ඇති වල් පැලෑටි ඉවත් කරන්න.\n- උඩින් ජලය දැමීමෙන් සහ ශාක පත්‍ර තෙත් වූ විට කෙත්වල වැඩ කිරීමෙන් වළකින්න.\n-අස්වැන්න නෙලීමෙන් පසු ශාක සුන්බුන් පස ගැඹුරට දමන්න.',
    imageUrl1: 'assets/images/pepper_bs.jpg',
    imageUrl2: 'assets/images/pepper_bs2.jpg',
  ),
];

List<Pathology> citrusList = [
  Pathology(
    title: 'Citrus Greening',
    description:
        'This is caused by the bacterium Candidatus Liberibacter asiaticus. First symptom is usually the appearance of a yellow shoot on the tree, thereby one of the common name of the disease, huanglongbing ("yellow dragon disease"). Leaves progressively turn pale-yellow and display a diffuse blotchy mottling that may resemble zinc or manganese deficiency. A common way to tell these disorders apart is that the symptoms of these deficiencies tend to be symmetrical along the leaf vein, while those of the disease are asymmetrical.',
    imageUrl: 'assets/images/citurs_green1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Injection of the antibiotic tetracycline into the trunk of the trees may result in a partial recovery but has to be repeated often to show effect. Tetracycline is phytotoxic and may have adverse effects on the environment.',
    measures:
        '- Monitor the citrus groove regularly for symptoms of the disease.\n-  Remove affected trees immediately.\n- Remove alternative hosts in the same family as citrus.',
    sinTitle: 'කොළ පැහැවීම',
    sinDescription:
        'මෙය ඇතිවන්නේ Candidatus Liberibacter asiaticus නම් බැක්ටීරියාව මගිනි. පළමු රෝග ලක්ෂණය වන්නේ සාමාන්යයෙන් ගසක කහ පැහැති රිකිලි පෙනුමයි. පත්‍ර ක්‍රමක්‍රමයෙන් සුදුමැලි-කහ පැහැයට හැරෙන අතර සින්ක් හෝ මැංගනීස් ඌනතාවයට සමාන විය හැකි විසරණ ලප කැළැල් පෙන්නුම් කරයි. මෙම ආබාධ වෙන්කර හඳුනා ගැනීමට ඇති පොදු ක්‍රමයක් නම්, මෙම ඌනතාවයන්ගේ රෝග ලක්ෂණ පත්‍ර නහර දිගේ සමමිතික වන අතර රෝගයේ ඒවා අසමමිතික වේ.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'ප්‍රතිජීවක ටෙට්‍රාසයික්ලයින් ගස්වල කඳට එන්නත් කිරීමෙන් අර්ධ වශයෙන් සුවය ලැබිය හැකි නමුත් බලපෑම පෙන්වීමට නිතර නිතර කළ යුතුය. Tetracycline විෂ සහිත වන අතර පරිසරයට අහිතකර බලපෑම් ඇති කළ හැක.',
    sinMeasures:
        '- රෝගයේ රෝග ලක්ෂණ සඳහා පැඟිරි පැල නිතිපතා නිරීක්ෂණය කරන්න.\n- බලපෑමට ලක් වූ ගස් වහාම ඉවත් කරන්න.\n- පැඟිරි මෙන් එකම පවුලේ විකල්ප ධාරක ඉවත් කරන්න.',
    imageUrl1: 'assets/images/citurs_green.jpg',
    imageUrl2: 'assets/images/citurs_green2.jpg',
  ),
];

List<Pathology> cornList = [
  Pathology(
    title: 'Corn Gray Leaf Spot',
    description:
        'Gray leaf spot (GLS), caused by the fungus Cercospora zeae-maydis, has been one of the most prevalent foliar fungal diseases of corn. The early GLS lesions are yellow to tan in color and look very similar to those of other diseases, except that they often have a faint watery halo which can be seen when held up to the light. Later, the lesions can turn gray. They are usually delimited by leaf veins but can join together and kill entire leaves.',
    imageUrl: 'assets/images/corn_gray1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Fungicides belonging to the triazole chemical group, and combinations of fungicides of the benzimidazole and triazole group, were highly effective.',
    measures: '- Planting resistant hybrids\n-  Crop rotation\n- Tillage.',
    sinTitle: 'බඩ ඉරිඟු අළු කොළ පුල්ලි රෝගය',
    sinDescription:
        'Cercospora zeae-maydis නම් දිලීරය මගින් ඇති කරන ලද, බඩ ඉරිඟු වල බහුලව දක්නට ලැබෙන පත්‍ර දිලීර රෝග වලින් එකකි. මුල් අවධියේදී, තුවාල කහ පැහැයේ සිට දුඹුරු පැහැයක් ගන්නා අතර අනෙකුත් රෝග වලට බොහෝ සෙයින් සමාන වන අතර, ඒවා බොහෝ විට ආලෝකයට එල්ලී සිටින විට දැකිය හැකි දුර්වල ජල තලයක් ඇත. පසුව, තුවාල අළු පැහැයට හැරිය හැක. ඒවා සාමාන්‍යයෙන් පත්‍ර නහර මගින් වෙන් කර ඇති නමුත් එකට එකතු වී සම්පූර්ණ පත්‍ර විනාශ කළ හැක.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'ට්‍රයිසෝල් රසායනික කාණ්ඩයට අයත් දිලීර නාශක සහ බෙන්සිමිඩසෝල් සහ ට්‍රයිසෝල් කාණ්ඩයේ දිලීර නාශක සංයෝග ඉතා ඵලදායී වේ.',
    sinMeasures:
        '- ප්‍රතිරෝධී දෙමුහුන් පැළ සිටුවීම\n- බෝග භ්‍රමණය\n- බිම් කෙටීම හෑම.',
    imageUrl1: 'assets/images/corn_gray.jpg',
    imageUrl2: 'assets/images/corn_gray2.jpg',
  ),
  Pathology(
    title: 'Corn Northern Leaf Blight',
    description:
        'Northern corn leaf blight (NCLB) is a disease of corn caused by the fungus, Exserohilum turcicum. Symptoms usually appear first on the lower leaves. Leaf lesions are long (1 to 6 inches) and elliptical, gray-green at first but then turn pale gray or tan. Under moist conditions, dark gray spores are produced, usually on the lower leaf surface, which give lesions a "dirty" gray appearance. Entire leaves on severely blighted plants can die, so individual lesions are not visible. The fungus that causes the disease overwinters in debris and proliferates during moderate temperatures and wet conditions.',
    imageUrl: 'assets/images/corn_northern1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl: 'Fungicide sprays are recommended.',
    measures:
        '- When growing corn, make sure it does not stay wet for long periods of time.\n-  Planting corn hybrids with disease resistance\n- Crop rotation.',
    sinTitle: 'බඩ ඉරිඟු අංගමාරය',
    sinDescription:
        'Exserohilum turcicum නම් දිලීරය මගින් ඇතිවේ. රෝග ලක්ෂණ සාමාන්යයෙන් පහළ කොළ මත මුලින්ම දිස් වේ. පත්‍ර තුවාල දිගු (අඟල් 1 සිට 6 දක්වා) වන අතර මුලින් ඉලිප්සාකාර, අළු-කොළ පැහැයක් ගන්නා නමුත් පසුව සුදුමැලි අළු හෝ දුඹුරු පැහැයට හැරේ. තෙත් තත්ත්ව යටතේ, තද අළු බීජාණු නිපදවනු ලැබේ, සාමාන්‍යයෙන් පහළ පත්‍ර මතුපිට, තුවාල වලට "අපිරිසිදු" අළු පෙනුමක් ලබා දෙයි. දැඩි ලෙස අබලන් වූ ශාකවල සම්පූර්ණ කොළ මිය යා හැක, එබැවින් තනි තුවාල නොපෙනේ. රෝගය ඇති කරන දිලීර සුන්බුන් තුළ ශීත ඍතුවේ පවතින අතර මධ්යස්ථ උෂ්ණත්වයන් සහ තෙත් තත්ත්වයන් තුළ වර්ධනය වේ.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl: 'දිලීර නාශක ඉසීම නිර්දේශ කෙරේ.',
    sinMeasures:
        '- බඩ ඉරිඟු වගා කරන විට, එය දිගු කාලයක් තෙත් නොවීමට වග බලා ගන්න.\n- රෝග ප්‍රතිරෝධය සහිත බඩ ඉරිඟු දෙමුහුන් සිටුවීම\n- බෝග භ්‍රමණය.',
    imageUrl1: 'assets/images/corn_northern.jpg',
    imageUrl2: 'assets/images/corn_northern2.jpg',
  ),
];

List<Pathology> grapeList = [
  Pathology(
    title: 'Grape Black-Rot',
    description:
        'The damage is caused by the fungus Phyllosticta ampelicida. The pathogen overwinters in infested shoots or fruit mummies on the grapevine or the soil. The spores will be ejected by light rainfall and then dispersed via wind. The fungus prefers warm and humid weather. Irregular spots appear on the leaves, which are framed by a dark line. Shoots, stems and leaf stalks can also show symptoms of these spots. The fruit will become deformed and eventually be shriveled.',
    imageUrl: 'assets/images/grape_blackrot1.jpg',
    orgControl:
        'Immediately after blooming stage you can spray Bacillus thuringiensis.',
    chemControl:
        'Start spraying roughly two weeks before bloom with captan + mycobutanil or mancozeb +mycobutanil. Just before the blossoms open you can also use carbaryl or imidcloprid. Post-bloom spray mancozeb + mycobutanil, imidacloprid or azadirachtin. Ten days after bloom you can also apply a mixture of captan and sulfur on your vines.',
    measures:
        '- Remove fruit mummies from the vine.\n-  Infested wood and twines should be removed and destroyed after harvest.\n- Consequently remove infested leaves from the vineyard.\n- Provide proper air circulation and lighting.',
    sinTitle: 'මිදි කළු කුණුවීමේ රෝගය',
    sinDescription:
        'ෆයිලොස්ටික්ටා ඇම්පෙලිසිඩා නම් දිලීරයෙන් හානිය සිදු වේ. රෝග කාරකය මිදි වැල හෝ පස මත ආසාදිත අංකුර හෝ පළතුරු මමී තුළ ශීත ඍතුවේ පවතී. බීජාණු මද වර්ෂාපතනයකින් පිටවී පසුව සුළඟින් විසිරී යනු ඇත. දිලීර උණුසුම් හා තෙතමනය සහිත කාලගුණයට වැඩි කැමැත්තක් දක්වයි. අඳුරු රේඛාවකින් රාමු කර ඇති කොළ මත අක්‍රමවත් ලප දිස් වේ. රිකිලි, කඳන් සහ පත්‍ර දඬු යට ද මෙම ලප වල රෝග ලක්‍ෂණ පෙන්විය හැක. ගෙඩිය විකෘති වී අවසානයේ මැලවී යයි.',
    sinOrgControl:
        'මල් පිපෙන අවධියෙන් පසු ඔබට Bacillus thuringiensis ඉසිය හැක.',
    sinChemControl:
        'මල් පිපීමට සති දෙකකට පමණ පෙර captan + mycobutanil හෝ mancozeb +mycobutanil සමඟ ඉසීම ආරම්භ කරන්න. මල් පිපීමට පෙර ඔබට carbaryl හෝ imidcloprid භාවිතා කළ හැකිය. මල් පිපීමෙන් පසු mancozeb + mycobutanil, imidacloprid හෝ azadirachtin ඉසින්න. මල් පිපීමෙන් දින 10 කට පසු ඔබට ඔබේ වැල් මත කැප්ටන් සහ සල්ෆර් මිශ්‍රණයක් යෙදිය හැක.',
    sinMeasures:
        '- මිදි වැලෙන් පළතුරු මමී ඉවත් කරන්න.\n- ආසාදිත දැව සහ ට්වයින් අස්වැන්න නෙලීමෙන් පසු ඉවත් කර විනාශ කළ යුතුය.\n- මිදි වත්තෙන් ආසාදිත කොළ ඉවත් කරන්න.\n- නිසි වායු සංසරණය සහ ආලෝකය ලබා දෙන්න.',
    imageUrl1: 'assets/images/grape_blackrot.jpg',
    imageUrl2: 'assets/images/grape_blackrot2.jpg',
  ),
  Pathology(
    title: 'Grape Leaf Blight',
    description:
        'The damage is caused by the fungus Alternaria cucumerina. It survives in crop debris in the soil or on weeds and other cucurbit hosts. Disease spread can occur with rain splashes, excessive irrigation, wind, cultivation, equipment and field workers. This disease is favored by warm temperatures and moisture from dew, rain or overhead irrigation. Infection can be initiated with two to eight hours of leaf wetness, but as the hours of leaf wetness increase infection level increases. Symptoms appear on the older leaves in the middle and upper part of the plant as small, circular, tan spots with white centers and circular, brown sunken lesions appear on infected fruits that later may be covered by a dark olive to black-colored powdery mat.',
    imageUrl: 'assets/images/grape_blight1.jpg',
    orgControl:
        'Application of straw mulch immediately after planting effectively decreases the spreading.',
    chemControl:
        'Fungicides containing azoxystrobin, boscalid, chlorothalonil, copper hydroxide, mancozeb, maneb or potassium bicarbonate can control the disease. However, chlorothalonil containing products seem generally to be the most effective.',
    measures:
        '- Regularly monitor the fields for symptoms of the disease.\n-  Maintain a high standard of hygiene in tools and equipments.\n- Use drip irrigation instead of overhead sprinklers if possible.\n- Remove and destroy plant debris at the end of the season.',
    sinTitle: 'මිදි කොළ අංගමාරය',
    sinDescription:
        'Alternaria cucumerina නම් දිලීරය මගින් මෙම හානිය සිදුවේ. එය පසෙහි ඇති බෝග සුන්බුන් තුළ හෝ වල් පැලෑටි සහ අනෙකුත් කුකර්බිට් ධාරක මත නොනැසී පවතී. වර්ෂාපතනය, අධික වාරිමාර්ග, සුළඟ, වගාව, උපකරණ සහ ක්ෂේත්‍ර සේවකයින් සමඟ රෝග පැතිරීම සිදුවිය හැක. මෙම රෝගය පිනි, වැසි හෝ උඩිස් වාරිමාර්ග මගින් උණුසුම් උෂ්ණත්වය සහ තෙතමනය මගින් අනුග්රහය දක්වයි. පැය දෙකේ සිට අට දක්වා පත්‍ර තෙත් වීමෙන් ආසාදනය ආරම්භ කළ හැකි නමුත් පත්‍ර තෙත් ගතිය වැඩි වන විට ආසාදන මට්ටම වැඩි වේ. ශාකයේ මැද සහ ඉහළ කොටසේ පැරණි පත්‍රවල සුදු මධ්‍යස්ථාන සහිත කුඩා, රවුම්, දුඹුරු පැහැ ලප සහ ආසාදිත පලතුරු මත රවුම්, දුඹුරු ගිලුණු තුවාල ලෙස රෝග ලක්ෂණ මතු වන අතර පසුව අඳුරු ඔලිව් සිට කළු පැහැති කුඩු වලින් ආවරණය විය හැක.',
    sinOrgControl:
        'පැළ සිටුවීමෙන් පසු පිදුරු වසුන් යෙදීම ඵලදායී ලෙස පැතිරීම අඩු කරයි.',
    sinChemControl:
        'azoxystrobin, boscalid, chlorothalonil, copper hydroxide, mancozeb, maneb හෝ potassium bicarbonate අඩංගු දිලීර නාශක මගින් රෝගය පාලනය කළ හැක. කෙසේ වෙතත්, chlorothalonil අඩංගු නිෂ්පාදන සාමාන්යයෙන් වඩාත් ඵලදායී බව පෙනේ.',
    sinMeasures:
        '- රෝගයේ රෝග ලක්ෂණ සඳහා ක්ෂේත්‍ර නිරන්තරයෙන් නිරීක්ෂණය කරන්න.\n- මෙවලම් සහ උපකරණවල සනීපාරක්ෂාව පිළිබඳ ඉහළ ප්‍රමිතියක් පවත්වා ගන්න.\n- හැකි නම් උඩිස් ඉසින යන්ත්‍ර වෙනුවට බිංදු වාරිමාර්ග භාවිතා කරන්න.\n-වාරය අවසානයේ ශාක සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/grape_blight.jpg',
    imageUrl2: 'assets/images/grape_blight2.jpg',
  ),
  Pathology(
    title: 'Grape Healthy',
    description:
        'Grape are grafted onto rootstock. When you buy a grape, the join will be clearly visible, above the line of the soil in the pot. When you plant out grape, this should remain above the soil. Choose a warm and sunny site, either against a wall or fence, or with some other support. Grapewill grow on most free-draining soils, provided they get plenty of sunlight. They can be grown successfully outdoors but some varieties will crop more reliably if they have the heat and shelter of a greenhouse.',
    imageUrl: 'assets/images/grape_healthy1.jpg',
    orgControl: 'N/A',
    chemControl: 'N/A',
    measures: 'N/A',
    sinTitle: 'නිරෝගී මිදි',
    sinDescription:
        'ඔබ මිදි ගෙඩියක් මිල දී ගන්නා විට, බඳුනේ පස රේඛාවට ඉහළින්, සන්ධිය පැහැදිලිව දැකගත හැකිය. ඔබ මිදි සිටුවන විට, මෙය පසට ඉහළින් පැවතිය යුතුය. තාප්පයකට හෝ වැටකට එරෙහිව හෝ වෙනත් ආධාරකයක් සහිත උණුසුම් හා අව්ව සහිත ස්ථානයක් තෝරන්න. බොහෝ නිදහස් ජලාපවහන පස් මත මිදි වර්ධනය වේ, ඔවුන්ට ඕනෑ තරම් හිරු එළිය ලැබේ. ඒවා එළිමහනේ සාර්ථකව වගා කළ හැකි නමුත් සමහර ප්‍රභේදවලට හරිතාගාරයක උණුසුම සහ නවාතැන් තිබේ නම් ඒවා වඩාත් විශ්වාසදායක ලෙස වගා කරනු ඇත.',
    sinOrgControl: 'N/A',
    sinChemControl: 'N/A',
    sinMeasures: 'N/A',
    imageUrl1: 'assets/images/grape_healthy.jpg',
    imageUrl2: 'assets/images/grape_healthy2.jpg',
  ),
];

List<Pathology> pestList = [
  Pathology(
    title: 'Aphids',
    description:
        'Aphids are small, soft-bodied insects with long legs and antennae. Their size ranges from 0.5 to 2 mm and the color of their body can be yellow, brown, red or black, depending on the species. Their aspect ranges from the wingless varieties, that are generally predominant, to the winged, waxy or woolly types.Optimal conditions for their growth are dry and warm climates. They usually settle and feed in clusters on the underside of well-fed young leaves and shoot tips. Severe infestation can cause leaves and shoots to curl, wilt or yellow and stunt plant growth. Even small numbers of aphids can transmit viruses from plant to plant in a persistent way.',
    imageUrl: 'assets/images/aphids1.jpg',
    orgControl:
        'In case of mild infestation, use an insecticidal soap solution or solution based on plant oils. Aphids are also very susceptible to fungal diseases when it is humid. A spray of water on affected plants can also remove them.',
    chemControl:
        'Stem application with flonicamid and water (1:20) ratio at 30, 45, 60 days after sowing (DAS) can be planned. Fipronil 2 ml or thiamethoxam (0.2 g) or flonicamid (0.3 g) or acetamiprid (0.2 per liter of water) can also be used. However, these chemicals can have negative impacts on predators, parasitoids, and pollinators.',
    measures:
        '- Remove plant debris from previous cultivation,\n-  Monitor fields regularly to assess the incidence of a disease or pest and determine their severity.\n- Remove infected plant parts.\n- Control ant populations that protect aphids.\n- If possible, use nets to protect the plants.\n- Control insecticide use in order not to affect beneficial insects.',
    sinTitle: 'කුඩිත්තන්',
    sinDescription:
        'කුඩිත්තන් යනු දිගු කකුල් සහ ඇන්ටෙනා සහිත කුඩා, මෘදු ශරීර කෘමීන් ය. ඔවුන්ගේ විශාලත්වය 0.5 සිට 2 mm දක්වා වන අතර විශේෂය අනුව ඔවුන්ගේ ශරීරයේ වර්ණය කහ, දුඹුරු, රතු හෝ කළු විය හැක. ඔවුන්ගේ අංගය සාමාන්‍යයෙන් ප්‍රමුඛ වන පියාපත් රහිත ප්‍රභේදවල සිට පියාපත් සහිත, ඉටි හෝ ලොම් වර්ග දක්වා විහිදේ. ඔවුන්ගේ වර්ධනය සඳහා ප්‍රශස්ත තත්වයන් වියළි හා උණුසුම් දේශගුණයකි. ඔවුන් සාමාන්‍යයෙන් පදිංචි වී පෝෂණය වන්නේ හොඳින් පෝෂණය වූ ළපටි පත්‍රවල සහ අංකුර ඉඟිවල යටි පැත්තේ පොකුරු ලෙසය. උග්‍ර ආසාදනය හේතුවෙන් කොළ සහ රිකිලි රැලි වැටීම, මැලවීම හෝ කහ වීම සහ ශාක වර්ධනය අඩාල විය හැක. කුඩිත්තන් කුඩා සංඛ්‍යාවකට පවා නොනැසී පවතින ආකාරයට ශාකයෙන් ශාකයට වෛරස් සම්ප්‍රේෂණය කළ හැක.',
    sinOrgControl:
        'මෘදු ආසාදනයකදී, කෘමිනාශක සබන් විසඳුමක් හෝ ශාක තෙල් මත පදනම් වූ විසඳුමක් භාවිතා කරන්න. කුඩිත්තන් තෙත් වූ විට දිලීර රෝග වලටද ඉතා පහසුවෙන් ගොදුරු වේ. බලපෑමට ලක් වූ ශාකවලට ජලය ඉසීමෙන් ඒවා ඉවත් කළ හැකිය.',
    sinChemControl:
        'වැපිරීමෙන් පසු දින 30, 45, 60 ට flonicamid සහ ජලය (1:20) අනුපාතය සමඟ කඳ යෙදීම සැලසුම් කළ හැක. Fipronil 2 ml හෝ thiamethoxam (0.2 g) හෝ flonicamid (0.3 g) හෝ acetamiprid (ජලය ලීටරයකට 0.2) ද භාවිතා කළ හැකිය. කෙසේ වෙතත්, මෙම රසායනික ද්‍රව්‍ය විලෝපිකයන්, පරපෝෂිතයන් සහ පරාග වාහකයන් කෙරෙහි ඍණාත්මක බලපෑම් ඇති කළ හැක.',
    sinMeasures:
        '- පෙර වගාවෙන් ශාක අපද්‍රව්‍ය ඉවත් කරන්න,\n- රෝගයක් හෝ පළිබෝධකයන්ගේ සිදුවීම් තක්සේරු කිරීමට සහ ඒවායේ බරපතලකම තීරණය කිරීමට ක්ෂේත්‍ර නිරන්තරයෙන් නිරීක්ෂණය කරන්න.\n- ආසාදිත ශාක කොටස් ඉවත් කරන්න.\n- කුඩිත්තන් ආරක්ෂා කරන කුහුඹු ගහනය පාලනය කරන්න.\n- හැකි නම්, ශාක ආරක්ෂා කිරීමට දැල් භාවිතා කරන්න.\n- හිතකර කෘමීන්ට බලපෑමක් නොවන පරිදි කෘමිනාශක භාවිතය පාලනය කරන්න.',
    imageUrl1: 'assets/images/aphids.jpg',
    imageUrl2: 'assets/images/aphids2.jpg',
  ),
  Pathology(
    title: 'Armyworm',
    description:
        'The larvae of the fall armyworm cause damage by feeding on all plant parts. Young larvae initially eat one side of the surface of the leaf tissue, leaving the opposite layer intact. Larger larvae leave a characteristic row of perforations and ragged margins on leaves, as well as lines of larval frass. The larvae are light tan or green to nearly black, with stripes running along the flanks and a yellowish line along the back.',
    imageUrl: 'assets/images/armyworm1.jpg',
    orgControl:
        'The most common parasites include ground beetles, spined soldier bugs, flower bugs, birds or rodents. Bio-insecticides containing neem extracts, Bacillus Thuringiensis or Baculovirus Spodoptera, as well as Spinosad or Azadirachtin can be sprayed. In maize, red sand, rock salt, charcoal powder or fly ash put in the flower, it will kill larvare by feeding on them.',
    chemControl:
        'Recommended insecticides include esfenvalerate, chlorpyrifos, malathion and lambda-cyhalothrin. Farmers are also advised to go for poison bait based on these insecticides for adult larvae.',
    measures:
        '- Monitor the moth presence and mass-catch them with light or pheromone traps.\n- Plant more resilient plants.\n- Plow the land to expose larvae and pupae to high temperatures.',
    sinTitle: 'සේනා දළඹුවා',
    sinDescription:
        'සේනා දළඹුවාගේ කීටයන් සියලුම ශාක කොටස් ආහාරයට ගැනීමෙන් හානි සිදු කරයි. තරුණ කීටයන් මුලින් පත්‍ර පටක මතුපිට එක් පැත්තක් අනුභව කරන අතර ප්‍රතිවිරුද්ධ ස්ථරය නොවෙනස්ව පවතී. විශාල කීටයන් ලාක්ෂණික සිදුරු පේළියක් සහ කොළ මත ඉරිතලා ගිය දාර මෙන්ම කීට පිත්තල රේඛා ද තබයි. කීටයන් ලා දුඹුරු හෝ කොළ සිට කළු පැහැයට ආසන්න වන අතර, ඉරි දෙපස දිවෙන අතර පිටුපසින් කහ පැහැති රේඛාවක් ඇත.',
    sinOrgControl:
        'වඩාත් සුලභ පරපෝෂිතයන් වන්නේ බිම් කුරුමිණියන්, ස්පින්ඩ් කුරුමිණියන්, මල් මකුණන්, කුරුල්ලන් හෝ මීයන් ය. නීම් සාරය, Bacillus Thuringiensis හෝ Baculovirus Spodoptera අඩංගු ජෛව කෘමිනාශක මෙන්ම Spinosad හෝ Azadirachtin ද ඉසිය හැක. බඩ ඉරිඟු, රතු වැලි, ගල් ලුණු, අඟුරු කුඩු හෝ මැස්සන් මල් තුළට දැමීම, එය ආහාරයට ගැනීමෙන් කීටයන් විනාශ කරයි.',
    sinChemControl:
        'නිර්දේශිත කෘමිනාශක අතර esfenvalerate, chlorpyrifos, malathion සහ lambda-cyhalothrin ඇතුළත් වේ. වැඩිහිටි කීටයන් සඳහා මෙම කෘමිනාශක මත පදනම්ව වස ඇමක් සඳහා ගොවීන්ට උපදෙස් දෙනු ලැබේ.',
    sinMeasures:
        '- සලබයාගේ පැමිණීම නිරීක්ෂණය කර සැහැල්ලු හෝ ෆෙරමෝන් උගුල්වලින් ඔවුන්ව අල්ලා ගන්න.\n- වඩා ඔරොත්තු දෙන පැල සිටුවන්න.\n- කීටයන් ඉහළ උෂ්ණත්වයකට නිරාවරණය කිරීමට ඉඩම සීසන්න.',
    imageUrl1: 'assets/images/armyworm.jpg',
    imageUrl2: 'assets/images/armyworm2.jpg',
  ),
  Pathology(
    title: 'Bollworm',
    description:
        'Damage is caused by the larvae of the spotted bollworm, Earias vittella, a common pest. The moths are mostly pale with green features, approximately 2 cm long and can be found on flowers or close to light sources. Eggs are blue in color and laid singly on young shoots, leaves, and squares. The young larvae is light brown with grey to green features, and pale along the mid-dorsal line. Larvae mainly attack bolls, but also feed on squares, shoots and flowers if bolls are not present. If infested during the vegetative state, the caterpillars feed through the terminal buds of the shoots and move downward. This causes drying and shedding of terminal shoots before flowering.',
    imageUrl: 'assets/images/bollworm1.jpg',
    orgControl:
        'Scouting for eggs or small larvae is crucial in the management of this pest. Some parasitoid insects of the family Braconidae, Scelionidae and Trichogrammatidae can be used as biological control method. You can apply bioinsecticide sprays containing Bacillus thuringiensis to control population peaks.',
    chemControl:
        'Insecticides containing chlorantraniliprole, emamectin benzoate, flubendiamide, or esfenvalerate can be applied.',
    measures:
        '- Leave sufficient distance between plants.\n-  Plant trap crops like hibiscus and okra.\n- Remove infected plant parts.\n- Keep up sufficient fertilization.',
    sinTitle: 'බෝල්වර්ම්',
    sinDescription:
        'මෙම පළිබෝධයේ කීටයන් වන Earias vittella මගින් හානි සිදුවේ. සලබයන් බොහෝ දුරට කොළ පැහැති ලක්ෂණ සහිත සුදුමැලි වන අතර, ආසන්න වශයෙන් සෙන්ටිමීටර 2 ක් දිග වන අතර මල් මත හෝ ආලෝක ප්රභවයන් ආසන්නයේ දක්නට ලැබේ. බිත්තර නිල් පැහැයෙන් යුක්ත වන අතර තරුණ රිකිලි, කොළ සහ හතරැස් මත තනි තනිව දමයි. තරුණ කීටයන් අළු සිට කොළ පැහැති ලක්ෂණ සහිත ලා දුඹුරු වන අතර මැද පෘෂ්ඨීය රේඛාව ඔස්සේ සුදුමැලි වේ. කීටයන් ප්‍රධාන වශයෙන් කලසට පහර දෙයි, නමුත් කලසක් නොමැති නම් කොටු, රිකිලි සහ මල් ද පෝෂණය කරයි. වෘක්ෂලතා තත්ත්වය තුළ ආසාදනය වී ඇත්නම්, දළඹුවන් අංකුරවල පර්යන්ත අංකුර හරහා පෝෂණය වන අතර පහළට ගමන් කරයි. මෙය මල් පිපීමට පෙර පර්යන්ත රිකිලි වියළීම හා වැගිරීමට හේතු වේ.',
    sinOrgControl:
        'මෙම පළිබෝධ පාලනය කිරීමේදී බිත්තර හෝ කුඩා කීටයන් සොයා බැලීම ඉතා වැදගත් වේ. Braconidae, Scelionidae සහ Trichogrammatidae පවුලේ සමහර පරපෝෂිත කෘමීන් ජීව විද්‍යාත්මක පාලන ක්‍රමයක් ලෙස භාවිතා කළ හැක. ජනගහන උච්ච පාලනය කිරීම සඳහා ඔබට Bacillus thuringiensis අඩංගු ජෛව කෘමිනාශක ඉසින යෙදිය හැක.',
    sinChemControl:
        'chlorantraniliprole, emamectin benzoate, flubendiamide, or esfenvalerate අඩංගු කෘමිනාශක යෙදිය හැක.',
    sinMeasures:
        '- පැල අතර ප්‍රමාණවත් දුරක් තබන්න.\n- හිබිස්කස් සහ බණ්ඩක්කා වැනි උගුල් බෝග සිටුවන්න.\n- ආසාදිත ශාක කොටස් ඉවත් කරන්න.\n- ප්‍රමාණවත් පොහොර යෙදීම සිදු කරන්න.',
    imageUrl1: 'assets/images/bollworm.jpg',
    imageUrl2: 'assets/images/bollworm2.jpg',
  ),
  Pathology(
    title: 'Mites',
    description:
        'The spider mites feeding causes white to yellow speckles to form on the upper surface of the leaves. As infestation becomes more severe, leaves appear bronzed or silvery first and then become brittle, rip open between the leaf veins, and finally fall off. Spider mite eggs can be found on undersides of leaves. The mites protect themselves with a cocoon on the underside of the leaf blades. Infected plants will be covered by a web spun by the spider mites.',
    imageUrl: 'assets/images/mites1.jpg',
    orgControl:
        'In case of minor infestation, simply wash off the mites and remove the affected leaves. Use preparations based on insecticidal soap solutions, rapeseed, basil, soybean and neem oils to spray leaves  thoroughly and reduce population.',
    chemControl:
        'Fungicides based on wettable sulfur (3 g/l), spiromesifen (1 ml/l), dicofol (5 ml/l) or abamectin can be used for example (dilution in water).',
    measures:
        '- Monitor your field regularly and check the underside of leaves.\n-  Remove affected leaves or plants.\n- Apply water to pathways and other dusty areas at regular intervals to avoid dusty conditions in the field.',
    sinTitle: 'මයිටාවන්',
    sinDescription:
        'මකුළු මයිටාවන් ආහාරයට ගැනීම නිසා පත්‍රවල ඉහළ පෘෂ්ඨයේ සුදු සිට කහ පැහැති ලප ඇතිවේ. ආසාදනය උග්‍ර වන විට, පත්‍ර ප්‍රථමයෙන් ලෝකඩ හෝ රිදී පැහැයෙන් දිස්වන අතර පසුව බිඳෙනසුලු වී, පත්‍ර නහර අතර ඉරී ගොස් අවසානයේ වැටේ. මකුළු මයිටා බිත්තර කොළ යටි පැත්තේ දක්නට ලැබේ. මයිටාවන් කොළ තලවල යටි පැත්තේ කොකෝනයකින් ආරක්ෂා වේ. ආසාදිත ශාක මකුළු මයිටාවන් විසින් අඹරන ලද දැලකින් ආවරණය කරනු ලැබේ.',
    sinOrgControl:
        'කුඩා ආසාදනයක් ඇත්නම්, මයිටාවන් සෝදා ඉවත් කර හානියට පත් කොළ ඉවත් කරන්න. කෘමිනාශක සබන් විසඳුම්, රැප්සීඩ්, බැසිල්, සෝයා බෝංචි සහ නීම් තෙල් මිශ්‍රණයක් ඉසීමෙන් ජනගහනය අඩු කරන්න.',
    sinChemControl:
        'තෙත් කළ හැකි සල්ෆර් (3 g/l), spiromesifen (1 ml/l), dicofol (5 ml/l) හෝ abamectin මත පදනම් වූ දිලීර නාශක (ජලයේ තනුක) භාවිතා කළ හැක.',
    sinMeasures:
        '- ඔබේ ක්ෂේත්‍රය නිතිපතා නිරීක්ෂණය කර පත්‍රවල යටි පැත්ත පරීක්ෂා කරන්න.\n- බලපෑමට ලක් වූ කොළ හෝ පැල ඉවත් කරන්න.\n- ක්ෂේත්‍රයේ දූවිලි සහිත තත්ත්වයන් වළක්වා ගැනීම සඳහා මාර්ග සහ අනෙකුත් දූවිලි සහිත ප්‍රදේශවලට නියමිත කාල පරාසයන් තුළ ජලය යොදන්න.',
    imageUrl1: 'assets/images/mites2.jpg',
    imageUrl2: 'assets/images/mites.jpg',
  ),
  Pathology(
    title: 'Sawfly',
    description:
        'Sawflies are a group of insects in the same order as the bees, ants and wasps that feed on plants. These insects can be distinguished from most other hymenopterans by their broad waist, unlike the narrow connection between the thorax and abdomen of a wasp, and by their caterpillar-like larvae. The adults of sawflies tend to be inconspicuous and look somewhat like wasps but do not sting. They feed on pollen and nectar, so may be seen on flowers as well as their larval host plants. Sawflies often stay together to feed in groups and therefore can quickly defoliate portions of their host plant. Some species line up next to each other with all the heads at the leaf edge as they chew away the blade.',
    imageUrl: 'assets/images/sawfly1.jpg',
    orgControl:
        'Sawfly larvae are fed upon by many animals, including some birds, lizards, frogs, ants, predatory wasps and other insects, while carnivorous mammals such as shrews and deer mice and several species of beetle larvae prey on the pupae.',
    chemControl:
        'Pesticides such as, AzaMax (Azadirachtin), Diatomaceous Earth, Spinosad and Insecticidal soap and horticultural oil are effective when managing sawfly larvae.',
    measures:
        '- Wash slugs off leaves with a strong jet of water.\n-  Remove affected leaves or plants.\n- Make sure your trees and shrubs are watered and fed appropriately.',
    sinTitle: 'සෝෆ්ලයි',
    sinDescription:
        'ශාක ආහාරයට ගන්නා මී මැස්සන්, කුහුඹුවන් සහ බඹරුන් වැනි අනුපිළිවෙලේම කෘමීන් සමූහයකි. මෙම කෘමීන් අනෙකුත් බොහෝ හයිමෙනොප්ටෙරාන්ගෙන් වෙන්කර හඳුනාගත හැක්කේ බඹරෙකුගේ උරස් සහ උදරය අතර ඇති පටු සම්බන්ධතාවය මෙන් නොව ඔවුන්ගේ පුළුල් ඉණ සහ දළඹුවන් වැනි කීටයන් මගිනි. මෙම කෘමියාගේ වැඩිහිටියන් නොපෙනී යන අතර බඹරුන් මෙන් පෙනෙන නමුත් දෂ්ට නොකරයි. ඔවුන් පරාග සහ පැණි මත පෝෂණය වන අතර, එම නිසා මල් මත මෙන්ම ඔවුන්ගේ කීට ධාරක ශාක මත දැකිය හැක. ඔවුන් බොහෝ විට කණ්ඩායම් වශයෙන් ආහාර ගැනීම සඳහා එකට රැඳී සිටින අතර එම නිසා ඔවුන්ගේ සත්කාරක ශාකයේ කොටස් ඉක්මනින් ඉවත් කළ හැකිය. සමහර විශේෂයන් තලය හපන විට සියලුම හිස් පත්‍ර දාරයේ ඇති පරිදි එක ළඟ පෙළ ගැසී සිටිති.',
    sinOrgControl:
        'කීටයන් සමහර පක්ෂීන්, කටුස්සන්, ගෙම්බන්, කුහුඹුවන්, කොල්ලකාරී බඹරුන් සහ වෙනත් කෘමීන් ඇතුළු බොහෝ සතුන් විසින් පෝෂණය කරන අතර මුවන්, මීයන් සහ කුරුමිණි විශේෂ කිහිපයක් වැනි මාංශ භක්ෂක ක්ෂීරපායින් පිලවා අනුභව කරයි.',
    sinChemControl:
        'AzaMax (Azadirachtin), Diatomaceous Earth, Spinosad සහ කෘමිනාශක සබන් සහ ගෙවතු වගා තෙල් වැනි පළිබෝධනාශක කීටයන් කළමනාකරණය කිරීමේදී ඵලදායී වේ.',
    sinMeasures:
        'ඉසින ජලයෙන් පත්‍රවල ඇති කීටයන් සෝදා හරින්න.\n- බලපෑමට ලක් වූ කොළ හෝ පැල ඉවත් කරන්න.\n- ඔබේ ගස් සහ පඳුරු නිසි ලෙස වතුර දමා පෝෂණය කිරීමට වග බලා ගන්න.',
    imageUrl1: 'assets/images/sawfly.jpg',
    imageUrl2: 'assets/images/sawfly2.jpg',
  ),
  Pathology(
    title: 'Stem Borer',
    description:
        'Larvae overwinter as pupae inside stems or plant debris in the soils and emerge as adults during the spring, when weather conditions are benign. The moths are small, stout and light brown with a hairy head and body. They bore into the stem and feed on the internal tissues. They bore into the stems or the base of the panicle and feed on the internal substance, blocking the transport of nutrients and water. Exit holes of the caterpillar can also be observed on stems and panicles.',
    imageUrl: 'assets/images/stem_borer1.jpg',
    orgControl:
        'The larvae are parasitized by the wasps Apanteles flavipes, Bracon chinensis and Sturmiopsis inferens. Bio-insecticides based on extracts of the fungus Beauveria bassiana and the bacteria Bacillus thuringiensis are also effective.',
    chemControl:
        'A treatment with insecticides in the form of granules or sprays (with chlorantriniliprole) can be applied to the foliage.',
    measures:
        '- Plant densely to hinder the moth to get into the foliage.\n-  Monitor the fields regularly and remove infected plant parts.\n- Ensure an adequate level  of nitrogen.\n- Ensure good water management.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'කඳ විදින පණුවා / පුරුක් පණුවා',
    sinDescription:
        'කීටයන් කඳන් තුළ පිලවා ලෙස ශීත ඍතුව ඉක්මවා හෝ පසෙහි ශාක සුන්බුන් ලෙස වැඩි වන අතර කාලගුණික තත්ත්වයන් හිතකර වන වසන්තයේ දී වැඩිහිටියන් ලෙස මතු වේ. සලබයන් කුඩා, ඝන සහ ලා දුඹුරු පැහැති හිසක් සහ ශරීරයක් ඇත. ඔවුන් කඳට ඇතුල් වන අතර අභ්යන්තර පටක මත පෝෂණය වේ. ඔවුන් කඳන් හෝ පැනලයේ පාදය තුළට ඇතුල් වන අතර පෝෂ්‍ය පදාර්ථ හා ජලය ප්‍රවාහනය අවහිර කරමින් අභ්‍යන්තර ද්‍රව්‍ය පෝෂණය කරයි. දළඹුවාගේ පිටවීමේ සිදුරු කඳන් සහ පැනල් මත ද නිරීක්ෂණය කළ හැක.',
    sinOrgControl:
        'Apanteles flavipes, Bracon chinensis සහ Sturmiopsis inferens යන බඹරුන් විසින් කීටයන් ආහාරයට ගනී.Beauveria bassiana දිලීරයේ සහ Bacillus thuringiensis බැක්ටීරියාවේ සාරය මත පදනම් වූ ජෛව කෘමිනාශක ද ඵලදායී වේ.',
    sinChemControl:
        'කෘමිනාශක සමඟ කැටිති හෝ ඉසින ආකාරයෙන් (ක්ලෝරන්ට්‍රිනිලිප්‍රෝල් සමඟ) ප්‍රතිකාරයක් ශාක පත්‍රවලට යෙදිය හැකිය.',
    sinMeasures:
        '- සලබයාට පත්‍ර වලට ඇතුල් වීමට බාධා වන පරිදි ඝන ලෙස සිටුවන්න.\n- ක්ෂේත්‍ර නිතිපතා නිරීක්ෂණය කිරීම සහ ආසාදිත ශාක කොටස් ඉවත් කිරීම.\n- ප්‍රමාණවත් නයිට්‍රජන් මට්ටමක් සහතික කිරීම.\n- හොඳ ජල කළමනාකරණය සහතික කිරීම.\n- ඉවත් කිරීම සහ අස්වැන්නෙන් පසු බෝග සුන්බුන් විනාශ කරන්න.',
    imageUrl1: 'assets/images/stem_borer.jpg',
    imageUrl2: 'assets/images/stem_borer2.jpg',
  ),
  Pathology(
    title: 'Chilli Whitefly',
    description:
        'Whiteflies are common on a variety of crops grown in open fields and greenhouses. They measure about 0.8-1 mm and have the body and both pairs of wings covered with a white to yellowish powdery, waxy secretion. The eggs are laid on the underside of the leaves. Both adults and nymphs suck the plant sap and excrete honeydew onto leaves, stems and fruits. They thrive in warm, dry conditions and some whiteflies transmit viruses such as yellow leaf curl virus or brown streak virus.',
    imageUrl: 'assets/images/whitefly1.jpg',
    orgControl:
        'Natural insecticides based on sugar-apple oil (Annona squamosa), pyrethrins, insecticidal soaps, Neem seed kernel extract (NSKE 5%), Neem oil (5ml/L water) are recommended.',
    chemControl:
        'Apply products based on or combinations of bifenthrin, buprofezin, fenoxycarb, deltamethrin, azadirachtin, lambda-cyhalothrin, cypermethrin, pyrethroids, pymetrozine or spiromesifen to control the insect.',
    measures:
        '- Use companion crops that attract or deter whiteflies (nasturtiums, zinnias, hummingbird bush, pineapple sage, bee balm).\n-  Plant tall-growing plants like maize, sorghum or pearl millet in dense rows as border crops.\n- Monitor your field with yellow sticky traps.\n- Remove leaves with eggs or larvae on them.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'මිරිස් සුදු මැස්සා',
    sinDescription:
        'මෙම පළිබෝධකයන් විවෘත ක්ෂේත්‍රවල සහ හරිතාගාරවල වගා කරන විවිධ භෝග වල බහුලව දක්නට ලැබේ. ඔවුන් 0.8-1 mm පමණ වන අතර ශරීරය සහ පියාපත් යුගල දෙකම සුදු සිට කහ පැහැති කුඩු, ඉටි ස්‍රාවයකින් ආවරණය වී ඇත. බිත්තර දමන්නේ කොළවල යටි පැත්තේ ය. වැඩිහිටි හා නිම්ෆස් යන දෙදෙනාම ශාක යුෂ උරා බොන අතර මී පැණි කොළ, කඳන් සහ පලතුරු මතට බැහැර කරයි. ඔවුන් උණුසුම්, වියලි තත්වයන් තුළ වර්ධනය වන අතර සමහර පළිබෝධකයන් කහ කොළ කරල් වෛරසය හෝ දුඹුරු ඉරි වෛරසය වැනි වෛරස් සම්ප්‍රේෂණය කරයි.',
    sinOrgControl:
        'සීනි-ඇපල් තෙල් (Annona squamosa), pyrethrins, කෘමිනාශක සබන්, Neem ඇට සාරය (NSKE 5%), Neem oil (5ml/L වතුර) මත පදනම් වූ ස්වභාවික කෘමිනාශක නිර්දේශ කෙරේ.',
    sinChemControl:
        'කෘමීන් පාලනය කිරීම සඳහා bifenthrin, buprofezin, fenoxycarb, deltamethrin, azadirachtin, lambda-cyhalothrin, cypermethrin, pyrethroids, pymetrozine හෝ spiromesifen මත පදනම් වූ නිෂ්පාදන හෝ සංයෝග යොදන්න.',
    sinMeasures:
        '- මෙම පළිබෝධකයන් ආකර්ෂණය කරන හෝ වළක්වන සහකාර භෝග භාවිතා කරන්න (nasturtiums, zinnias, hummingbird පඳුරු, අන්නාසි අග්ගිස්, මී බාම්).\n- බඩ ඉරිඟු, බඩ ඉරිඟු හෝ මුතු මෙනේරි වැනි උසට වැඩෙන පැල මායිම් බෝග ලෙස ඝන පේළි වල සිටුවන්න.\n - කහ ඇලෙන සුළු උගුල් ඔබේ කෙතේ තබන්න.\n- බිත්තර හෝ කීටයන් සහිත කොළ ඉවත් කරන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/whitefly.jpg',
    imageUrl2: 'assets/images/whitefly2.jpg',
  ),
];

List<Pathology> potatoList = [
  Pathology(
    title: 'Potato Early Blight',
    description:
        'Caused by Alternaria solani, a fungus that overwinters on infected crop debris in soil or on alternative hosts. Warm temperatures (24-29°C) and high humidity (90%) favor development of the disease. Symptoms of early blight occur on older foliage, stem, and fruits. Gray to brown spots appear on leaves and gradually grow in a concentric manner around a clear center - the characteristic “bullseye” formation. Finally, fruits begin to rot and may eventually fall off.',
    imageUrl: 'assets/images/potato_early1.jpg',
    orgControl:
        'Application of products based on Bacillus subtilis or copper-based fungicides registered as organic can treat this disease.',
    chemControl:
        'Fungicides based on or combinations of azoxystrobin, pyraclostrobin, difenoconazole, boscalid, chlorothalonil, fenamidone, maneb, mancozeb, trifloxystrobin, and ziram can be used.',
    measures:
        '- Lay mulch on the soil to keep plants from touching the soil.\n-  Monitor fields for signs of the disease, particularly during wet weather.\n- Remove bottom leaves that are too close to the soil.\n- Remove leaves displaying symptoms and destroy them.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'අර්තාපල් පූර්ව අංගමාරය',
    sinDescription:
        'Alternaria solani නම් දිලීර මගින් ඇතිවේ, පසෙහි හෝ විකල්ප ධාරක මත ආසාදිත බෝග සුන්බුන් මත ශීත ඍතුවේ පවතින දිලීරයකි. උණුසුම් උෂ්ණත්වය (24-29 ° C) සහ අධික ආර්ද්රතාවය (90%) රෝගයේ වර්ධනයට හිතකර වේ. මුල් අංගමාරයේ රෝග ලක්ෂණ වැඩිහිටි පත්‍ර, කඳ සහ පලතුරු මත දක්නට ලැබේ. අළු සිට දුඹුරු පැහැ ලප පත්‍ර මත දිස්වන අතර ක්‍රමයෙන් පැහැදිලි මධ්‍යයක් වටා සංකේන්ද්‍රිතව වර්ධනය වේ - ලාක්ෂණික “bullseye” සෑදීම. අවසානයේදී, පලතුරු කුණු වීමට පටන් ගන්නා අතර අවසානයේ වැටීමට ඉඩ ඇත.',
    sinOrgControl:
        'Bacillus subtilis හෝ කාබනික ලෙස ලියාපදිංචි තඹ මත පදනම් වූ දිලීර නාශක මත පදනම් වූ නිෂ්පාදන යෙදීමෙන් මෙම රෝගයට ප්‍රතිකාර කළ හැක.',
    sinChemControl:
        'azoxystrobin, pyraclostrobin, difenoconazole, boscalid, chlorothalonil, fenamidone, maneb, mancozeb, trifloxystrobin සහ ziram මත පදනම් වූ හෝ සංයෝග භාවිතා කළ හැක.',
    sinMeasures:
        '- ශාක පස ස්පර්ශ නොවන පරිදි පස මත වසුන් දමන්න.\n- විශේෂයෙන් තෙත් කාලගුණය තුළදී රෝගයේ සලකුණු සඳහා ක්ෂේත්‍ර නිරීක්ෂණය කරන්න.\n- පසට ඉතා සමීපව ඇති පතුල ඉවත් කරන්න.\n-රෝග ලක්ෂණ පෙන්නුම් කරන කොළ ඉවත් කර විනාශ කරන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/potato_early.jpg',
    imageUrl2: 'assets/images/potato_early2.jpg',
  ),
  Pathology(
    title: 'Potato Late Blight',
    description:
        'This fungus lives in plant debris and tubers as well as on alternative hosts to survive. It enters the plant via wounds and rips in the skin. Fungal spores germinate at higher temperatures during the spring and spread through wind or water. Dark brown spots develop on the leaves starting at the tip or the leaf margins. In humid climates, these spots become water-soaked lesions. A white fungal covering can be seen on the underside of the leaves.',
    imageUrl: 'assets/images/potato_late1.jpg',
    orgControl:
        'Apply copper-based fungicides before dry weather. Foliar sprays of organic coating agents can also prevent the infection.',
    chemControl:
        'Fungicides containing mandipropamid, chlorothalonil, fluazinam, or mancozeb can be used.',
    measures:
        '- Lay mulch on the soil to keep plants from touching the soil.\n-  Monitor fields for signs of the disease, particularly during wet weather.\n- Remove bottom leaves that are too close to the soil.\n- Remove leaves displaying symptoms and destroy them.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'අර්තාපල් පසු අංගමාරය',
    sinDescription:
        'මෙම දිලීර ශාක සුන්බුන් සහ අලවල මෙන්ම පැවැත්ම සඳහා විකල්ප ධාරක මත ජීවත් වේ. එය තුවාල හා ඉරිතැලීම් හරහා ශාකයට ඇතුල් වේ. දිලීර බීජාණු වසන්තයේ දී ඉහළ උෂ්ණත්වවලදී ප්රරෝහණය වන අතර සුළඟ හෝ ජලය හරහා පැතිරෙයි. පත්‍ර අගින් හෝ පත්‍ර මායිමෙන් ආරම්භ වන තද දුඹුරු පැහැ ලප වර්ධනය වේ. තෙතමනය සහිත දේශගුණයක් තුළ, මෙම ලප ජලයෙන් පොඟවා තුවාල බවට පත් වේ. කොළවල යටි පැත්තේ සුදු දිලීර ආවරණයක් දැකිය හැකිය.',
    sinOrgControl:
        'වියළි කාලගුණයට පෙර තඹ ආශ්‍රිත දිලීර නාශක යොදන්න. කාබනික ආලේපන ද්‍රව්‍ය පත්‍ර ඉසීමෙන් ආසාදනය වැළැක්විය හැකිය.',
    sinChemControl:
        'මැන්ඩිප්‍රොපාමිඩ්, ක්ලෝරෝතලෝනිල්, ෆ්ලූසිනම් හෝ මැන්කොසෙබ් අඩංගු දිලීර නාශක භාවිතා කළ හැක.',
    sinMeasures:
        '- ශාක පස ස්පර්ශ නොවන පරිදි පස මත වසුන් දමන්න.\n- විශේෂයෙන් තෙත් කාලගුණය තුළදී රෝගයේ සලකුණු සඳහා ක්ෂේත්‍ර නිරීක්ෂණය කරන්න.\n- පසට ඉතා සමීපව ඇති පතුල ඉවත් කරන්න.\n-රෝග ලක්ෂණ පෙන්නුම් කරන කොළ ඉවත් කර විනාශ කරන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/potato_late.jpg',
    imageUrl2: 'assets/images/potato_late2.jpg',
  ),
  Pathology(
    title: 'Potato Healthy',
    description:
        'Potatoes are generous plants. They are easy to grow and produce abundant harvests. Give them full sun, loose and fertile soil and sufficient amount of water and they will accept almost any planting situation. You can grow potatoes in containers, pots, or a special “grow bag”.',
    imageUrl: 'assets/images/potato_healthy1.jpg',
    orgControl: 'N/A',
    chemControl: 'N/A',
    measures: 'N/A',
    sinTitle: 'නිරෝගී අර්තාපල්',
    sinDescription:
        'අර්තාපල් වගා කිරීමට පහසු වන අතර බහුල අස්වැන්නක් ලබා දෙයි. ඔවුන්ට සම්පූර්ණ හිරු, ලිහිල් හා සාරවත් පස සහ ප්රමාණවත් ජල ප්රමාණයක් ලබා දෙන්න, ඔවුන් ඕනෑම රෝපණ තත්වයක් පාහේ පිළිගනු ඇත. ඔබට බහාලුම්වල, භාජනවල හෝ විශේෂ “වර්ධන බෑගයක” අර්තාපල් වගා කළ හැකිය.',
    sinOrgControl: 'N/A',
    sinChemControl: 'N/A',
    sinMeasures: 'N/A',
    imageUrl1: 'assets/images/potato_healthy.jpg',
    imageUrl2: 'assets/images/potato_healthy2.jpg',
  ),
];

List<Pathology> tomatoList = [
  Pathology(
    title: 'Tomato Bacterial Spot',
    description:
        'Bacterial Spot are caused by several species of bacterias and is one of the most devastating diseases on tomatoes grown in warm, moist environments. The pathogens can survive in or on seeds, plant debris, and specific weeds and enters the plant tissues through leaf pores and wounds. Symptoms can be seen on the foliage, stems, and fruits of tomatoes. Initially small yellow-green lesions appear on young leaves for bacterial spot, whilst bacterial speck causes black spots with a narrow yellow halo.',
    imageUrl: 'assets/images/tomato_bacSPot1.jpg',
    orgControl:
        'No effective organic control identified. Please refer to chemical control & preventive measures.',
    chemControl:
        'Copper-containing bactericides can be used as a protectant and give partial disease control.',
    measures:
        '- Plant disease-free seeds if possible from a certified source.\n-  Inspect field regularly, particularly during overcast weather.\n- Ensure sufficient space between plants\n- Remove and burn any seedling or plant part with leaf spots.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'තක්කාලි බැක්ටීරියා කොළ පුල්ලි රෝගය',
    sinDescription:
        'මෙම රෝගය බැක්ටීරියා විශේෂ කිහිපයක් නිසා ඇති වන අතර එය උණුසුම්, තෙතමනය සහිත පරිසරයක වගා කරන තක්කාලි වල වඩාත් විනාශකාරී රෝග වලින් එකකි. රෝග කාරක බීජ, ශාක සුන්බුන් සහ විශේෂිත වල් පැලෑටි තුළ හෝ ඒවා මත ජීවත් විය හැකි අතර පත්‍ර සිදුරු සහ තුවාල හරහා ශාක පටක වලට ඇතුල් වේ. තක්කාලි වල ශාක පත්‍ර, කඳන් සහ පලතුරු වල රෝග ලක්ෂණ දැකිය හැක. මුලදී කුඩා කහ-කොළ තුවාල බැක්ටීරියා ලප සඳහා තරුණ පත්‍ර මත දිස්වන අතර බැක්ටීරියා ලප පටු කහ පැහැයක් සහිත කළු ලප ඇති කරයි.',
    sinOrgControl:
        'ඵලදායී කාබනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර රසායනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinChemControl:
        'තඹ අඩංගු බැක්ටීරියා නාශක ආරක්ෂකයෙකු ලෙස භාවිතා කළ හැකි අතර අර්ධ රෝග පාලනයක් ලබා දිය හැක.',
    sinMeasures:
        'හැකි නම් සහතික කළ මූලාශ්‍රයකින් රෝගවලින් තොර බීජ සිටුවන්න.\n- විශේෂයෙන් වළාකුළු පිරි කාලගුණය තුළ ක්ෂේත්‍රය නිතිපතා පරීක්ෂා කරන්න.\n- පැල අතර ප්‍රමාණවත් ඉඩක් සහතික කරන්න\n- පත්‍ර ලප ඇති ඕනෑම පැළයක් හෝ ශාක කොටසක් ඉවත් කර පුළුස්සා දමන්න.\ n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/tomato_bacSPot.jpg',
    imageUrl2: 'assets/images/tomato_bacSPot2.jpg',
  ),
  Pathology(
    title: 'Tomato Early Leaf Blight',
    description:
        'Caused by Alternaria solani, a fungus that overwinters on infected crop debris in soil or on alternative hosts. Warm temperatures (24-29°C) and high humidity (90%) favor development of the disease. Symptoms of early blight occur on older foliage, stem, and fruits. Gray to brown spots appear on leaves and gradually grow in a concentric manner around a clear center - the characteristic “bullseye” formation. Finally, fruits begin to rot and may eventually fall off.',
    imageUrl: 'assets/images/tomato_early1.jpg',
    orgControl:
        'Application of products based on Bacillus subtilis or copper-based fungicides registered as organic can treat this disease.',
    chemControl:
        'Fungicides based on or combinations of azoxystrobin, pyraclostrobin, difenoconazole, boscalid, chlorothalonil, fenamidone, maneb, mancozeb, trifloxystrobin, and ziram can be used.',
    measures:
        '- Lay mulch on the soil to keep plants from touching the soil.\n-  Monitor fields for signs of the disease, particularly during wet weather.\n- Remove bottom leaves that are too close to the soil.\n- Remove leaves displaying symptoms and destroy them.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'තක්කාලි පූර්ව අංගමාරය',
    sinDescription:
        'පසෙහි හෝ විකල්ප ධාරක මත ආසාදිත බෝග සුන්බුන් මත ශීත ඍතුවේ පවතින දිලීරයක් වන Alternaria solani නම් දිලීර මගින් ඇතිවේ. උණුසුම් උෂ්ණත්වය (24-29 ° C) සහ අධික ආර්ද්රතාවය (90%) රෝගයේ වර්ධනයට හිතකර වේ. මුල් අංගමාරයේ රෝග ලක්ෂණ වැඩිහිටි පත්‍ර, කඳ සහ පලතුරු මත දක්නට ලැබේ. අළු සිට දුඹුරු පැහැ ලප පත්‍ර මත දිස්වන අතර ක්‍රමයෙන් පැහැදිලි මධ්‍යයක් වටා සංකේන්ද්‍රිතව වර්ධනය වේ - ලාක්ෂණික “බුල්සෙයි” සෑදීම. අවසානයේදී, පලතුරු කුණු වීමට පටන් ගන්නා අතර අවසානයේ වැටීමට ඉඩ ඇත.',
    sinOrgControl:
        'Bacillus subtilis හෝ කාබනික ලෙස ලියාපදිංචි තඹ මත පදනම් වූ දිලීර නාශක මත පදනම් වූ නිෂ්පාදන යෙදීමෙන් මෙම රෝගයට ප්‍රතිකාර කළ හැක.',
    sinChemControl:
        'azoxystrobin, pyraclostrobin, difenoconazole, boscalid, chlorothalonil, fenamidone, maneb, mancozeb, trifloxystrobin සහ ziram මත පදනම් වූ හෝ සංයෝග භාවිතා කළ හැක.',
    sinMeasures:
        '- ශාක පස ස්පර්ශ නොවන පරිදි පස මත වසුන් දමන්න.\n- විශේෂයෙන් තෙත් කාලගුණය තුළදී රෝගයේ සලකුණු සඳහා ක්ෂේත්‍ර නිරීක්ෂණය කරන්න.\n- පසට ඉතා සමීපව ඇති පතුල ඉවත් කරන්න.\n-රෝග ලක්ෂණ පෙන්නුම් කරන කොළ ඉවත් කර විනාශ කරන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/tomato_early.jpg',
    imageUrl2: 'assets/images/tomato_early2.jpg',
  ),
  Pathology(
    title: 'Tomato Leaf Mold',
    description:
        'Caused by the fungus Mycovellosiella fulva, whose spores can survive without a host for 6 months to a year at room temperature. Prolonged leaf moisture and humidities above 85% favor the germination of spores. Symptoms commonly occur on both sides of the foliage and sometimes on fruit. On the upper leaf surface, small, diffuse, pale green or yellowish spots with indefinite margins appear. On the underside, olive green to grayish purple and velvety patches develop below the leaf spots. Over time, as the spots enlarge, the color of the infected leaf changes from yellowish (chlorosis) to brown (necrosis) and the leaf begins to curl and dry.',
    imageUrl: 'assets/images/tomato_mold1.jpg',
    orgControl:
        'Seed treatment with hot water (25 minutes at 122 °F or 50 °C) is recommended to avoid the pathogen on seeds. The fungi Acremonium strictum, Dicyma pulvinata, Trichoderma harzianum and Trichothecium roseum could be used to reduce its spread. Also, apple-cider, garlic or milk sprays and vinegar mix can be used to treat the mold.',
    chemControl:
        'Recommended compounds in field use are chlorothalonil, maneb, mancozeb and copper formulations.',
    measures:
        '- Plant disease-free seeds if possible from a certified source.\n-  Inspect field regularly, particularly during overcast weather.\n- Adjust row and plant spacing to enhance air circulation and reduce humidity in the canopy.\n- Remove and burn any infected seedling or plant.\n- Use drip irrigation and avoid watering foliage.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'තක්කාලි කොළ කුණුවීමේ රෝගය',
    sinDescription:
        'Mycovellosiella fulva නම් දිලීර නිසා ඇති වන අතර, එහි බීජාණු කාමර උෂ්ණත්වයේ දී මාස 6 සිට අවුරුද්දක් දක්වා ධාරකයෙකු නොමැතිව පැවතිය හැකිය. 85% ට වැඩි දිගු පත්‍ර තෙතමනය සහ ආර්ද්‍රතාවය බීජාණු ප්‍රරෝහණයට හිතකර වේ. රෝග ලක්ෂණ සාමාන්‍යයෙන් ශාක පත්‍ර දෙපස සහ සමහර විට පලතුරු වල දක්නට ලැබේ. ඉහළ කොළ මතුපිට, අවිනිශ්චිත මායිම් සහිත කුඩා, විසිරුණු, සුදුමැලි කොළ හෝ කහ පැහැති ලප දිස්වේ. යටි පැත්තේ, ඔලිව් කොළ සිට අළු පැහැති දම් සහ වෙල්වට් පැල්ලම් පත්‍ර ලප වලට පහළින් වර්ධනය වේ. කාලයත් සමඟ, ලප විශාල වන විට, ආසාදිත පත්‍රයේ වර්ණය කහ (ක්ලෝරෝසිස්) සිට දුඹුරු (නික්‍රෝසිස්) දක්වා වෙනස් වන අතර පත්‍රය රැලි වී වියළීමට පටන් ගනී.',
    sinOrgControl:
        'බීජ මත ඇති රෝග කාරකය වැලැක්වීම සඳහා උණු වතුර (විනාඩි 25 122 °F හෝ 50 °C) සමඟ බීජ ප්‍රතිකාර කිරීම නිර්දේශ කෙරේ. Acremonium Stricum, Dicyma pulvinata, Trichoderma harzianum සහ Trichothecium roseum දිලීර පැතිරීම අවම කිරීම සඳහා භාවිතා කළ හැකිය. එසේම, මෙයට ප්‍රතිකාර කිරීම සඳහා ඇපල්-සයිඩර්, සුදුළූණු හෝ කිරි ඉසින සහ විනාකිරි මිශ්‍රණය භාවිතා කළ හැකිය.',
    sinChemControl:
        'පාලනය කිරීම සඳහා chlorothalonil, maneb, mancozeb සහ තඹ සංයෝග භාවිතා කළ හැක.',
    sinMeasures:
        '- හැකි නම් සහතික කළ මූලාශ්‍රයකින් රෝගවලින් තොර බීජ සිටුවන්න.\n- විශේෂයෙන් වළාකුළු පිරි කාලගුණය තුළ ක්ෂේත්‍රය නිතිපතා පරීක්ෂා කරන්න.\n- වායු සංසරණය වැඩි දියුණු කිරීමට සහ වියනෙහි ආර්ද්‍රතාවය අඩු කිරීමට පේළි සහ පැල පරතරය සකස් කරන්න.\n-ආසාදිත බීජ පැළ හෝ පැල ඉවත් කර පුළුස්සා දමන්න.\n- බිංදු ජල සම්පාදනය භාවිතා කරන්න සහ කොළ වලට ජලය දැමීමෙන් වළකින්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/tomato_mold.jpg',
    imageUrl2: 'assets/images/tomato_mold2.jpg',
  ),
  Pathology(
    title: 'Tomato Mosaic Virus',
    description:
        'The causing virus can persist in plant or root debris in dry soil for periods of over 2 years (1 month in most soils). Plants get contaminated through minor wounds in roots. The virus can spread via infested seeds, seedlings, weeds, and contaminated plant parts. Wind, rain, grasshoppers, small mammals, and birds can also transport the virus between fields. All plant parts can be affected during any growth stage. Infected leaves show a green and yellow mottling or a mosaic pattern due to this pathology and yield might be reduced significantly.',
    imageUrl: 'assets/images/tomato_mosaic1.jpg',
    orgControl:
        'Dry heating seeds at 70°C for 4 days or at 82-85°C for 24 hours will help to rid them of the virus. Alternatively, seeds can be soaked for 15 min in a solution of 100 g/l of trisodium phosphate, rinsed thoroughly with water and dried.',
    chemControl:
        'No effective chemical control identified. Please refer to organic control & preventive measures.',
    measures:
        '- Plant disease-free seeds if possible from a certified source.\n-  Do not consume tobacco products (such as cigarettes) around tomato plants.\n- Implement crop rotation with non-host crops.\n- Remove and burn any infected seedling or plant.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'තක්කාලි විචිත්ර වයිරසය',
    sinDescription:
        'වියළි පසෙහි ශාක හෝ මුල් සුන්බුන් තුළ ඇති කරන වෛරසය වසර 2 කට වැඩි කාලයක් (බොහෝ පසෙහි මාස 1) පැවතිය හැකිය. මුල්වල ඇති කුඩා තුවාල හරහා ශාක දූෂිත වේ. වෛරසය ආසාදිත බීජ, බීජ පැල, වල් පැලෑටි සහ දූෂිත ශාක කොටස් හරහා පැතිර යා හැක. සුළඟ, වර්ෂාව, පළගැටියන්, කුඩා ක්ෂීරපායින් සහ කුරුල්ලන් ද කෙත් අතර වෛරසය ප්රවාහනය කළ හැකිය. ඕනෑම වර්ධන අවධියකදී සියලුම ශාක කොටස් වලට බලපෑම් කළ හැකිය. ආසාදිත පත්‍ර මෙම ව්‍යාධි විද්‍යාව හේතුවෙන් කොළ සහ කහ පැහැති ලපයක් හෝ මොසෙයික් රටාවක් පෙන්නුම් කරන අතර අස්වැන්න සැලකිය යුතු ලෙස අඩු විය හැක.',
    sinOrgControl:
        'බීජ 70°C උෂ්ණත්වයකදී දින 4ක් හෝ 82-85°C උෂ්ණත්වයකදී පැය 24ක් වියළි රත් කිරීමෙන් බීජ වෛරසයෙන් මිදීමට උපකාරී වේ. විකල්පයක් ලෙස, ට්‍රයිසෝඩියම් පොස්පේට් ග්‍රෑම් 100 ක ද්‍රාවණයක බීජ විනාඩි 15 ක් පොඟවා ජලයෙන් හොඳින් සෝදා වියළා ගත හැකිය.',
    sinChemControl:
        'ඵලදායී රසායනික පාලනයක් හඳුනාගෙන නොමැත. කරුණාකර කාබනික පාලන සහ වැළැක්වීමේ පියවර වෙත යොමු වන්න.',
    sinMeasures:
        '- හැකි නම් සහතික කළ මූලාශ්‍රයකින් රෝග රහිත බීජ සිටුවන්න.\n- තක්කාලි පැල වටා දුම්කොළ නිෂ්පාදන (සිගරට් වැනි) පරිභෝජනය නොකරන්න.\n- සත්කාරක නොවන භෝග සමඟ බෝග භ්‍රමණය ක්‍රියාත්මක කරන්න.\n-ආසාදිත බීජ පැල හෝ පැල ඉවත් කර පුළුස්සා දමන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/tomato_mosaic.jpg',
    imageUrl2: 'assets/images/tomato_mosaic2.jpg',
  ),
  Pathology(
    title: 'Tomato Septoria Leaf Spot',
    description:
        'Septoria leaf spot occurs worldwide and is caused by the fungus Septoria lycopersici. Small, water-soaked grey circular spots with dark-brown margins appear on the undersides of older leaves. At later stages of the disease, the spots enlarge and coalesce, and black dots appear in their centers. Heavily infected leaves will turn slightly yellow, wither, and fall off. The defoliation leads to sun scalding of fruit.',
    imageUrl: 'assets/images/tomato_septoria1.jpg',
    orgControl:
        'Copper-based fungicides, such as Bordeaux mixture, copper hydroxide, copper sulfate, or copper oxychloride sulfate might help control the pathogen.',
    chemControl:
        'Fungicides containing maneb, mancozeb, chlorothalonil effectively control Septoria leaf spot.',
    measures:
        '- Plant disease-free seeds if possible from a certified source.\n-  Apply organic or plastic mulch to avoid transmission from soil.\n- Implement crop rotation with non-host crops.\n- Remove and burn any infected seedling or plant.\n- Improve air circulation.\n- Do not use sprinklers or other overhead irrigation.\n- Remove and destroy crop debris after harvest.',
    sinTitle: 'තක්කාලි සේප්ටෝරියා කොළ පුල්ලි රෝගය',
    sinDescription:
        'මෙම රෝගය ලොව පුරා ඇති අතර Septoria lycopersici නම් දිලීර නිසා ඇතිවේ. අඳුරු-දුඹුරු දාර සහිත කුඩා, ජලයෙන් පොඟවා ගත් අළු රවුම් ලප පැරණි පත්‍රවල යටි පැත්තේ දිස්වේ. රෝගයේ පසුකාලීන අවස්ථා වලදී, ලප විශාල වී එකලස් වන අතර ඒවායේ මධ්‍යයේ කළු තිත් දිස් වේ. දැඩි ලෙස ආසාදිත පත්‍ර තරමක් කහ පැහැයට හැරේ, වියළී ගොස් වැටේ. මල පිටවීම නිසා පලතුරු හිරු රශ්මියෙන් පිළිස්සී යයි.',
    sinOrgControl:
        'බෝඩෝ මිශ්‍රණය, තඹ හයිඩ්‍රොක්සයිඩ්, තඹ සල්ෆේට් හෝ තඹ ඔක්සික්ලෝරයිඩ් සල්ෆේට් වැනි තඹ මත පදනම් වූ දිලීර නාශක රෝග කාරකය පාලනය කිරීමට උපකාරී වේ.',
    sinChemControl:
        'Maneb, mancozeb, chlorothalonil අඩංගු දිලීර නාශක මෙම රෝගය ඵලදායී ලෙස පාලනය කරයි.',
    sinMeasures:
        '- හැකි නම් සහතික කළ මූලාශ්‍රයකින් රෝගවලින් තොර බීජ සිටුවන්න.\n- පසෙන් සම්ප්‍රේෂණය වීම වැළැක්වීම සඳහා කාබනික හෝ ප්ලාස්ටික් වසුන් යොදන්න.\n- සත්කාරක නොවන භෝග සමඟ බෝග මාරුව ක්‍රියාත්මක කරන්න.\n-ආසාදිත බීජ පැල සහ පැල ඉවත් කර පුළුස්සා දමන්න.\n- වායු සංසරණය වැඩි දියුණු කරන්න.\n- ඉසින හෝ වෙනත් උඩිස් වාරිමාර්ග භාවිතා නොකරන්න.\n- අස්වැන්නෙන් පසු බෝග සුන්බුන් ඉවත් කර විනාශ කරන්න.',
    imageUrl1: 'assets/images/tomato_septoria.jpg',
    imageUrl2: 'assets/images/tomato_septoria2.jpg',
  ),
];
