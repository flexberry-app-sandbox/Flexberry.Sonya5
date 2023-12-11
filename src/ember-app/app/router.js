import EmberRouter from '@ember/routing/router';
import config from './config/environment';

const Router = EmberRouter.extend({
  location: config.locationType
});

Router.map(function () {
  this.route('i-i-s-sonya5-клиенты-l');
  this.route('i-i-s-sonya5-клиенты-e',
  { path: 'i-i-s-sonya5-клиенты-e/:id' });
  this.route('i-i-s-sonya5-клиенты-e.new',
  { path: 'i-i-s-sonya5-клиенты-e/new' });
  this.route('i-i-s-sonya5-материалы-l');
  this.route('i-i-s-sonya5-материалы-e',
  { path: 'i-i-s-sonya5-материалы-e/:id' });
  this.route('i-i-s-sonya5-материалы-e.new',
  { path: 'i-i-s-sonya5-материалы-e/new' });
  this.route('i-i-s-sonya5-поставщики-l');
  this.route('i-i-s-sonya5-поставщики-e',
  { path: 'i-i-s-sonya5-поставщики-e/:id' });
  this.route('i-i-s-sonya5-поставщики-e.new',
  { path: 'i-i-s-sonya5-поставщики-e/new' });
  this.route('i-i-s-sonya5-приход-денег-l');
  this.route('i-i-s-sonya5-приход-денег-e',
  { path: 'i-i-s-sonya5-приход-денег-e/:id' });
  this.route('i-i-s-sonya5-приход-денег-e.new',
  { path: 'i-i-s-sonya5-приход-денег-e/new' });
  this.route('i-i-s-sonya5-расход-денег-l');
  this.route('i-i-s-sonya5-расход-денег-e',
  { path: 'i-i-s-sonya5-расход-денег-e/:id' });
  this.route('i-i-s-sonya5-расход-денег-e.new',
  { path: 'i-i-s-sonya5-расход-денег-e/new' });
  this.route('i-i-s-sonya5-регистр-l');
  this.route('i-i-s-sonya5-регистр-e',
  { path: 'i-i-s-sonya5-регистр-e/:id' });
  this.route('i-i-s-sonya5-регистр-e.new',
  { path: 'i-i-s-sonya5-регистр-e/new' });
  this.route('i-i-s-sonya5-товары-l');
  this.route('i-i-s-sonya5-товары-e',
  { path: 'i-i-s-sonya5-товары-e/:id' });
  this.route('i-i-s-sonya5-товары-e.new',
  { path: 'i-i-s-sonya5-товары-e/new' });
  this.route('i-i-s-sonya5-услуги-l');
  this.route('i-i-s-sonya5-услуги-e',
  { path: 'i-i-s-sonya5-услуги-e/:id' });
  this.route('i-i-s-sonya5-услуги-e.new',
  { path: 'i-i-s-sonya5-услуги-e/new' });
});

export default Router;
