using System;
using System.Collections.Generic;
using GfK_HRFeedback.BL;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace GfK_HRFeedback.Test
{
    public class QuestionsMock
    {
        public List<Questions> GetQuestionsAndAnswers()
        {
            List<Questions> _questions = new List<Questions>();

            List<Answers> ansList = new List<Answers>();
            ansList.Add(new Answers { ID = 1, QuestionID = 1, Text = "StackOverflow", Counter = 1, Result = "50%" });
            ansList.Add(new Answers { ID = 2, QuestionID = 1, Text = "Indeed", Counter = 1, Result = "50%" });
            ansList.Add(new Answers { ID = 3, QuestionID = 1, Text = "Other", Counter = 0, Result = "0%" });

            _questions.Add(new Questions
            {
                ID = 1,
                Text = "How did you find out about this job opportunity?",
                Answers = ansList
            });

            _questions.Add(new Questions { ID = 2, Text = "How do you find the company’s location?" });

            return _questions;
        }
    }
}
