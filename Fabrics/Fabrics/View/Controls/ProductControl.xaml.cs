using Fabrics.Model;
using Fabrics.View.Windows;
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

namespace Fabrics.View.Controls
{
    /// <summary>
    /// Логика взаимодействия для ProductControl.xaml
    /// </summary>
    public partial class ProductControl : UserControl
    {
        public ProductControl()
        {
            InitializeComponent();
        }

        private void EditProductBtn_Click(object sender, RoutedEventArgs e)
        {
            new EditProductWin((sender as Button).DataContext as Product).ShowDialog();
            ProductListWin.ProductList.RefreshProducts();
        }
    }
}
