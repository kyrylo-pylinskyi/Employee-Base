using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Employee_Base
{
    /// <summary>
    /// Логика взаимодействия для BaseGridPage.xaml
    /// </summary>
    public partial class BaseGridPage : Page
    {
        public BaseGridPage()
        {
            InitializeComponent();
            TablesComboBox.Text = "Employee";
        }
        private void SearchBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(SearchBox.Text))
            {
                SearchBox.Visibility = Visibility.Collapsed;
                WatermarkedSearchBox.Visibility = Visibility.Visible;
            }
        }

        private void WatermarkedSearchBox_GotFocus(object sender, RoutedEventArgs e)
        {
            WatermarkedSearchBox.Visibility = Visibility.Collapsed;
            SearchBox.Visibility = Visibility.Visible;
            SearchBox.Focus();
        }



        private void TablesComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SelectCommand();
        }

        public void SelectCommand()
        {
            string query = string.Empty;
            if (TablesComboBox.Text.Equals("Employee"))
            {
                CheckBox_1.Visibility = Visibility.Visible;
                CheckBox_1.Content = "Phone";
                CheckBox_2.Visibility = Visibility.Visible;
                CheckBox_2.Content = "Email";
                CheckBox_3.Visibility = Visibility.Visible;
                CheckBox_3.Content = "Hire Date";
                CheckBox_4.Visibility = Visibility.Visible;
                CheckBox_4.Content = "Gender";
                CheckBox_5.Visibility = Visibility.Visible;
                CheckBox_5.Content = "Salary";
                CheckBox_6.Visibility = Visibility.Visible;
                CheckBox_6.Content = "Department";
                string columns = string.Empty;
                string joinColumn = string.Empty;
                string join = string.Empty;
                if (CheckBox_1.IsChecked == true) columns += ", e.Phone";
                if (CheckBox_2.IsChecked == true) columns += ", e.Email";
                if (CheckBox_3.IsChecked == true) columns += ", e.Hire_Date";
                if (CheckBox_4.IsChecked == true) columns += ", e.Gender";
                if (CheckBox_5.IsChecked == true) columns += ", e.Salary";
                if (CheckBox_6.IsChecked == true)
                {
                    join += "INNER JOIN Department d ON e.Department_ID = d.Department_ID;";
                    joinColumn += ", d.Department_Name";
                }
                query = $"SELECT e.Employee_ID, e.Last_Name, e.First_Name, e.Second_Name {columns} {joinColumn} FROM Employee e {join}";
            }
            else if (TablesComboBox.Text.Equals("Customer"))
            {
                CheckBox_1.Visibility = Visibility.Visible;
                CheckBox_1.Content = "Phone";
                CheckBox_2.Visibility = Visibility.Visible;
                CheckBox_2.Content = "Email";
                CheckBox_3.Visibility = Visibility.Visible;
                CheckBox_3.Content = "Hire Date";
                CheckBox_4.Visibility = Visibility.Visible;
                CheckBox_4.Content = "Gender";
                CheckBox_5.Visibility = Visibility.Visible;
                CheckBox_5.Content = "City";
                CheckBox_6.Visibility = Visibility.Hidden;

                string columns = string.Empty;
                string joinColumn = string.Empty;
                string join = string.Empty;
                if (CheckBox_1.IsChecked == true) columns += ", cu.Phone";
                if (CheckBox_2.IsChecked == true) columns += ", cu.Email";
                if (CheckBox_3.IsChecked == true) columns += ", cu.Birth_Date";
                if (CheckBox_4.IsChecked == true) columns += ", cu.Gender";
                if (CheckBox_5.IsChecked == true)
                {
                    join += "INNER JOIN City ci ON cu.City_ID = ci.City_ID;";
                    joinColumn += ", ci.City_Name";
                }
                query = $"SELECT cu.Customer_ID, cu.Last_Name, cu.First_Name, cu.Second_Name {columns} {joinColumn} FROM Customer cu {join}";
            }
            else if (TablesComboBox.Text.Equals("Department"))
            {
                CheckBox_1.Visibility = Visibility.Hidden;
                CheckBox_2.Visibility = Visibility.Hidden;
                CheckBox_3.Visibility = Visibility.Hidden;
                CheckBox_4.Visibility = Visibility.Hidden;
                CheckBox_5.Visibility = Visibility.Hidden;
                CheckBox_6.Visibility = Visibility.Hidden;

                query = $"SELECT d.Department_ID, d.Department_Name, e.First_Name + ' ' + e.Last_Name AS Manager FROM Department d INNER JOIN Employee e ON d.Manager_ID = e.Employee_ID;";
            }
            else if (TablesComboBox.Text.Equals("City"))
            {
                CheckBox_1.Visibility = Visibility.Hidden;
                CheckBox_2.Visibility = Visibility.Hidden;
                CheckBox_3.Visibility = Visibility.Hidden;
                CheckBox_4.Visibility = Visibility.Hidden;
                CheckBox_5.Visibility = Visibility.Hidden;
                CheckBox_6.Visibility = Visibility.Hidden;

                query = "SELECT * FROM City;";
            }
            DBInformer select = new DBInformer();
            BaseGrid.ItemsSource = select.SelectEmployee(query).DefaultView;
        }

        public void TableComboChanged()
        {
            CheckBox_1.IsChecked = false;
            CheckBox_2.IsChecked = false;
            CheckBox_3.IsChecked = false;
            CheckBox_4.IsChecked = false;
            CheckBox_5.IsChecked = false;
            CheckBox_6.IsChecked = false;
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            SelectCommand();
        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            SelectCommand();
        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            TableComboChanged();
            SelectCommand();
        }
    }
}
