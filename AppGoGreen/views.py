from django.shortcuts import render,redirect
from .models import *
from django.contrib import messages
from django.contrib.sessions.models import Session
from django.db.models import Sum
from datetime import date
from django.views import View
from django.http import JsonResponse
# Create your views here.
def home(request):
	return render(request,'home.html',{})

def base(request):
	return render(request,'base.html',{})


def SellerLogin(request):
	if request.method == "POST":
		A_username = request.POST['admin']
		A_password = request.POST['passwords']
		if SellerRegisterations.objects.filter(SellerUser = A_username,SellerPwd = A_password).exists():
			ad = SellerRegisterations.objects.all().filter(SellerUser=A_username, SellerPwd=A_password)
			print(ad)
			messages.info(request,'Your login is Sucessfull')
			for i in ad:
				company_name = i.SellerCompany
				print(company_name)
			request.session['SellerCompany'] = company_name
			request.session['SellerId'] = ad[0].id
			request.session['type_id'] = 'Seller'
			request.session['UserType'] = A_username
			request.session['login'] = "Yes"
			print(A_username)
			return redirect("/Plants")
		else:
			messages.error(request, 'Error wrong username/password')
			return redirect("/")
	else:
		return render(request,'SellerLogin.html',{})


def SellerRegisteration(request):
	if request.method == "POST":
		SellerFName=request.POST['fname']
		SellerLName=request.POST['lname']
		SellerNumber=request.POST['phone']
		SellerCompany=request.POST['company']
		SellerEmail=request.POST['email']
		SellerGender=request.POST['Gender']
		SellerAge=request.POST['Age']
		SellerUser=request.POST['Username']
		SellerPwd=request.POST['Password']
		if SellerRegisterations.objects.filter(SellerUser=SellerUser).exists():
			messages.info(request,'This username already exists')
			return render(request,'adminLogin.html',{})
		else:
			user = SellerRegisterations(SellerFName = SellerFName,SellerLName = SellerLName,SellerNumber = SellerNumber,SellerCompany= SellerCompany,SellerEmail= SellerEmail,SellerGender= SellerGender,SellerAge= SellerAge,SellerUser= SellerUser,SellerPwd= SellerPwd)
			user.save()
			print(user)
			return render(request,'SellerLogin.html',{})
	else:
		return render(request,'SellerRegisteration.html',{})
	

def userLogin(request):
	if request.method == "POST":
		C_name = request.POST['Username']
		C_password = request.POST['password']
		if UserRegister.objects.filter(Username=C_name, Password=C_password).exists():
			user = UserRegister.objects.all().filter(Username=C_name, Password=C_password)
			messages.info(request, 'logged in')
			request.session['UserId'] = user[0].id
			request.session['type_id'] = 'User'
			request.session['UserType'] = C_name
			request.session['login'] = "Yes"
			return redirect("/Plants")
		else:
			messages.info(request, 'Please Register')
			return redirect("/userRegister")

	else:
		return render(request,'userLogin.html',{})
	
def userRegister(request):
	if request.method == "POST":
		U_name = request.POST['name']
		U_mobile = request.POST['number']
		U_email = request.POST['userEmail']
		U_username = request.POST['username']
		U_password = request.POST['password']
		U_address = request.POST['address']
		print(U_username)
		if UserRegister.objects.filter(Username=U_username).exists():
			messages.info(request,'This username already exists')
			return render(request,'userRegister.html',{})
		else:
			user = UserRegister(Name=U_name, Mobile = U_mobile,Email = U_email,Username = U_username,Address = U_address,Password = U_password)
			user.save()
			print(user)
			return render(request,'userLogin.html',{})
	else:
		return render(request,'userRegister.html',{})

def logout(request):
	Session.objects.all().delete()
	return redirect('/')
	

def updated(request):
	if request.method =="POST":
		print('come')
		pid = request.POST['Updateid']
		name= request.POST['Updatename']
		Ptype= request.POST['Updateseed']
		Plight= request.POST['Updatelight']
		maintainance= request.POST['Updatemain']
		schedule= request.POST['Updatetime']
		price= request.POST['Updateprice']
		description= request.POST['Updatedesc']
		print(description)
		Img= request.FILES['Updateimg']
		print(Img)
		PlantDetails.objects.filter(id=pid).update(Name = name,Seeds = Ptype,Light = Plight,Maintainance = maintainance,Schedule = schedule,Price = price,Description = description,Pictures = Img)
		return redirect('/Manage')
	else:
		print('else')
		return redirect('/Manage')

