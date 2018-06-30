using System;
using System.Collections.Generic;
using GfK_HRFeedback.BL;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace GfK_HRFeedback.Test
{
    [TestClass]
    public class HRFeedbackDataTest
    {
        [TestMethod]
        public void GetQuestions()
        {
            QuestionsMock mock = new QuestionsMock();

            List<Questions> result = mock.GetQuestionsAndAnswers();

            Assert.IsNotNull(result);
            Assert.AreEqual(2, result.Count);
            Assert.AreEqual(3, result[0].Answers.Count);
            Assert.AreEqual("50%", result[0].Answers[0].Result);

        }
    }
}
