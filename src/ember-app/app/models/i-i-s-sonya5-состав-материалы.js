import { buildValidations } from 'ember-cp-validations';
import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

import {
  defineProjections,
  ValidationRules,
  Model as СоставМатериалыMixin
} from '../mixins/regenerated/models/i-i-s-sonya5-состав-материалы';

const Validations = buildValidations(ValidationRules, {
  dependentKeys: ['model.i18n.locale'],
});

let Model = EmberFlexberryDataModel.extend(СоставМатериалыMixin, Validations, {
});

defineProjections(Model);

export default Model;
