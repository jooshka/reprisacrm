module NavigationHelper
  def nav_data
    nav_path = {}
    nav_path['/admin/users']=[:admin,:users,:users]
    nav_path['/admin/user_groups']=[:admin,:users,:user_groups]

    nav = {
      admin:{
        title: 'Администрирование', icon: 'gear', enable: true, path: '#',
        users: {
          title: 'Пользователи', icon: 'user-o', enable: true, path: '#',
          users: { title: 'Пользователи', enable: true, path: '#' },
          user_groups: { title: 'Группы пользователей', enable: true, path: '#' }
        },
        sites: {
          title: 'Магазины', icon: 'bank', enable: true, path: '#',
          sites: { title: 'Магазины', enable: true, path: '#' }
        },
        statuses: {
          title: 'Статусы', icon: 'th-list', enable: true, path: '#',
          statuses: { title: 'Статусы', enable: true, path: '#' },
          status_groups: { title: 'Группы статусов', enable: true, path: '#' },
          status_matrix: { title: 'Переходы статусов', enable: true, path: '#' },
        },
        communication: {
          title: 'Коммуникации', icon: 'comment-o', enable: true, path: '#',
          rules: { title: 'Триггеры', enable: true, path: '#' },
          templ_notifications: { title: 'Шаблоны оповещений', enable: true, path: '#' },
        },
        integration: {
          title: 'Интеграция', icon: 'puzzle-piece', enable: true, path: '#',
          integration: { title: 'Интеграция', enable: true, path: '#' }
        }
      },
      oper: {
        title: 'Операционная деятельность', icon: 'cart-plus', enable: true, path: '#',
        orders: {
          title: 'Заказы', icon: 'cart-plus', enable: true, path: '#'
        },
        tasks: {
          title: 'Задачи', icon: 'tasks', enable: true, path: '#'
        }
      },
      analytics: {
        title: 'Аналитика', icon: 'line-chart', enable: true, path: '#',
        users: {
          title: 'Пользователи', icon: 'user-o', enable: true, path: '#',
        },
        sites: {
          title: 'Магазины', icon: 'bank', enable: true, path: '#',
        },
      }
    }

    #current_path = request.path
    current_path = '/admin/users'
    t = current_path.split('/')
    path = ['admin','analytics'].include?(t[1]) ? "/#{t[1]}/#{t[2]}" : "/#{t[1]}"
    {current_path: current_path, active: nav_path[path], nav: nav}
  end

end
