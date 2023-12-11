import { Serializer as СоставМатериалыSerializer } from
  '../mixins/regenerated/serializers/i-i-s-sonya5-состав-материалы';
import __ApplicationSerializer from './application';

export default __ApplicationSerializer.extend(СоставМатериалыSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
