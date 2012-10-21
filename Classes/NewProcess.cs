using System;
using System.Diagnostics;

namespace Hamachi_Launcher.Classes
{
    class NewProcess : IDisposable
    {
        public string ProcessPath { get; set; }
        public string HamachiIp { get; set; }

        public ProcessStartInfo AnewProcess()
        {
            return new ProcessStartInfo
                            {
                                Arguments = HamachiIp,
                                FileName = ProcessPath,
                            };

         }

        public void Dispose()
        {
            Debug.WriteLine("NewProcess Cleaned up using Dispose()");
        }
    }
}
