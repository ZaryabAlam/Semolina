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
  SomaliEngWord(0, word: 'a (a\')', partOfSpeech: 'Letter', definitions: [
    'The first letter of the Somali alphabet, representing a short vowel sound.'
  ]),
  SomaliEngWord(1, word: 'aa\'', partOfSpeech: 'Verb', definitions: [
    'To hit or threaten someone or something.',
    'To engage in fighting.'
  ]),
  SomaliEngWord(2,
      word: 'aa¹',
      partOfSpeech: 'Abbreviation',
      definitions: ['Refer to \'baa.\'']),
  SomaliEngWord(3,
      word: 'aa²',
      partOfSpeech: 'Noun',
      definitions: ['Refer to \'Aad.\'', 'Refer to \'aydin.\'']),
  SomaliEngWord(4,
      word: 'aa³',
      partOfSpeech: 'Expression',
      definitions: ['A sound expressing pain.']),
  SomaliEngWord(5, word: 'aabayeel¹', partOfSpeech: 'Noun', definitions: [
    'Respect or consideration given to someone.',
    'Refer to aabayeelid.'
  ]),
  SomaliEngWord(6,
      word: 'aabayeel²',
      partOfSpeech: 'Verb',
      definitions: ['To give respect or consideration to someone.']),
  SomaliEngWord(7,
      word: 'aabayeelid',
      partOfSpeech: 'Verb',
      definitions: ['See aabayeel². Refer to aabayeel¹ (2), aabeyeelid.']),
  SomaliEngWord(8,
      word: 'aabayn', partOfSpeech: 'Verb', definitions: ['See aabee.']),
  SomaliEngWord(9,
      word: 'aabbannimo', partOfSpeech: 'Noun', definitions: ['Fatherhood.']),
  SomaliEngWord(10,
      word: 'aabbayaal',
      partOfSpeech: 'Noun',
      definitions: ['See aabbe.', 'Ancestral fathers.']),
  SomaliEngWord(11, word: 'aabbe', partOfSpeech: 'Noun', definitions: [
    'A man who has fathered a child.',
    'Expression: "Father!"; "My son!" Refer to aabbo.'
  ]),
  SomaliEngWord(12,
      word: 'aabbo',
      partOfSpeech: 'Expression',
      definitions: ['Refer to aabbe.']),
  SomaliEngWord(13, word: 'aabbur¹', partOfSpeech: 'Noun', definitions: [
    'A small container for pouring, with a spout for attachment to larger containers like jugs and drums.'
  ]),
  SomaliEngWord(14,
      word: 'aabbur²',
      partOfSpeech: 'Verb',
      definitions: ['To attach a spout to a small container for pouring.']),
  SomaliEngWord(15, word: 'aabburan¹', partOfSpeech: 'Verb', definitions: [
    'The state of being equipped with a spout for pouring. Example: “The container is equipped with a spout.”'
  ]),
  SomaliEngWord(16, word: 'aabburan²', partOfSpeech: 'Adjective', definitions: [
    'Describing something equipped with a spout for pouring. Example: “The container has a spout.”'
  ]),
  SomaliEngWord(17,
      word: 'aabburid', partOfSpeech: 'Verb', definitions: ['See aabbur².']),
  SomaliEngWord(18,
      word: 'aabburmid', partOfSpeech: 'Verb', definitions: ['See aabburan¹.']),
  SomaliEngWord(19,
      word: 'aabburnaan',
      partOfSpeech: 'Noun',
      definitions: ['See aabburan². Refer to aabburnaansho.']),
  SomaliEngWord(20,
      word: 'aabburnaansho',
      partOfSpeech: 'Noun',
      definitions: ['Refer to aabburnaan.']),
  SomaliEngWord(21, word: 'aabee', partOfSpeech: 'Verb', definitions: [
    'To give respect or consideration.',
    'To coat a container with resin to prevent leakage of water, milk, etc.'
  ]),
  SomaliEngWord(22,
      word: 'aabeyeelid',
      partOfSpeech: 'Verb',
      definitions: ['Refer to aabayeelid.']),
];
