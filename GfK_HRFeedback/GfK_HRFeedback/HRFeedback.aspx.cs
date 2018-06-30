using GfK_HRFeedback.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GfK_HRFeedback
{
    public partial class HRFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HRFeedbackData hrFeedbackData = new HRFeedbackData();
            //List<Questions> listQus = hrFeedbackData.GetAllQuestionsAndAnswers();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                List<Answers> listAnswers = new List<Answers>();
                listAnswers.Add(new Answers { QuestionID = 1, ID = Convert.ToInt32(Answer1.SelectedValue) });
                foreach (ListItem item in Answer2.Items)
                {
                    if (item.Selected)
                        listAnswers.Add(new Answers { QuestionID = 2, ID = Convert.ToInt32(item.Value) });
                }
                listAnswers.Add(new Answers { QuestionID = 3, ID = Convert.ToInt32(Answer3.SelectedValue) });
                listAnswers.Add(new Answers { QuestionID = 4, ID = Convert.ToInt32(Answer4.SelectedValue) });
                foreach (ListItem item in Answer5.Items)
                {
                    if (item.Selected)
                        listAnswers.Add(new Answers { QuestionID = 5, ID = Convert.ToInt32(item.Value) });
                }

                HRFeedbackData hrFeedbackData = new HRFeedbackData();
                bool isUpdacted = hrFeedbackData.UpdateAnswers(listAnswers);

                if (isUpdacted)
                    Response.Redirect("~/HRFeedbackResult.aspx");

            }
        }
    }
}