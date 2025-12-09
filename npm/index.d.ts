declare module '@apiverve/punycode' {
  export interface punycodeOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface punycodeResponse {
    status: string;
    error: string | null;
    data: PunycodeConverterData;
    code?: number;
  }


  interface PunycodeConverterData {
      input:  string;
      output: string;
      mode:   string;
      isIDN:  boolean;
  }

  export default class punycodeWrapper {
    constructor(options: punycodeOptions);

    execute(callback: (error: any, data: punycodeResponse | null) => void): Promise<punycodeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: punycodeResponse | null) => void): Promise<punycodeResponse>;
    execute(query?: Record<string, any>): Promise<punycodeResponse>;
  }
}
