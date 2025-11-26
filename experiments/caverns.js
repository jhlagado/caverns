Nice, this is the fun bit. Let’s actually nail down the data model of CAVERNS in JavaScript so you’ve got something concrete to stare at and poke.

Below is a direct, literal-ish translation of the DATA / READ world:

The room graph (the 174–181 DATA) as a flat mapData array, exactly in the same order.

A helper getExit(room, dir) that mimics what the BASIC does with RESTORE 174 and READ I(O).

The 24 entity descriptions (monsters 1–6, objects 7–24) as [prefix, suffix] pairs.

The initial P array (positions of monsters/objects).

The direction keywords and the 16 verb keywords.

A BASIC-style search helper.


I’m not yet porting the whole spaghetti loop and all GOTOs here; this is the “all of that” configuration layer we’ve been analysing. Once this is solid, wiring the loop becomes much less insane.

// ==========================
// Core state and constants
// ==========================

// These are the same initial values as line 2 of the BASIC
let H = 11;
let D = 128;
let W = 0;
let G = 0;
let T = 0;
let E = 0;

// Directions as indices: 0=north, 1=south, 2=west, 3=east
const DIR_NORTH = 0;
const DIR_SOUTH = 1;
const DIR_WEST  = 2;
const DIR_EAST  = 3;

// ==========================
// Map data (lines 174–181)
// ==========================
//
// Flat array of 216 entries: 54 rooms × 4 directions.
// This is *exactly* the DATA from 174–181, in order.
// Tokens H, T, E, W, G, D are left symbolic and resolved
// at lookup time to the *current* values of those variables.

const mapData = [
  // chunk 0 (rooms 1–4)
  2, 0, 0, 0, 0, 0, 3, 4, 2, 5, 5, 0, 2, 5, 0, 9,
  // chunk 1 (rooms 5–8)
  0, 6, 3, 4, 5, 0, 7, 8, 0, 0, 128, 6, 0, 0, 6, 0,
  // chunk 2 (rooms 9–12)
  0, 10, 4, 0, 9, 'H', 4, 0, 10, 12, 128, 128, 'H', 13, 13, 0,
  // chunk 3 (rooms 13–16)
  12, 12, 14, 12, 15, 16, 0, 13, 0, 14, 0, 0, 14, 18, 0, 17,
  // chunk 4 (rooms 17–20)
  0, 0, 16, 0, 16, 0, 23, 0, 0, 0, 20, 0, 21, 23, 0, 'T',
  // chunk 5 (rooms 21–24)
  0, 24, 0, 20, 0, 23, 21, 16, 22, 0, 18, 18, 21, 26, 0, 18,
  // chunk 6 (rooms 25–28)
  0, 27, 24, 0, 24, 27, 29, 25, 18, 0, 0, 28, 0, 0, 27, 0,
  // chunk 7 (rooms 29–32)
  0, 33, 0, 26, 29, 31, 0, 0, 32, 0, 0, 0, 33, 30, 0, 0,
  // chunk 8 (rooms 33–36)
  0, 31, 34, 0, 0, 0, 0, 33, 0, 0, 0, 0, 39, 0, 35, 40,
  // chunk 9 (rooms 37–40)
  0, 35, 0, 'E', 'W', 0, 0, 'G', 0, 36, 38, 0, 45, 48, 36, 128,
  // chunk 10 (rooms 41–44)
  46, 43, 54, 42, 46, 43, 41, 43, 46, 38, 42, 44, 47, 47, 0, 47,
  // chunk 11 (rooms 45–48)
  0, 40, 0, 128, 47, 0, 47, 47, 0, 45, 46, 0, 40, 128, 0, 'D',
  // chunk 12 (rooms 49–52)
  0, 0, 48, 50, 0, 52, 49, 51, 0, 0, 50, 0, 50, 0, 53, 50,
  // chunk 13 (rooms 53–54)
  54, 0, 0, 52, 0, 53, 41, 0,
];

// Helper to resolve symbolic entries to current numeric values
function resolveMapToken(tok) {
  switch (tok) {
    case 'H': return H;
    case 'T': return T;
    case 'E': return E;
    case 'W': return W;
    case 'G': return G;
    case 'D': return D;
    default:  return tok; // normal number (room index, 0, or 128)
  }
}

/**
 * Get the destination from a room in a given direction.
 * @param {number} room   1-based room index (A in BASIC)
 * @param {number} dir    0=north,1=south,2=west,3=east  (Q in BASIC)
 * @returns {number} destination code: 0 = blocked, 128 = death, >0 = room
 */
