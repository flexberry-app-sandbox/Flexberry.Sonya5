import { buildValidations } from 'ember-cp-validations';
import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

import {
  defineProjections,
  ValidationRules,
  Model as ПриходДенегMixin
} from '../mixins/regenerated/models/i-i-s-sonya5-приход-денег';

const Validations = buildValidations(ValidationRules, {
  dependentKeys: ['model.i18n.locale'],
});

let Model = EmberFlexberryDataModel.extend(ПриходДенегMixin, Validations, {
});

defineProjections(Model);

export default Model;
