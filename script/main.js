function Engage() {
	hero_select.addEventListener("change", function() {
		SelectHero(this.value);
	});

	mob_select.addEventListener("change", function() {
		SelectMob(this.value);
	});

	InitHeroes();
	InitMobs();
	SelectHero(1);
	SelectMob(1);
}

function InitHeroes() {
	var request = new getXMLHttp();

	if(!request) {
		alert("Your device does not support this feature.");
		return;
	}

	var url = "http://iamchristopher.ca/class/mobile/controller.php?init=hero";
	request.addEventListener("readystatechange", function() {
		switch(this.readyState) {
			case 4:
				var hero_options = JSON.parse(this.responseText),
					i = hero_options.length;

				while(i--) {
					hero_select.innerHTML += '<option value="' + hero_options[i].ID + '" ' + (hero_options[i].ID == 1 ? "selected" : "") + '>' + hero_options[i].Name + '</option>'
				}
				break;
		}
	});
	request.open("GET", url, true);
	request.send();
}

function InitMobs() {
	var request = new getXMLHttp();

	if(!request) {
		alert("Your device does not support this feature.");
		return;
	}

	var url = "http://iamchristopher.ca/class/mobile/controller.php?init=mob";
	request.addEventListener("readystatechange", function() {
		switch(this.readyState) {
			case 4:
				var mob_options = JSON.parse(this.responseText),
					i = mob_options.length;

				while(i--) {
					mob_select.innerHTML += '<option value="' + mob_options[i].ID + '" ' + (mob_options[i].ID == 1 ? "selected" : "") + '>' + mob_options[i].Name + '</option>'
				}
				break;
		}
	});
	request.open("GET", url, true);
	request.send();
}

function DisplayHero(data) {
	var hero = JSON.parse(data);

	hero_bio.innerText = hero[0].Biography;
	hero_image.src = "image/" + hero[0].Image;
	
	hero_health.innerHTML = hero[0].Health;
	hero_speed.innerText = hero[0].Speed;
	hero_stamina.innerText = hero[0].Stamina;
	hero_defense.innerText = hero[0].Defense;
	
	hero_might.innerText = hero[0].Might;
	hero_knowledge.innerText = hero[0].Knowledge;
	hero_willpower.innerText = hero[0].Willpower;
	hero_awareness.innerText = hero[0].Awareness;
}

function DisplayMob(data) {
	var mob = JSON.parse(data);

	mob_bio.innerText = mob[0].Biography;
	mob_image.src = "image/" + mob[0].Image;
	
	mob_health.innerHTML = mob[0].Health;
	mob_speed.innerText = mob[0].Speed;
	mob_defense.innerText = mob[0].Defense;
	
	mob_m_health.innerHTML = mob[0].MHealth;
	mob_m_speed.innerText = mob[0].MSpeed;
	mob_m_defense.innerText = mob[0].MDefense;
}

function SelectHero(ID) {
	var request = new getXMLHttp();

	if(!request) {
		alert("Your device does not support this feature.");
		return;
	}

	var url = "http://iamchristopher.ca/class/mobile/controller.php?init=hero&id=" + ID;
	request.addEventListener("readystatechange", function() {
		switch(this.readyState) {
			case 1:
				$.mobile.showPageLoadingMsg();
				break;
			case 4:
				$.mobile.hidePageLoadingMsg();
				DisplayHero(this.responseText);
				break;
		}
	});
	request.open("GET", url, true);
	request.send();
}

function SelectMob(ID) {
	var request = new getXMLHttp();

	if(!request) {
		alert("Your device does not support this feature.");
		return;
	}

	var url = "http://iamchristopher.ca/class/mobile/controller.php?init=mob&id=" + ID;
	request.addEventListener("readystatechange", function() {
		switch(this.readyState) {
			case 1:
				$.mobile.showPageLoadingMsg();
				break;
			case 4:
				$.mobile.hidePageLoadingMsg();
				DisplayMob(this.responseText);
				break;
		}
	});
	request.open("GET", url, true);
	request.send();
}

function getXMLHttp() {
	var xmlHttp;
	try  {
		xmlHttp = new XMLHttpRequest();
	}
	catch(e)  {
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch(e){
			try {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e) {
				alert("Your browser does not support AJAX!")
				return false;
			}
		}
	}
	
	return xmlHttp;
}

window.onload = Engage;