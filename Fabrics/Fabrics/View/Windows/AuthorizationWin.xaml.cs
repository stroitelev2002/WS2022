using Fabrics.Model;
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
using System.Windows.Shapes;

namespace Fabrics.View.Windows
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationWin.xaml
    /// </summary>
    public partial class AuthorizationWin : Window
    {
        private TradeEntities context;

        private User currentUser; //Текущий пользователь

        public AuthorizationWin()
        {
            InitializeComponent();
            context = DBManager.Context;
            currentUser = new User();
            DataContext = currentUser;
        }

        //Проверка введённых логина и пароля
        private void LogInSystemBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                User user = context.User.Where(p => p.UserLogin
                    == currentUser.UserLogin && p.UserPassword
                    == currentUser.UserPassword).FirstOrDefault();
                //Если данные верны, то переход на рабочую форму
                if (user != null)
                {
                    currentUser = user;
                    new ProductListWin().Show();
                    Close();
                }
                //Иначе вывод ошибки
                else
                {
                    MessageBox.Show("Неверно указан логин и пароль. " +
                        "Повторите попытку входа", "Информация",
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch { }
        }
    }
}
