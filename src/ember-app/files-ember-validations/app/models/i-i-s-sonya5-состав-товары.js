import {
  defineNamespace,
  defineProjections,
  Model as СоставТоварыMixin
} from '../mixins/regenerated/models/i-i-s-sonya5-состав-товары';

import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

let Model = EmberFlexberryDataModel.extend(СоставТоварыMixin, {
});

defineNamespace(Model);
defineProjections(Model);

export default Model;