def Manage(request):
	if request.method == "POST":
		Sellerid = request.session['SellerId']
		SelerCompany = request.session['SellerCompany']
		name= request.POST['name']
		Ptype= request.POST['seasons']
		Plight= request.POST['light']
		maintainance= request.POST['maintainance']
		schedule= request.POST['schedule']
		price= request.POST['Price']
		description= request.POST['description']
		Img= request.FILES['img']
		plant=PlantDetails(SellerId=Sellerid,CompanyName=SelerCompany,Name = name,Seeds = Ptype,Light = Plight,Maintainance = maintainance,Schedule = schedule,Price = price,Description = description,Pictures = Img)
		plant.save()
		print(plant)
		return redirect("/Plants")
	else:
		Sellerid = request.session['SellerId']
		data = PlantDetails.objects.all().filter(SellerId=Sellerid)
		print(data)
		return render(request,'Manage.html',{'data':data})

def Plants(request):
	if request.session['type_id'] == 'Seller':
		Sellerid = request.session['SellerId']
		showplants = PlantDetails.objects.all().filter(SellerId=Sellerid)
		return render(request,'Plants.html',{'showplants':showplants})
	else:
		showplants = PlantDetails.objects.all()
		return render(request,'Plants.html',{'showplants':showplants})
	
def OrdersDetail(request):
    Sellerid = request.session['SellerId']
    order = OrderDetail.objects.all().filter(SellerID=Sellerid)
    return render(request,'OrdersDetail.html',{'order':order})

def Wishlist(request):
	if request.method =="POST":
		UserId=request.session['UserId']
		print(UserId)
		PID=request.POST['Pid']
		print(PID)
		pName=request.POST['name']
		pprice=request.POST['price']
		pseeds=request.POST['seeds']

		if Favourite.objects.filter(UserID=UserId,FlowerID=PID).exists():
			fav=Favourite.objects.all().filter(UserID=UserId)
			messages.info(request,'Plant Already Added to Wishlist')
			return render(request,'Wishlist.html', {'fav':fav})
			
		else: 
			favplant = Favourite(UserID=UserId,FlowerID = PID,Fname = pName, Price = pprice,Type=pseeds )
			favplant.save()
			fav=Favourite.objects.all().filter(UserID=UserId)
			messages.info(request,'Plant Sucessfully Added to Wishlist')
			return render(request,'Wishlist.html', {'fav':fav})
			
	else:
		UserId=request.session['UserId']
		fav=Favourite.objects.all().filter(UserID=UserId)
		return render(request,'Wishlist.html', {'fav':fav})
	




def delplant(request,id):
	delplant = PlantDetails.objects.get(id=id) 
	delplant.delete()
	return redirect('/Manage')

def Plantdetail(request,id):
	planted=PlantDetails.objects.filter(id=id)
	return render(request,'Plantdetail.html', {'planted':planted,})

def MyCart(request):
	if request.method == "POST":
		User_Id=request.session['UserId']
		P_ID=request.POST['Pid']
		F_Name=request.POST['name']
		F_Price=request.POST['price']
		Quantity=request.POST['Quantity']
		Sellerid = request.POST['SID']
		SellerCompany = request.POST['SCom']

		if CartItems.objects.filter(ProductID=P_ID, ProdName=F_Name).exists():
			CartDetails = CartItems.objects.all().filter(ProductID=P_ID, ProdName=F_Name)
			cid = CartDetails[0].id
			print('cid',cid)
			Qnt = CartDetails[0].Prod_qty
			print('Qnt',Qnt)
			Cprice = CartDetails[0].Prod_Price
			print('Cprice',Cprice)
			prodquan = int(Qnt) + int(Quantity)
			prodprice = int(Cprice) + int(F_Price)
			TotalPrice = int(F_Price) * int(prodquan)
			CartItems.objects.filter(id=cid).update(Prod_qty=prodquan,Prod_Price=TotalPrice)
			print(TotalPrice)
		else:
			TotalPrice = int(F_Price) * int(Quantity)
			cart=CartItems(SellerID=Sellerid,CompanyName = SellerCompany, ProductID=P_ID,ProdName=F_Name,UserID = User_Id,Prod_qty=Quantity,Prod_Price=TotalPrice)
			cart.save()

		CT = CartItems.objects.filter(UserID = User_Id).aggregate(Sum('Prod_Price'))
		carttotal = CT['Prod_Price__sum']
		prod1 = CartItems.objects.all().filter(UserID = User_Id)
		print(prod1)
		return render(request,'MyCart.html', {'prod1': prod1,'carttotal':carttotal,'Sellerid':Sellerid})
	else:
		User_Id=request.session['UserId']
		CT = CartItems.objects.filter(UserID = User_Id).aggregate(Sum('Prod_Price'))
		carttotal = CT['Prod_Price__sum']
		SellerID = CartItems.objects.all().filter(UserID = User_Id)
		for i in SellerID:
			Sellerid = i.SellerID
			print(Sellerid)
		prod1 = CartItems.objects.all().filter(UserID = User_Id)
		print(prod1)
		return render(request,'MyCart.html', {'prod1': prod1,'carttotal':carttotal})


