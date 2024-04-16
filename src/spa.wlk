object spa {
	method atender(persona) {
		persona.recibirMasaje()
		persona.darseBanioDeVapor()
	}
}

// PERSONAS
object olivia {
	var concentracion = 6
	
	method gradoDeConcentracion() = concentracion
	method recibirMasaje() {
		concentracion += 3
	}
	method discute() {
		concentracion -= 1
	}
	method darseBanioDeVapor() {}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasaje() {esFeliz = true}
	method darseBanioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	method tomarAgua() {
		tieneSed = false
	}
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	method corre() {
		peso -= 300
	}
	method veElNoticiero() {
		esFeliz = false
	}
	method estaPerfecto() {

		return (esFeliz &&
			!tieneSed && 
			peso.between(50000,70000)
		)
	}
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.veElNoticiero()
	}
}

object ramiro {
	var nivelDeConstractura = 3
	var pielGrasosa = true
	
	method recibirMasaje() {
		nivelDeConstractura = 0.max(nivelDeConstractura - 2)
	}
	method darseBanioDeVapor() {
		pielGrasosa = false
	}
	method comeUnBigMac() {
		pielGrasosa = true
	}
	method bajaALaFosa() {
		pielGrasosa = true
		nivelDeConstractura += 1
	}
	method juegaAlPaddle() {
		nivelDeConstractura += 3
	}
	method diaDeTrabajo() {
		self.bajaALaFosa()
		self.comeUnBigMac()
		self.bajaALaFosa()
	}
}
