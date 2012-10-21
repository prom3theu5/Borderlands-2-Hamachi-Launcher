using System;
using System.Diagnostics;
using System.Net;
using System.Windows;
using System.Windows.Input;
using Hamachi_Launcher.Classes;
using Microsoft.Win32;

namespace Hamachi_Launcher
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            StatusMSG.Content = "Borderlands Hamachi Launcher: Prometheus";
            StatusMSG.Visibility = Visibility.Visible;
        }

        private void ButtonClick1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

       private void ConnectButtonClick1(object sender, RoutedEventArgs e)
        {
            if (!Filepath.Text.ToUpper().Contains("BORDERLANDS2.EXE"))
            {
                StatusMSG.Content = "Please select your Borderlands2.exe file";
                StatusMSG.Visibility = Visibility.Hidden;
                StatusMSG.Visibility = Visibility.Visible;
                return;

            }
           
           if (!IsValidIp(IPAddressBox.Text))
               {
                   StatusMSG.Content = "Please enter a valid IP.\nCopy and paste IPV4 from Hamachi Window ";
                   StatusMSG.Visibility = Visibility.Hidden;
                   StatusMSG.Visibility = Visibility.Visible;
                   return;
               }
           
           using (var proc = new NewProcess() {HamachiIp = IPAddressBox.Text,ProcessPath = Filepath.Text}) Process.Start(proc.AnewProcess());
           
           Application.Current.Shutdown();
        }

       public bool IsValidIp(string addr)
       {
           IPAddress ip;
           bool valid = !string.IsNullOrEmpty(addr) && IPAddress.TryParse(addr, out ip);
           return valid;
       }
        
        private void PingButtonClick1(object sender, RoutedEventArgs e)
        {
            if (!IsValidIp(IPAddressBox.Text))
            {
                StatusMSG.Content = "Please enter a valid IP. Copy and paste IPV4 from Hamachi Window ";
                StatusMSG.Visibility = Visibility.Hidden;
                StatusMSG.Visibility = Visibility.Visible;
                return;
            }
            
            var message = new PingHost(){Address = IPAddressBox.Text}.PingAHost();
            StatusMSG.Content = message;
            StatusMSG.Visibility = Visibility.Hidden;
            StatusMSG.Visibility = Visibility.Visible;
        }

        private void BrowseButtonClick1(object sender, RoutedEventArgs e)
        {
            var ofd = new OpenFileDialog {Filter = "Borderlands2.exe | Borderlands2.exe"};
            var result = ofd.ShowDialog();
            if (result == true) Filepath.Text = ofd.FileName;
        }

        private void GridMouseDown1(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void IpAddressBoxPreviewMouseDown1(object sender, MouseButtonEventArgs e)
        {
            if (IPAddressBox.Text.Equals("IP Address...")) IPAddressBox.Text = string.Empty;
        }

        

    }
}
