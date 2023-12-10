class SomaliSomaliWord {
  final int position;
  final String word;
  final String partOfSpeech;
  final List<String> definitions;

  SomaliSomaliWord(
    this.position, {
    required this.word,
    required this.partOfSpeech,
    required this.definitions,
  });
}

List<SomaliSomaliWord> words = [
  SomaliSomaliWord(1, word: 'a (a\')', partOfSpeech: 'm.dh', definitions: [
    'Xarafka koowaad ee xuruufta af soomaaliga, ahna shaqal gaaban.'
  ]),
  SomaliSomaliWord(2, word: 'aa\'', partOfSpeech: 'f.g1', definitions: [
    '-\'ay, -\'day',
    '1. Cid ama wax garaacid, u cagajuglayn.',
    '2. Dagaallamid.'
  ]),
  SomaliSomaliWord(3,
      word: 'aa¹', partOfSpeech: 'qr.dd', definitions: ['ld baa.']),
  SomaliSomaliWord(4,
      word: 'aa²',
      partOfSpeech: 'mu.dhm.y',
      definitions: ['1. ld Aad.', '2. ld aydin.']),
  SomaliSomaliWord(5,
      word: 'aa³',
      partOfSpeech: 'e.d',
      definitions: ['Cod lagu muujiyo xanuunka.']),
  SomaliSomaliWord(6, word: 'aabayeel¹', partOfSpeech: 'm.l', definitions: [
    '1. A. ah: qaddarinta ama tixgelinta cid la siiyo.',
    '2. ld aabayeelid.'
  ]),
  SomaliSomaliWord(7, word: 'aabayeel²', partOfSpeech: 'f.mg1', definitions: [
    '-yeelay, -yeshay',
    'U a.: qaddarin ama tixgelin cid siin.'
  ]),
  SomaliSomaliWord(8,
      word: 'aabayeelid',
      partOfSpeech: 'm.f.dh',
      definitions: ['eeg aabayeel².', 'ld aabayeel¹ (2), aabeyeelid.']),
  SomaliSomaliWord(9,
      word: 'aabayn', partOfSpeech: 'm.f.dh', definitions: ['eeg aabee.']),
  SomaliSomaliWord(10,
      word: 'aabbannimo',
      partOfSpeech: 'm.dh',
      definitions: ['Aabbe ahaansho.']),
  SomaliSomaliWord(11, word: 'aabbayaal', partOfSpeech: 'm.l/dh', definitions: [
    '1. eeg aabbe.',
    '2. Awooweyaashii hore.',
    'ld aabbeyaal.'
  ]),
  SomaliSomaliWord(12, word: 'aabbe', partOfSpeech: 'm.l', definitions: [
    '-bayaal, m.l/m.dh',
    '1. Nin ubad dhalay.',
    '2. (u.j) Aabbow!; wiilkaygiyow!',
    'ld aabbo.'
  ]),
  SomaliSomaliWord(13,
      word: 'aabbo', partOfSpeech: 'u.j', definitions: ['ld aabbe.']),
  SomaliSomaliWord(14, word: 'aabbur¹', partOfSpeech: 'm.l', definitions: [
    '-rro, m.dh',
    'Weel yar, wax lagu shuban karo, oo dhiilaha, haamaha iwm afka lagaga xiro.'
  ]),
  SomaliSomaliWord(15, word: 'aabbur²', partOfSpeech: 'f.g1', definitions: [
    '-ray, -rtay',
    'Dhiil, haan iwm weel yar oo wax lagu shuban karo afka kaga xirid.'
  ]),
  SomaliSomaliWord(16, word: 'aabburan¹', partOfSpeech: 'f.mg1', definitions: [
    '-rmay., -rantay, -rmi',
    'Dhiil, haan iwm wax la aabburay noqosho.',
    'Tus. “Weelku waa aabburmay”.'
  ]),
  SomaliSomaliWord(17, word: 'aabburan²', partOfSpeech: 'f.mg4', definitions: [
    '-rnaa, -rnayd',
    'Dhiil, haan iwm wax la aabburay ahaansho.',
    'Tus. “Weelku waa aabburanyahay”.'
  ]),
  SomaliSomaliWord(18,
      word: 'aabburid', partOfSpeech: 'm.f.dh', definitions: ['eeg aabbur².']),
  SomaliSomaliWord(19,
      word: 'aabburmid',
      partOfSpeech: 'm.f.dh',
      definitions: ['eeg aabburan¹.']),
  SomaliSomaliWord(20,
      word: 'aabburnaan',
      partOfSpeech: 'm.f.dh',
      definitions: ['eeg aabburan².', 'ld aabburnaansho.']),
  SomaliSomaliWord(21,
      word: 'aabburnaansho',
      partOfSpeech: 'm.l/dh',
      definitions: ['ld aabburnaan.']),
  SomaliSomaliWord(22, word: 'aabee', partOfSpeech: 'f.g2', definitions: [
    '-beeyay, -beysay',
    '1. Cid qaddarin ama tixgelin siin.',
    '2. Weel asal iyo xaydh marin, si uusan biyaha, caanaha iwm u habin.'
  ]),
  SomaliSomaliWord(23,
      word: 'aabeyeelid',
      partOfSpeech: 'm.f.dh',
      definitions: ['ld aabayeelid.']),
  SomaliSomaliWord(24, word: 'aabi', partOfSpeech: 'm.l', definitions: [
    'Gardarro isla weyni iyo kibir ku jiro oo cid lagula muujiyo.'
  ]),
  SomaliSomaliWord(25,
      word: 'aabiweyrax',
      partOfSpeech: 'm.l',
      definitions: ['Sabab la\'aan cid dagaal ku qaadid, weyrax kulul.']),
  SomaliSomaliWord(26, word: 'aabo', partOfSpeech: 'm.l', definitions: [
    'Dareen naxariis, rabitaan iyo xurmayn leh oo qof qof kale u hayo.'
  ]),
  SomaliSomaliWord(27, word: 'aabonimo', partOfSpeech: 'm.dh', definitions: [
    '(siyaa.) Mowqifka dawlad, ama mujtamac kale ku muujinayaan in ay go\'aan kasta u sameeyaan dadka ay mas\'uulka ka yihiin.'
  ]),
  SomaliSomaliWord(28, word: 'aabyoo', partOfSpeech: 'f.mg3', definitions: [
    '-ooday, -ootay',
    'Ku aa.: cid xumaan aanay mutaysan kula kicid.'
  ]),
  SomaliSomaliWord(29,
      word: 'aabyood', partOfSpeech: 'm.f.l', definitions: ['eeg aabyoo.']),
  SomaliSomaliWord(30, word: 'aad', partOfSpeech: 'mu.dhm.y', definitions: [
    'Magacuyaal tilmaama qofka labaad ee kelida ah (lala hadlaha ama wax loo qoraha).',
    '“Ninka aad la hadashay waa walaalkay”.',
    'ld aa², aydin.'
  ]),
  SomaliSomaliWord(31, word: 'ąad¹', partOfSpeech: 'm.l', definitions: [
    '-dyo, m.dh',
    '1. Isku ąa. cayaar: isku beegnaan cayaar.',
    '2. ld aadid.'
  ]),
  SomaliSomaliWord(32, word: 'ąad²', partOfSpeech: 'm.dh.fk', definitions: [
    '-dyo, m.l',
    '1. Isku beegnaanta laba meelood ama shay.',
    '2. Badan, si daran.',
    '3. A. yar: ld aayar.'
  ]),
  SomaliSomaliWord(33, word: 'ąad³', partOfSpeech: 'f.g/mg1', definitions: [
    '-day, -dday',
    '1. (f.g) Meel u socdaalid ama u kicid.',
    '2. (f.mg) Ku a.: wax wax kale u dhigmid.',
    '3. (f.mg) Ku ąa.: cunto cabid iwm cid ku filnaan.',
    '4. (f.mg) Ku ąa.: wax muuqaalkooda wax kale isku gudbid.',
    '5. (f.mg) Ku ąa.: meel aadisteeda wax u adeegsasho.',
    'Tus. “Cali baabuur buu Kismaayo ku aaday”.'
  ]),
  SomaliSomaliWord(34, word: 'aadaab', partOfSpeech: 'm.dh', definitions: [
    '1. Anshax iyo dhaqan wanaagsan oo cidi leedahay.',
    '2. Anshax iyo dhaqan ay cidi leedahay.'
  ]),
  SomaliSomaliWord(35, word: 'aadaamid', partOfSpeech: 'm.f.dh', definitions: [
    'eeg aadaan².',
    'ld aadaan¹, aaddamid, aaddaan¹, eedaamid, eedaan¹.'
  ]),
  SomaliSomaliWord(36, word: 'aadaan¹', partOfSpeech: 'm.l', definitions: [
    '1. Ogeysiin cod dheer leh oo mu\'addinku ugu yeero muslimiinta waqtiyada salaadda.',
    '2. Ci\' dheer oo neef riyo ahi uu sameeyo marka uu xanuunsado.',
    'ld aadaamid, aaddan¹, eedaan¹.'
  ]),
];
