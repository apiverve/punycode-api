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
        /// Unicode text or domain to encode (max 1000 characters)
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// Conversion mode
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }
    }
}
