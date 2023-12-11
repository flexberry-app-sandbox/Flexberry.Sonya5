import { Serializer as ПриходДенегSerializer } from
  '../mixins/regenerated/serializers/i-i-s-sonya5-приход-денег';
import __ApplicationSerializer from './application';

export default __ApplicationSerializer.extend(ПриходДенегSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
