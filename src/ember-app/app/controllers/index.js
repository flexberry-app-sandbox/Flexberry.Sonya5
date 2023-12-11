import Controller from '@ember/controller';
import { computed } from '@ember/object';

export default Controller.extend({
  sitemap: computed('i18n.locale', function () {
    let i18n = this.get('i18n');

    return {
      nodes: [
        {
          link: 'index',
          icon: 'home',
          caption: i18n.t('forms.application.sitemap.index.caption'),
          title: i18n.t('forms.application.sitemap.index.title'),
          children: null
        }, {
          link: null,
          icon: 'list',
          caption: i18n.t('forms.application.sitemap.sonya5.caption'),
          title: i18n.t('forms.application.sitemap.sonya5.title'),
          children: [{
            link: 'i-i-s-sonya5-клиенты-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-клиенты-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-клиенты-l.title'),
            icon: 'file',
            children: null
          }, {
            link: 'i-i-s-sonya5-поставщики-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-поставщики-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-поставщики-l.title'),
            children: null
          }, {
            link: 'i-i-s-sonya5-регистр-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-регистр-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-регистр-l.title'),
            icon: 'tasks',
            children: null
          }, {
            link: 'i-i-s-sonya5-товары-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-товары-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-товары-l.title'),
            icon: 'file',
            children: null
          }, {
            link: 'i-i-s-sonya5-приход-денег-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-приход-денег-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-приход-денег-l.title'),
            icon: 'paperclip',
            children: null
          }, {
            link: 'i-i-s-sonya5-услуги-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-услуги-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-услуги-l.title'),
            icon: 'building',
            children: null
          }, {
            link: 'i-i-s-sonya5-материалы-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-материалы-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-материалы-l.title'),
            icon: 'folder open',
            children: null
          }, {
            link: 'i-i-s-sonya5-расход-денег-l',
            caption: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-расход-денег-l.caption'),
            title: i18n.t('forms.application.sitemap.sonya5.i-i-s-sonya5-расход-денег-l.title'),
            children: null
          }]
        }
      ]
    };
  }),
})