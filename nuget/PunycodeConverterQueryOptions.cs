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
        /// Unicode label, domain, email address or URL to encode; only the domain of an email or the host of a URL is converted (max 1000 characters)
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
