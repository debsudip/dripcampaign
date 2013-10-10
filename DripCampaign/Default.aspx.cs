using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Collections;
namespace DripCampaign
{
    public partial class Default : System.Web.UI.Page
    {
        static int counter = 1;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRight_Click(object sender, EventArgs e)
        {

            if (list1.Items.Count > 0)
            {
                for (int i = 0; i < list1.Items.Count; i++)
                {
                    if (list1.Items[i].Selected)
                    {
                        string selectedItem = list1.Items[i].Text;
                        string selectedvalue = list1.Items[i].Value;
                        ListItem li = new ListItem();
                        li.Text = selectedItem;
                        li.Value = selectedvalue;
                        counter += 1;
                        list2.Items.Add(li);
                    }
                }
            }
            SortListBox();
        }

        protected void btnLeft_Click(object sender, EventArgs e)
        {
            list2.Items.Remove(list2.Items[list2.SelectedIndex]);
        }

        private void SortListBox()
        {
            ArrayList ListBoxArray = new ArrayList();
            int i = 0;
            while (i < list2.Items.Count)
            {
                var myString = list2.Items[i].Value;
                var onlyLetters = new String(myString.Where(Char.IsLetter).ToArray());

                ListBoxArray.Add(onlyLetters);
                ++i;
            }
            list2.Items.Clear();
            ListBoxArray.Sort();
            i = 0;

            while (ListBoxArray.Count > i)
            {
                list2.Items.Add(ListBoxArray[i].ToString()+ (i+1).ToString ());
                ++i;
            }
        }
    }
}