function getExit(room, dir) {
  // BASIC does:
  // RESTORE 174
  // FOR N = 1 TO A
  //   FOR O = 0 TO 3: READ I(O): NEXT O
  // NEXT N
  // B = I(Q)
  //
  // That is equivalent to: index = (room-1)*4 + dir
  const index = (room - 1) * 4 + dir;
  const raw = mapData[index];
  return resolveMapToken(raw);
}

// ==========================
// Entity descriptions (182–187)
// ==========================
//
// 24 entities, 1-based index. Each is [prefix, suffix] corresponding
// to K0$,K1$ / H0$,H1$ in BASIC. Monsters are 1–6, objects are 7–24.

const entityDescriptions = [
  null, // dummy so we can stay 1-based

  ['n evil', ' wizard '],
  [' fiery', ' demon '],
  ['n axe wielding', ' troll '],
  [' fire breathing', ' dragon '],
  [' giant', ' bat '],
  ['n old and gnarled', ' dwarf '],

  [' gold', ' coin '],
  [' useful looking', ' compass '],
  [' home made', ' bomb '],
  [' blood red', ' ruby '],
  [' sparkling', ' diamond '],
  [' moon-like', ' pearl '],
  ['n interesting', ' stone '],
  [' diamond studded', ' ring '],
  [' magic', ' pendant '],
  [' most holy', ' grail '],
  [' mirror like', ' shield '],

  [' nondescript black', ' box '],
  ['n old an rusty', ' key '],
  [' double bladed', ' sword '],
  [' small', ' candle '],
  [' thin and tatty', ' rope '],
  [' red house', ' brick '],
  [' rusty ventilation', ' grill '],
];

// Small helper to mimic GOSUB 165 printing
function describeEntity(index) {
  const pair = entityDescriptions[index];
  if (!pair) return '';
  const [a, b] = pair;
  // BASIC prints: "a";H0$;H1$;", "
  return 'a' + a + b;
}

// ==========================
// Initial P array (line 2 + DATA 188)
// ==========================
//
// P is 1-based, sized 24. In BASIC:
//   DIM P(24)
//   RESTORE 188
//   FOR X=1 TO 24: READ P(X): NEXT X

const P = [
  null, // 0 unused
  36, 19, 10, 14, 17, 47, 8, 1, 51, 45, 22, 46,
  54, 19, 19, 19, 19, 0, 34, 7, 18, 15, 24, 38,
];

// By design:
//   P(1..6)  = monster locations (or -1 = carried, 0 = dead)
//   P(7..24) = object locations (or -1 = carried, 0 = destroyed)

// ==========================
// Direction and verb vocab (189–191)
// ==========================

const directionWords = [
  ' north ',
  ' south ',
  ' west ',
  ' east ',
];

// 10 primitive action words (190)
const verbWordsPrimary = [
  ' take ',
  ' put ',
  ' using ',
  ' with ',
  ' cut ',
  ' break ',
  ' unlock ',
  ' open ',
  ' kill ',
  ' attack ',
];

// 6 more verbs (191) for O = 11..16
const verbWordsSecondary = [
  ' light ',
  ' burn ',
  ' up ',
  ' down ',
  ' jump ',
  ' swim ',
];

// One consolidated list indexed 1..16 (to match O in BASIC)
const verbWords = [
  null,
  ...verbWordsPrimary,
  ...verbWordsSecondary,
];

// ==========================
// BASIC-style SEARCH helper
// ==========================
//
// In the original: SEARCH(A0$, pattern) > 0
// In JavaScript we just simulate returning 0 or (index+1)

function search(haystack, needle) {
  const idx = haystack.indexOf(needle);
  return idx >= 0 ? idx + 1 : 0;
}

// ==========================
// Tiny sanity checks
// ==========================

// Example: exit north from room 1 (should be room 2)
console.log('Room 1 north →', getExit(1, DIR_NORTH)); // expect 2

// Example: describe the first monster and first object
console.log('Monster 1:', describeEntity(1));  // "an evil wizard"
console.log('Object 7:', describeEntity(7));   // "a gold coin"

This is now a faithful JavaScript encoding of the “world config”:

Map: same layout and semantics as the DATA 174–181 block, including the weird H, T, E, W, G, D tokens that depend on variables.

Entities: all 24 description pairs, in order, split exactly as the BASIC READ expects.

State array P: initial locations for all monsters and objects.

Vocab: directions and verbs, with indexing that matches how Q and O are used.

SEARCH and describeEntity helpers that match the original SEARCH and GOSUB 165.


Next step — when you feel like it — we can wrap this in a proper state machine function (step(input) or similar) and then either:

keep it very close to the BASIC control flow (line numbers as states), or

factor it into saner pieces while keeping the data and behaviour identical.


But at least now the gnarly data tables are pinned down in a modern, readable form.
