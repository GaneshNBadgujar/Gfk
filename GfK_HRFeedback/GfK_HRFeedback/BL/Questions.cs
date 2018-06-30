using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GfK_HRFeedback.BL
{
    public class Questions
    {
        public int ID { get; set; }

        public string Text { get; set; }

        public List<Answers> Answers { get; set; }

    }
}