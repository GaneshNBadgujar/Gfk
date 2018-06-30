using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GfK_HRFeedback.BL
{
    public class Answers
    {
        public int ID { get; set; }

        public int QuestionID { get; set; }

        public string Text { get; set; }

        public int Counter { get; set; }

        public string Result { get; set; }
    }
}