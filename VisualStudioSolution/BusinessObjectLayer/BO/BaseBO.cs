using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InfrastructureLayer.Common;

namespace BusinessObjectLayer.BO
{
    public class BaseBO : ApplicationBase
    {

        public BaseBO(Type declaringType): base(declaringType)
        {
            LogInfo("BaseBO object created!");
        }

    }
}
