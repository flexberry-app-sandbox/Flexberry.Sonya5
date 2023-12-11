import { Serializer as СоставТоварыSerializer } from
  '../mixins/regenerated/serializers/i-i-s-sonya5-состав-товары';
import __ApplicationSerializer from './application';

export default __ApplicationSerializer.extend(СоставТоварыSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
