// The chorus
const badThings = [
  'give you up',
  'let you down',
  'run around and desert you',
  'make you cry',
  'say goodbye',
  'tell a lie and hurt you',
];

function neverGonna() {
  return badThings.map((thing) => `Never gonna ${thing}`);
}

neverGonna();
