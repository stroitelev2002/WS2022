using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fabrics.Model
{
    public class DBManager
    {
        private static TradeEntities context;
        public static TradeEntities Context
        {
            get
            {
                if (context == null)
                    context = new TradeEntities();
                return context;
            }
        }
    }
}
