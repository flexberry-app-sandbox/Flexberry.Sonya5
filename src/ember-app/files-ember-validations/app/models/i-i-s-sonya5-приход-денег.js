import {
  defineNamespace,
  defineProjections,
  Model as ПриходДенегMixin
} from '../mixins/regenerated/models/i-i-s-sonya5-приход-денег';

import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

let Model = EmberFlexberryDataModel.extend(ПриходДенегMixin, {
});

defineNamespace(Model);
defineProjections(Model);

export default Model;
