using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Opportunities
{
    public class OpMeta
    {
        public List<OpMeta> OppMetaList
        {
            get { return OppMetaList; }
        }
        public int opMetaId { get; set; }
        public string revProb { get; set; }
        public string revDelMon { get; set; }
        public bool duplicate { get; set; }
        public bool rpo { get; set; }
        public string comments { get; set; }
    }
}