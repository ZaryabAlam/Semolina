class SomaliEngWord {
  final int position;
  final String word;
  final String partOfSpeech;
  final List<String> definitions;

  SomaliEngWord(
    this.position, {
    required this.word,
    required this.partOfSpeech,
    required this.definitions,
  });
}

List<SomaliEngWord> words = [
  SomaliEngWord(1, word: 'a (a\')', partOfSpeech: 'Letter', definitions: [
    'The first letter of the Somali alphabet, representing a short vowel sound.'
  ]),
  SomaliEngWord(2, word: 'aa\'', partOfSpeech: 'Verb', definitions: [
    'To hit or threaten someone or something.',
    'To engage in fighting.'
  ]),
  SomaliEngWord(3,
      word: 'aa¹',
      partOfSpeech: 'Abbreviation',
      definitions: ['Refer to \'baa.\'']),
  SomaliEngWord(4,
      word: 'aa²',
      partOfSpeech: 'Noun',
      definitions: ['Refer to \'Aad.\'', 'Refer to \'aydin.\'']),
  SomaliEngWord(5,
      word: 'aa³',
      partOfSpeech: 'Expression',
      definitions: ['A sound expressing pain.']),
  SomaliEngWord(6, word: 'aabayeel¹', partOfSpeech: 'Noun', definitions: [
    'Respect or consideration given to someone.',
    'Refer to aabayeelid.'
  ]),
  SomaliEngWord(7,
      word: 'aabayeel²',
      partOfSpeech: 'Verb',
      definitions: ['To give respect or consideration to someone.']),
  SomaliEngWord(8,
      word: 'aabayeelid',
      partOfSpeech: 'Verb',
      definitions: ['See aabayeel². Refer to aabayeel¹ (2), aabeyeelid.']),
  SomaliEngWord(9,
      word: 'aabayn', partOfSpeech: 'Verb', definitions: ['See aabee.']),
  SomaliEngWord(10,
      word: 'aabbannimo', partOfSpeech: 'Noun', definitions: ['Fatherhood.']),
  SomaliEngWord(11,
      word: 'aabbayaal',
      partOfSpeech: 'Noun',
      definitions: ['See aabbe.', 'Ancestral fathers.']),
  SomaliEngWord(12, word: 'aabbe', partOfSpeech: 'Noun', definitions: [
    'A man who has fathered a child.',
    'Expression: "Father!"; "My son!" Refer to aabbo.'
  ]),
  SomaliEngWord(13,
      word: 'aabbo',
      partOfSpeech: 'Expression',
      definitions: ['Refer to aabbe.']),
  SomaliEngWord(14, word: 'aabbur¹', partOfSpeech: 'Noun', definitions: [
    'A small container for pouring, with a spout for attachment to larger containers like jugs and drums.'
  ]),
  SomaliEngWord(15,
      word: 'aabbur²',
      partOfSpeech: 'Verb',
      definitions: ['To attach a spout to a small container for pouring.']),
  SomaliEngWord(16, word: 'aabburan¹', partOfSpeech: 'Verb', definitions: [
    'The state of being equipped with a spout for pouring. Example: “The container is equipped with a spout.”'
  ]),
  SomaliEngWord(17, word: 'aabburan²', partOfSpeech: 'Adjective', definitions: [
    'Describing something equipped with a spout for pouring. Example: “The container has a spout.”'
  ]),
  SomaliEngWord(18,
      word: 'aabburid', partOfSpeech: 'Verb', definitions: ['See aabbur².']),
  SomaliEngWord(19,
      word: 'aabburmid', partOfSpeech: 'Verb', definitions: ['See aabburan¹.']),
  SomaliEngWord(20,
      word: 'aabburnaan',
      partOfSpeech: 'Noun',
      definitions: ['See aabburan². Refer to aabburnaansho.']),
  SomaliEngWord(21,
      word: 'aabburnaansho',
      partOfSpeech: 'Noun',
      definitions: ['Refer to aabburnaan.']),
  SomaliEngWord(22, word: 'aabee', partOfSpeech: 'Verb', definitions: [
    'To give respect or consideration.',
    'To coat a container with resin to prevent leakage of water, milk, etc.'
  ]),
  SomaliEngWord(23,
      word: 'aabeyeelid',
      partOfSpeech: 'Verb',
      definitions: ['Refer to aabayeelid.']),
  SomaliEngWord(24, word: 'aabi', partOfSpeech: 'Noun', definitions: [
    'Gardarro is large and full of arrogance, and it needs to be demonstrated to everyone.'
  ]),
  SomaliEngWord(25, word: 'aabiweyrax', partOfSpeech: 'Noun', definitions: [
    'A stubborn cause, taken up in battle, with abundant bravery.'
  ]),
  SomaliEngWord(26, word: 'aabo', partOfSpeech: 'Noun', definitions: [
    'A person of kindness, compassion, and admirable qualities, treating others with respect.'
  ]),
  SomaliEngWord(27, word: 'aabonimo', partOfSpeech: 'Noun', definitions: [
    'The position of a government or another societal entity expressing their commitment to making decisions that benefit the people for whom they are responsible.'
  ]),
  SomaliEngWord(28, word: 'aabyoo', partOfSpeech: 'Noun', definitions: [
    'Something that is large and full of arrogance, and it needs to be demonstrated to everyone.'
  ]),
  SomaliEngWord(29,
      word: 'aabyood', partOfSpeech: 'Noun', definitions: ['Look at aabyoo.']),
  SomaliEngWord(30,
      word: 'aad',
      partOfSpeech: 'Personal Pronoun',
      definitions: [
        'Refers to the second person, indicating a person or thing that is not present but is being addressed. For example, "The person you talked to is your brother." ld aa², aydin.'
      ]),
  SomaliEngWord(31,
      word: 'ąad¹',
      partOfSpeech: 'Noun',
      definitions: ['Unity in laughter: unity in laughter. ld aadid.']),
  SomaliEngWord(32, word: 'ąad²', partOfSpeech: 'Noun', definitions: [
    'Unity of two places or things. Many, abundant. A little: ld aayar.'
  ]),
  SomaliEngWord(33, word: 'ąad³', partOfSpeech: 'Noun', definitions: [
    'A place of rest or relaxation. In general: adding something else. In addition: preparing food, etc., for someone. In addition: combining their appearance with something else. In addition: a place where you assist others. Example: "Cali\'s car arrived in Kismayo."'
  ]),
  SomaliEngWord(34, word: 'aadaab', partOfSpeech: 'Noun', definitions: [
    'Good manners and a good culture that someone possesses. Good manners and culture that someone has.'
  ]),
  SomaliEngWord(35, word: 'aadaamid', partOfSpeech: 'Noun', definitions: [
    'See aadaan². ld aadaan¹, aaddamid, aaddaan¹, eedaamid, eedaan¹.'
  ]),
  SomaliEngWord(36, word: 'aadaan¹', partOfSpeech: 'Noun', definitions: [
    'A long informative announcement that the muezzin announces to Muslims at the time of prayer. A long break in eating that one does when fasting. ld aadaamid, aaddan¹, eedaan¹.'
  ]),
];
