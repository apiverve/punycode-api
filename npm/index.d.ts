declare module '@apiverve/punycode' {
  export interface punycodeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface punycodeResponse {
    status: string;
    error: string | null;
    data: PunycodeConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PunycodeConverterData {
      input:       null | string;
      output:      null | string;
      mode:        null | string;
      isIDN:       boolean | null;
      scripts:     (null | string)[];
      mixedScript: boolean | null;
  }

  export default class punycodeWrapper {
    constructor(options: punycodeOptions);

    execute(callback: (error: any, data: punycodeResponse | null) => void): Promise<punycodeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: punycodeResponse | null) => void): Promise<punycodeResponse>;
    execute(query?: Record<string, any>): Promise<punycodeResponse>;
  }
}
