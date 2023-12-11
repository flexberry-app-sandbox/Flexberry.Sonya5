import $ from 'jquery';
import EmberFlexberryTranslations from 'ember-flexberry/locales/en/translations';

import IISSonya5КлиентыLForm from './forms/i-i-s-sonya5-клиенты-l';
import IISSonya5МатериалыLForm from './forms/i-i-s-sonya5-материалы-l';
import IISSonya5ПоставщикиLForm from './forms/i-i-s-sonya5-поставщики-l';
import IISSonya5ПриходДенегLForm from './forms/i-i-s-sonya5-приход-денег-l';
import IISSonya5РасходДенегLForm from './forms/i-i-s-sonya5-расход-денег-l';
import IISSonya5РегистрLForm from './forms/i-i-s-sonya5-регистр-l';
import IISSonya5ТоварыLForm from './forms/i-i-s-sonya5-товары-l';
import IISSonya5УслугиLForm from './forms/i-i-s-sonya5-услуги-l';
import IISSonya5КлиентыEForm from './forms/i-i-s-sonya5-клиенты-e';
import IISSonya5МатериалыEForm from './forms/i-i-s-sonya5-материалы-e';
import IISSonya5ПоставщикиEForm from './forms/i-i-s-sonya5-поставщики-e';
import IISSonya5ПриходДенегEForm from './forms/i-i-s-sonya5-приход-денег-e';
import IISSonya5РасходДенегEForm from './forms/i-i-s-sonya5-расход-денег-e';
import IISSonya5РегистрEForm from './forms/i-i-s-sonya5-регистр-e';
import IISSonya5ТоварыEForm from './forms/i-i-s-sonya5-товары-e';
import IISSonya5УслугиEForm from './forms/i-i-s-sonya5-услуги-e';
import IISSonya5КлиентыModel from './models/i-i-s-sonya5-клиенты';
import IISSonya5МатериалыModel from './models/i-i-s-sonya5-материалы';
import IISSonya5ПоставщикиModel from './models/i-i-s-sonya5-поставщики';
import IISSonya5ПриходДенегModel from './models/i-i-s-sonya5-приход-денег';
import IISSonya5РасходДенегModel from './models/i-i-s-sonya5-расход-денег';
import IISSonya5РегистрModel from './models/i-i-s-sonya5-регистр';
import IISSonya5СоставМатериалыModel from './models/i-i-s-sonya5-состав-материалы';
import IISSonya5СоставТовараModel from './models/i-i-s-sonya5-состав-товара';
import IISSonya5СоставТоварыModel from './models/i-i-s-sonya5-состав-товары';
import IISSonya5СоставУслугиModel from './models/i-i-s-sonya5-состав-услуги';
import IISSonya5ТоварыModel from './models/i-i-s-sonya5-товары';
import IISSonya5УслугиModel from './models/i-i-s-sonya5-услуги';

const translations = {};
$.extend(true, translations, EmberFlexberryTranslations);