def ProcessOrder(request):
	if request.method == "POST":
		Seller = request.POST['SID']
		UserId=request.session['UserId']
		CT = CartItems.objects.filter(UserID=UserId).aggregate(Sum('Prod_Price'))
		carttotal = CT['Prod_Price__sum']
		todayDate = date.today()
		
		prod1 = OrderDetail(Userid = UserId,TotalPrice=carttotal,OrderDate=todayDate,SellerID = Seller)
		prod1.save()
		orders = OrderDetail.objects.all().filter(Userid = UserId,TotalPrice=carttotal,OrderDate=todayDate)
		Oid = orders[0].id
		cart = CartItems.objects.all().filter(UserID=UserId)
		for i in cart:
			prod1 = cartproducts(OrderID=Oid,ProdId=str(i. ProductID),ProdName=(i.ProdName),UserID=UserId,Prodqty=(i.Prod_qty),ProdPrice=(i.Prod_Price),SellerID = Seller)
			prod1.save()
		CartItems.objects.all().filter(UserID=UserId).delete()
		messages.info(request, 'Order Processed Successfully')
		return redirect('/MyCart')
	else:
		return redirect('/')
 
def destroy(request,id):
	fav1 = Favourite.objects.get(id=id)
	fav1.delete()
	return render(request,'Wishlist.html',{})

def remove(request,id):
	ct = CartItems.objects.get(id=id)
	ct.delete()
	return redirect("/MyCart/")

def UserReviews(request):
	if request.method == "POST":
		UserId=request.session['UserId']
		print(UserId)
		R_name=request.POST['txtName']
		R_email=request.POST['txtEmail']
		R_num=request.POST['txtPhone']
		R_mess=request.POST['txtMsg']
		review = Review(CustID = UserId,Name = R_name, Email = R_email , Phone = R_num , messages = R_mess)
		review.save()
		return redirect('/Plants')
	else:
		UserId=request.session['UserId']
		return render(request,'UserReviews.html',{'UserId':UserId})

def ViewReviews(request):
	review = Review.objects.all()
	print(review)
	return render(request,'ViewReviews.html',{'review':review})

def customers(request):
	view = UserRegister.objects.all()
	return render(request,'customers.html',{'view':view})


def delete(request,id):
	delreview = Review.objects.get(id=id)
	delreview.delete()
	return render(request,'ViewReviews.html',{})

def delete_1(request,id):
	delview = UserRegister.objects.get(id=id)
	delview.delete()
	return render(request,'customers.html',{})

def Chatpages(request):
	
	return render(request,'Chatpages.html',{})

class Message(View):

	def post(self, request):
		msg = request.POST.get('text')
		response = chatbot_response(msg)
		print(response)
		valid=validators.url(response)
		if valid==True:
			data1 = 'True'
			data = {
			'respond': response,'respond1':data1
			}
			return JsonResponse(data)
		else:
			data1 = 'False'
			data = {
			'respond': response,'respond1':data1
			}
			return JsonResponse(data)
		

		#return HttpResponse('data')


	def clean_up_sentence(sentence):
		sentence_words = nltk.word_tokenize(sentence)
		sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words]
		return sentence_words

	def bow(sentence, words, show_details=True):
		sentence_words = clean_up_sentence(sentence)
		bag = [0] * len(words)
		for s in sentence_words:
			for i, w in enumerate(words):
				if w == s:
					bag[i] = 1
					if show_details:
						print("found in bag: %s" % w)
		return (np.array(bag))


	def predict_class(sentence, model):
		p = bow(sentence, words, show_details=False)
		print(p)
		res = model.predict(np.array([p]))[0]
		print(res)
		ERROR_THRESHOLD = 0.25
		results = [[i, r] for i, r in enumerate(res) if r > ERROR_THRESHOLD]
		results.sort(key=lambda x: x[1], reverse=True)
		return_list = []
		for r in results:
			return_list.append({"intent": classes[r[0]], "probability": str(r[1])})
		return return_list

	def getResponse(ints, intents_json):
		tag = ints[0]['intent']
		list_of_intents = intents_json['intents']
		for i in list_of_intents:
			if (i['tag'] == tag):
				result = random.choice(i['responses'])
				print(result)
				break
		return result

	def chatbot_response(msg):
		ints = predict_class(msg, model)
		res = getResponse(ints, intents)
		print(res)
		
		return res
