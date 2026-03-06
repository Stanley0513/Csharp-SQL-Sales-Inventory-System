using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Practice8
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: 這行程式碼會將資料載入 'h24116065_dbDataSet.Items' 資料表。您可以視需要進行移動或移除。
            this.itemsTableAdapter.Fill(this.h24116065_dbDataSet.Items);
            // TODO: 這行程式碼會將資料載入 'h24116065_dbDataSet.TransactionHistory' 資料表。您可以視需要進行移動或移除。
            this.transactionHistoryTableAdapter.Fill(this.h24116065_dbDataSet.TransactionHistory);
            // TODO: 這行程式碼會將資料載入 'h24116065_dbDataSet.Customers' 資料表。您可以視需要進行移動或移除。
            this.customersTableAdapter.Fill(this.h24116065_dbDataSet.Customers);

        }
    }
}
