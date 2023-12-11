import Mixin from '@ember/object/mixin';
import $ from 'jquery';
import DS from 'ember-data';
import { validator } from 'ember-cp-validations';
import { attr, belongsTo, hasMany } from 'ember-flexberry-data/utils/attributes';

export let Model = Mixin.create({
  iD: DS.attr('number'),
  приходДенег: DS.belongsTo('i-i-s-sonya5-приход-денег', { inverse: null, async: false }),
  расходДенег: DS.belongsTo('i-i-s-sonya5-расход-денег', { inverse: null, async: false })
});

export let ValidationRules = {
  iD: {
    descriptionKey: 'models.i-i-s-sonya5-регистр.validations.iD.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true, integer: true }),
    ],
  },
  приходДенег: {
    descriptionKey: 'models.i-i-s-sonya5-регистр.validations.приходДенег.__caption__',
    validators: [
      validator('ds-error'),
      validator('presence', true),
    ],
  },
  расходДенег: {
    descriptionKey: 'models.i-i-s-sonya5-регистр.validations.расходДенег.__caption__',
    validators: [
      validator('ds-error'),
      validator('presence', true),
    ],
  },
};

export let defineProjections = function (modelClass) {
  modelClass.defineProjection('РегистрE', 'i-i-s-sonya5-регистр', {
    iD: attr('ID', { index: 0 })
  });

  modelClass.defineProjection('РегистрL', 'i-i-s-sonya5-регистр', {
    iD: attr('ID', { index: 0 })
  });
};
