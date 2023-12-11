import { moduleForModel, test } from 'ember-qunit';

moduleForModel('i-i-s-sonya5-расход-денег', 'Unit | Model | i-i-s-sonya5-расход-денег', {
  // Specify the other units that are required for this test.
  needs: [
    'model:i-i-s-sonya5-клиенты',
    'model:i-i-s-sonya5-материалы',
    'model:i-i-s-sonya5-поставщики',
    'model:i-i-s-sonya5-приход-денег',
    'model:i-i-s-sonya5-расход-денег',
    'model:i-i-s-sonya5-регистр',
    'model:i-i-s-sonya5-состав-материалы',
    'model:i-i-s-sonya5-состав-товара',
    'model:i-i-s-sonya5-состав-товары',
    'model:i-i-s-sonya5-состав-услуги',
    'model:i-i-s-sonya5-товары',
    'model:i-i-s-sonya5-услуги',
    'validator:ds-error',
    'validator:presence',
    'validator:number',
    'validator:date',
    'validator:belongs-to',
    'validator:has-many',
    'service:syncer',
  ],
});

test('it exists', function(assert) {
  let model = this.subject();

  // let store = this.store();
  assert.ok(!!model);
});
