using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PunycodeConverter
{
    /// <summary>
    /// Query options for the Punycode Converter API
    /// </summary>
    public class PunycodeConverterQueryOptions
    {
        /// <summary>
        /// Text or domain to encode/decode (max 1000 characters)
        /// Example: münchen.de
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Mode: encode (Unicode to Punycode) or decode (Punycode to Unicode)
        /// Example: encode
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }
    }
}