$.extend(true, translations, {
  models: {
    'i-i-s-sonya5-клиенты': IISSonya5КлиентыModel,
    'i-i-s-sonya5-материалы': IISSonya5МатериалыModel,
    'i-i-s-sonya5-поставщики': IISSonya5ПоставщикиModel,
    'i-i-s-sonya5-приход-денег': IISSonya5ПриходДенегModel,
    'i-i-s-sonya5-расход-денег': IISSonya5РасходДенегModel,
    'i-i-s-sonya5-регистр': IISSonya5РегистрModel,
    'i-i-s-sonya5-состав-материалы': IISSonya5СоставМатериалыModel,
    'i-i-s-sonya5-состав-товара': IISSonya5СоставТовараModel,
    'i-i-s-sonya5-состав-товары': IISSonya5СоставТоварыModel,
    'i-i-s-sonya5-состав-услуги': IISSonya5СоставУслугиModel,
    'i-i-s-sonya5-товары': IISSonya5ТоварыModel,
    'i-i-s-sonya5-услуги': IISSonya5УслугиModel
  },

  'application-name': 'Sonya5',

  forms: {
    loading: {
      'spinner-caption': 'Loading stuff, please wait for a moment...'
    },
    index: {
      greeting: 'Welcome to ember-flexberry test stand!'
    },

    application: {
      header: {
        menu: {
          'sitemap-button': {
            title: 'Menu'
          },
          'user-settings-service-checkbox': {
            caption: 'Use service to save user settings'
          },
          'show-menu': {
            caption: 'Show menu'
          },
          'hide-menu': {
            caption: 'Hide menu'
          },
          'language-dropdown': {
            caption: 'Application language',
            placeholder: 'Choose language'
          }
        },
        login: {
          caption: 'Login'
        },
        logout: {
          caption: 'Logout'
        }
      },

      footer: {
        'application-name': 'Sonya5',
        'application-version': {
          caption: 'Addon version {{version}}',
          title: 'It is version of ember-flexberry addon, which uses in this dummy application ' +
          '(npm version + commit sha). ' +
          'Click to open commit on GitHub.'
        }
      },

      sitemap: {
        'application-name': {
          caption: 'Sonya5',
          title: 'Sonya5'
        },
        'application-version': {
          caption: 'Addon version {{version}}',
          title: 'It is version of ember-flexberry addon, which uses in this dummy application ' +
          '(npm version + commit sha). ' +
          'Click to open commit on GitHub.'
        },
        index: {
          caption: 'Home',
          title: ''
        },
        sonya5: {
          caption: 'Sonya5',
          title: 'Sonya5',
          'i-i-s-sonya5-клиенты-l': {
            caption: 'Клиенты',
            title: ''
          },
          'i-i-s-sonya5-поставщики-l': {
            caption: 'Поставщики',
            title: ''
          },
          'i-i-s-sonya5-регистр-l': {
            caption: 'Регистр',
            title: ''
          },
          'i-i-s-sonya5-товары-l': {
            caption: 'Товары',
            title: ''
          },
          'i-i-s-sonya5-приход-денег-l': {
            caption: 'Приход денег',
            title: ''
          },
          'i-i-s-sonya5-услуги-l': {
            caption: 'Услуги',
            title: ''
          },
          'i-i-s-sonya5-материалы-l': {
            caption: 'Материалы',
            title: ''
          },
          'i-i-s-sonya5-расход-денег-l': {
            caption: 'Расход денег',
            title: ''
          }
        }
      }
    },

    'edit-form': {
      'save-success-message-caption': 'Save operation succeed',
      'save-success-message': 'Object saved',
      'save-error-message-caption': 'Save operation failed',
      'delete-success-message-caption': 'Delete operation succeed',
      'delete-success-message': 'Object deleted',
      'delete-error-message-caption': 'Delete operation failed'
    },
    'i-i-s-sonya5-клиенты-l': IISSonya5КлиентыLForm,
    'i-i-s-sonya5-материалы-l': IISSonya5МатериалыLForm,
    'i-i-s-sonya5-поставщики-l': IISSonya5ПоставщикиLForm,
    'i-i-s-sonya5-приход-денег-l': IISSonya5ПриходДенегLForm,
    'i-i-s-sonya5-расход-денег-l': IISSonya5РасходДенегLForm,
    'i-i-s-sonya5-регистр-l': IISSonya5РегистрLForm,
    'i-i-s-sonya5-товары-l': IISSonya5ТоварыLForm,
    'i-i-s-sonya5-услуги-l': IISSonya5УслугиLForm,
    'i-i-s-sonya5-клиенты-e': IISSonya5КлиентыEForm,
    'i-i-s-sonya5-материалы-e': IISSonya5МатериалыEForm,
    'i-i-s-sonya5-поставщики-e': IISSonya5ПоставщикиEForm,
    'i-i-s-sonya5-приход-денег-e': IISSonya5ПриходДенегEForm,
    'i-i-s-sonya5-расход-денег-e': IISSonya5РасходДенегEForm,
    'i-i-s-sonya5-регистр-e': IISSonya5РегистрEForm,
    'i-i-s-sonya5-товары-e': IISSonya5ТоварыEForm,
    'i-i-s-sonya5-услуги-e': IISSonya5УслугиEForm
  },

});

export default translations;
