import {
  defineNamespace,
  defineProjections,
  Model as СоставМатериалыMixin
} from '../mixins/regenerated/models/i-i-s-sonya5-состав-материалы';

import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

let Model = EmberFlexberryDataModel.extend(СоставМатериалыMixin, {
});

defineNamespace(Model);
defineProjections(Model);

export default Model;
