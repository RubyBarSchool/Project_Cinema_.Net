using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace ProjectCSharpCGV.CheckValidate
{
    public class Check
    {
        public static bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
        private static readonly Regex phoneNumber = new Regex(@"\d{2}\d{3}\d{3}\d{4}");

        public static bool VerifyPhoneNumber(string pNumber)
        {
            return phoneNumber.IsMatch(pNumber);
        }
        private static readonly Regex dateDOB = new Regex(@"\d{4}-\d{2}-\d{2}");
        public static bool VerifyDOB(string dateDOB1)
        {
            return dateDOB.IsMatch(dateDOB1);
        }
        private static readonly Regex  strEmail = new Regex(@"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
        public static bool VerifyEmail(string email)
        {
            return strEmail.IsMatch(email);
        }

    }
} 


