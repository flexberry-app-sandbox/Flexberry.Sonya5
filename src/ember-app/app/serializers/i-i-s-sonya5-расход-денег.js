import { Serializer as РасходДенегSerializer } from
  '../mixins/regenerated/serializers/i-i-s-sonya5-расход-денег';
import __ApplicationSerializer from './application';

export default __ApplicationSerializer.extend(РасходДенегSerializer, {
  /**
  * Field name where object identifier is kept.
  */
  primaryKey: '__PrimaryKey'
});
