using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Sockets;

namespace GfK_HRFeedback.BL
{
    public class HRFeedbackData
    {
        SqlConnection conn;

        public HRFeedbackData()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ToString());
        }

        public List<Questions> GetAllQuestionsAndAnswers()
        {
            List<Questions> questions = new List<BL.Questions>();
            try
            {


                List<Answers> answers = new List<BL.Answers>();
                conn.Open();

                SqlCommand command = new SqlCommand
                {
                    CommandText = "GET_QuestionsAndAnswers",
                    CommandType = CommandType.StoredProcedure,
                    Connection = conn
                };

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // while there is another record present
                    while (reader.Read())
                    {
                        questions.Add(new Questions
                        {
                            ID = Convert.ToInt32(reader["QuestionId"]),
                            Text = Convert.ToString(reader["Text"])
                        });
                    }
                    reader.NextResult();

                    while (reader.Read())
                    {
                        answers.Add(new Answers
                        {
                            ID = Convert.ToInt32(reader["AnswerId"]),
                            QuestionID = Convert.ToInt32(reader["QuestionId"]),
                            Text = Convert.ToString(reader["Text"]),
                            Counter = Convert.ToInt32(reader["Counter"]),
                            Result = Convert.ToString(reader["Result"])
                        });
                    }
                }

                foreach (Questions item in questions)
                {
                    item.Answers = answers.FindAll(q => q.QuestionID == item.ID);
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                conn.Close();
            }
            return questions;
        }

        public bool UpdateAnswers(List<Answers> answers)
        {
            bool status = false;
            using (conn)
            {
                conn.Open();

                SqlCommand command = conn.CreateCommand();
                SqlTransaction transaction = conn.BeginTransaction("UpdateTransaction");

                try
                {
                    command.Connection = conn;
                    command.Transaction = transaction;

                    command.CommandText = "Insert_AnonymousUser";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@CurrentMachineIP", GetLocalIPAddress()));
                    command.ExecuteNonQuery();

                    command.CommandText = "UpdateAnswer";
                    command.CommandType = CommandType.StoredProcedure;
                    foreach (var item in answers)
                    {
                        command.Parameters.Clear();
                        command.Parameters.Add(new SqlParameter("@AnswerId", item.ID));
                        command.Parameters.Add(new SqlParameter("@QuestionId", item.QuestionID));

                        command.ExecuteNonQuery();
                    }
                    transaction.Commit();
                    status = true;
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                }
                finally
                {
                    conn.Close();
                }
            }
            return status;
        }

        public static string GetLocalIPAddress()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    return ip.ToString();
                }
            }
            throw new Exception("No network adapters with an IPv4 address in the system!");
        }

    }
}