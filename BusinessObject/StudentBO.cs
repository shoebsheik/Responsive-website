using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessObject
{
    public class StudentBO
    {
        private string name;
        private string dob;
        private string gender;
        private string degree;
        private string branch;
        private string eid;
        private string mobile;
        private string upload;
        private string status;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public string Degree
        {
            get { return degree; }
            set { degree = value; }
        }
        public string Branch
        {
            get { return branch; }
            set { branch = value; }
        }
        public string Email
        {
            get { return eid; }
            set {  eid = value; }
        }
        public string Mobile
        {
            get { return mobile; }
            set { mobile = value; }
        }
        public string Upload
        {
            get { return upload; }
            set { upload = value; }
        }
        public string Status
        {
            get { return status; }
            set { status = value; }
        }
    }
}
