using System.Net.NetworkInformation;
using System.Net.Sockets;

namespace Hamachi_Launcher.Classes
{
    class PingHost
    {

        public string Address { get; set; }

        public string PingAHost()
        {
            var returnMessage = string.Empty;
            var pingOptions = new PingOptions(128, true);
            var ping = new Ping();
            var buffer = new byte[32];
            for (int i = 0; i < 4; i++)
            {
              try
                {
                 var pingReply = ping.Send(Address, 1000, buffer, pingOptions);
                  if (pingReply != null)
                        {
                            switch (pingReply.Status)
                            {
                                case IPStatus.Success:
                                    returnMessage = string.Format("SUCCESS:   Reply from {0}: bytes={1} time={2}ms TTL={3}", pingReply.Address, pingReply.Buffer.Length, pingReply.RoundtripTime, pingReply.Options.Ttl);
                                    break;
                                case IPStatus.TimedOut:
                                    returnMessage = "Connection has timed out...";
                                    break;
                                default:
                                    returnMessage = string.Format("Ping failed: {0}", pingReply.Status.ToString());
                                    break;
                            }
                        }
                        else
                            returnMessage = "Connection failed for an unknown reason...";
                    }
                    catch (PingException ex)
                    {
                        returnMessage = string.Format("Connection Error: {0}", ex.Message);
                    }
                    catch (SocketException ex)
                    {
                        returnMessage = string.Format("Connection Error: {0}", ex.Message);
                    }
                }
           return returnMessage;
        }
    
    }
}
