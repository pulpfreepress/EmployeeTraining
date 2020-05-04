using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;

namespace InfrastructureLayer.Common
{
    public class ApplicationBase
    {
        private Logger Log { get; set; }

        protected ApplicationBase(Type declaringType)
        {
            Log = LogManager.GetLogger(declaringType.FullName);
        }

        protected void LogInfo(object o)
        {
            Log.Info(o.ToString());
        }

        protected void LogWarn(object o)
        {
            Log.Warn(o.ToString());
        }

        protected void LogDebug(object o)
        {
            Log.Debug(o.ToString());
        }

        protected void LogError(object o)
        {
            Log.Error(o.ToString());
        }

    }
}
