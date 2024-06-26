// tslint:disable
/**
 * Yugabyte Cloud
 * YugabyteDB as a Service
 *
 * The version of the OpenAPI document: v1
 * Contact: support@yugabyte.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


// eslint-disable-next-line no-duplicate-imports
import type { PlacementBlock } from './PlacementBlock';


/**
 * TableReplicationInfo
 * @export
 * @interface TableReplicationInfo
 */
export interface TableReplicationInfo  {
  /**
   * 
   * @type {number}
   * @memberof TableReplicationInfo
   */
  num_replicas?: number;
  /**
   * 
   * @type {PlacementBlock[]}
   * @memberof TableReplicationInfo
   */
  placement_blocks?: PlacementBlock[];
  /**
   * 
   * @type {string}
   * @memberof TableReplicationInfo
   */
  placement_uuid?: string;
}



