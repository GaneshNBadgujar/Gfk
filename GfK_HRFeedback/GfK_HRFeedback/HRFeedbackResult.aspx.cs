using GfK_HRFeedback.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GfK_HRFeedback
{
    public partial class HRFeedbackResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HRFeedbackData hrFeedbackData = new HRFeedbackData();
                List<Questions> questions = hrFeedbackData.GetAllQuestionsAndAnswers();

                if (questions.Count > 0)
                {
                    litNoR.Text = questions.FirstOrDefault().Answers.Sum(a => a.Counter).ToString();

                    lblResultQ1A1.Text = questions.Find(q => q.ID == 1).Answers.Find(a => a.ID == 1).Result;
                    lblResultQ1A2.Text = questions.Find(q => q.ID == 1).Answers.Find(a => a.ID == 2).Result;
                    lblResultQ1A3.Text = questions.Find(q => q.ID == 1).Answers.Find(a => a.ID == 3).Result;

                    lblResultQ2A1.Text = questions.Find(q => q.ID == 2).Answers.Find(a => a.ID == 4).Result;
                    lblResultQ2A2.Text = questions.Find(q => q.ID == 2).Answers.Find(a => a.ID == 5).Result;
                    lblResultQ2A3.Text = questions.Find(q => q.ID == 2).Answers.Find(a => a.ID == 6).Result;
                    lblResultQ2A4.Text = questions.Find(q => q.ID == 2).Answers.Find(a => a.ID == 7).Result;

                    lblResultQ3A1.Text = questions.Find(q => q.ID == 3).Answers.Find(a => a.ID == 8).Result;
                    lblResultQ3A2.Text = questions.Find(q => q.ID == 3).Answers.Find(a => a.ID == 9).Result;
                    lblResultQ3A3.Text = questions.Find(q => q.ID == 3).Answers.Find(a => a.ID == 10).Result;

                    lblResultQ4A1.Text = questions.Find(q => q.ID == 4).Answers.Find(a => a.ID == 11).Result;
                    lblResultQ4A2.Text = questions.Find(q => q.ID == 4).Answers.Find(a => a.ID == 12).Result;
                    lblResultQ4A3.Text = questions.Find(q => q.ID == 4).Answers.Find(a => a.ID == 13).Result;
                    lblResultQ4A4.Text = questions.Find(q => q.ID == 4).Answers.Find(a => a.ID == 14).Result;

                    lblResultQ5A1.Text = questions.Find(q => q.ID == 5).Answers.Find(a => a.ID == 15).Result;
                    lblResultQ5A2.Text = questions.Find(q => q.ID == 5).Answers.Find(a => a.ID == 16).Result;
                    lblResultQ5A3.Text = questions.Find(q => q.ID == 5).Answers.Find(a => a.ID == 17).Result;
                    lblResultQ5A4.Text = questions.Find(q => q.ID == 5).Answers.Find(a => a.ID == 18).Result;
                }
                else
                {
                    panNoDataFound.Visible = true;
                    panResult.Visible = false;
                }
            }

        }
    }
}