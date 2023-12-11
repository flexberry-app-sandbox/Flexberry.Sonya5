import { moduleForModel, test } from 'ember-qunit';

moduleForModel('i-i-s-sonya5-услуги', 'Unit | Serializer | i-i-s-sonya5-услуги', {
  // Specify the other units that are required for this test.
  needs: [
    'serializer:i-i-s-sonya5-услуги',
    'service:syncer',
    'transform:file',
    'transform:decimal',
    'transform:guid',

    'transform:i-i-s-sonya5-банк',
    'transform:i-i-s-sonya5-единицы',
    'transform:i-i-s-sonya5-тип-прихода',

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
  ],
});

// Replace this with your real tests.
test('it serializes records', function(assert) {
  let record = this.subject();

  let serializedRecord = record.serialize();

  assert.ok(serializedRecord);
});
