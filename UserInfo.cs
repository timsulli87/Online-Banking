using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace Project4_TSullivan
{
    public class UserInfo
    {
        //Fields
        private string _userName;
        private string _password;
        private double _balance;

        //Constructor
        public UserInfo(string userName, string password, double balance)
        {
            _userName = userName;
            _password = password;
            _balance = balance;
        }

        //UserName property
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        //Password property
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        //Balance property
        public double Balance
        {
            get { return _balance; }
            set { _balance = value; }
        }
    }
}