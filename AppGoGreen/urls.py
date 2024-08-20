from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .import views
from .views import Message
urlpatterns = [


path('',views.home,name='home'),
path('base/',views.base,name='base'),
path('SellerLogin/',views.SellerLogin,name='SellerLogin'),
path('Manage/',views.Manage,name='Manage'),
path('OrdersDetail/',views.OrdersDetail,name='OrdersDetail'),
path('userLogin/',views.userLogin,name='userLogin'),
path('Plants/',views.Plants,name='Plants'),
path('userRegister/',views.userRegister,name='userRegister'),
path('Wishlist/',views.Wishlist,name='Wishlist'),
path('MyCart/',views.MyCart,name='MyCart'),
path('logout/',views.logout,name='logout'),
path('updated/',views.updated,name = 'updated'),
path('delplant/<int:id>',views.delplant,name = 'delplant'),
path('Plantdetail/<int:id>',views.Plantdetail,name = 'Plantdetail'),
path('MyCart/',views.MyCart,name = 'MyCart'),
path('ProcessOrder/',views.ProcessOrder,name = 'ProcessOrder'),
path('destroy/<int:id>',views.destroy,name = 'destroy'),
path('remove/<int:id>',views.remove,name = 'remove'),
path('UserReviews/',views.UserReviews,name = 'UserReviews'),
path('ViewReviews/',views.ViewReviews,name = 'ViewReviews'),
path('customers/',views.customers,name = 'customers'),
path('delete/<int:id>',views.delete,name = 'delete'),
path('delete_1/<int:id>',views.delete_1,name = 'delete_1'),
path('SellerRegisteration/',views.SellerRegisteration,name = 'SellerRegisteration'),
path('Chatpages/',views.Chatpages,name = 'Chatpages'),
path('Message/', Message.as_view(),name='Message'),





]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)






