import Mixin from '@ember/object/mixin';
import $ from 'jquery';
import DS from 'ember-data';
import { validator } from 'ember-cp-validations';
import { attr, belongsTo, hasMany } from 'ember-flexberry-data/utils/attributes';

export let Model = Mixin.create({
  iD: DS.attr('number'),
  дата: DS.attr('date'),
  сумма: DS.attr('number'),
  типПрихода: DS.attr('i-i-s-sonya5-тип-прихода'),
  клиенты: DS.belongsTo('i-i-s-sonya5-клиенты', { inverse: null, async: false }),
  составУслуги: DS.hasMany('i-i-s-sonya5-состав-услуги', { inverse: 'приходДенег', async: false }),
  составТовары: DS.hasMany('i-i-s-sonya5-состав-товары', { inverse: 'приходДенег', async: false })
});

export let ValidationRules = {
  iD: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.iD.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true, integer: true }),
    ],
  },
  дата: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.дата.__caption__',
    validators: [
      validator('ds-error'),
      validator('date'),
    ],
  },
  сумма: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.сумма.__caption__',
    validators: [
      validator('ds-error'),
      validator('number', { allowString: true, allowBlank: true, integer: true }),
    ],
  },
  типПрихода: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.типПрихода.__caption__',
    validators: [
      validator('ds-error'),
    ],
  },
  клиенты: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.клиенты.__caption__',
    validators: [
      validator('ds-error'),
      validator('presence', true),
    ],
  },
  составУслуги: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.составУслуги.__caption__',
    validators: [
      validator('ds-error'),
      validator('has-many'),
    ],
  },
  составТовары: {
    descriptionKey: 'models.i-i-s-sonya5-приход-денег.validations.составТовары.__caption__',
    validators: [
      validator('ds-error'),
      validator('has-many'),
    ],
  },
};

export let defineProjections = function (modelClass) {
  modelClass.defineProjection('ПриходДенегE', 'i-i-s-sonya5-приход-денег', {
    iD: attr('ID', { index: 0 }),
    дата: attr('Дата', { index: 1 }),
    типПрихода: attr('Тип прихода', { index: 2 }),
    сумма: attr('Сумма', { index: 3 }),
    составУслуги: hasMany('i-i-s-sonya5-состав-услуги', 'Состав услуги', {
      количество: attr('Количество', { index: 0 })
    }),
    составТовары: hasMany('i-i-s-sonya5-состав-товары', 'Состав товары', {
      количество: attr('Количество', { index: 0 })
    })
  });

  modelClass.defineProjection('ПриходДенегL', 'i-i-s-sonya5-приход-денег', {
    iD: attr('ID', { index: 0 }),
    дата: attr('Дата', { index: 1 }),
    типПрихода: attr('Тип прихода', { index: 2 }),
    сумма: attr('Сумма', { index: 3 })
  });
};
