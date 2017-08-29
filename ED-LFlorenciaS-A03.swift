import Foundation

class Busquedas 
{
var vector: [Int] = [] //Atributo
func CrearVector(tamaño:Int)->[Int]
{
    var vector:[Int] = [Int]()
    for _ in 0...(tamaño-1)  //se corre el for y se va llenando  el array con datos random ,el %100 es para que aparezcan números enteros
{
    vector.append(random() % 100) //random para la plataforma de IBM
        }
        return vector
        }
func  getVector()->[Int]   //Getter
{
return self.vector
}

    func MostrarVector() 
    {
    let valor:Int = self.vector.count-1 //-1 para evitar un excepción
    var imprimir = "Valores del array:"   
    for(valor) in 0...valor
{
    imprimir+=String(self.vector[valor])
	imprimir+=" , "//Se recorre el for y se va imprimiendo
    
    }
    print(imprimir)
    }

   func setVector(vector:[Int])  //Setter
   {
    self.vector = vector
    }
    func MostrarF(valor: Int) //Parametro entero
	{
        if(valor==(-1))
		{
			print("El dato no se encuetra dentro del vector")    //Si recibe -1 de clases hijas quiere decri que no se encuentra en el vector
		}
        else
        {
			print("El dato  se encuentra dentro del  vector",valor) //Si es otro número se devuelve la posición
		}
    }

    
    func busqueda(valor: Int)->Int
    {
    preconditionFailure("Metodo abstracto a utilizar") //Método abstracto
    }
    }
class binaria: Busquedas,ordenamiento
{
 override func busqueda(valor: Int) -> Int   
    {
var inicio: Int = 0
var fin: Int = self.vector.count-1    //Atributos 
var centro: Int = (inicio+fin)/2  
	
while(inicio < fin)
    {
let posicionCentro:Int = self.vector[centro] 
if(posicionCentro == valor) //Si posición es igual al valor se regresa centro
{
return centro 
     }
else
{
if(valor < posicionCentro) //Si el valor es menor al de la posición  fin se vuelve el centro por que quiere decir que está de ese "lado"
{
fin = centro
centro = (inicio + fin)/2
      } 
else 
{
inicio = centro;
centro = (inicio + fin)/2;  //De lo contrario el incio sera el centro por que está del otro "lado"
    }
     }  
    }
return -1
     
	}
func intercambio(p1:Int, p2:Int)  //Función intercambio recibe 2 puntos
	{
let auxiliar = self.vector[p1]
self.vector[p1] = self.vector[p2]  //Hace los intercambios de la mayoría de los metódos de ordenamiento
self.vector[p2]=auxiliar
	func inserccion()
	{
var array:[Int]=self.vector 
var auxiliar : Int 
var j : Int = 0
var k : Int
for i in 1...vector.count-1
{
k = i
auxiliar=array[]
k=k-1
while(j>=0 && array[j]>auxiliar)
{
array=array
j=j-1
}
array]=auxiliar
}
self.vector = auxiliar
}
func burbuja()
{
var array: [Int]=self.array         
for i in 0...array.count-1{
for j in 0...array.count-i-1
{
	if(array[j+1]<array[j])
{
intercambio(p1:j+1,p2:j)
}
}
  }
self.vector = vector
}
func quickSort(inicio:Int, termino:Int) 
{
var vector : [Int] = self.vector
var i: Int = inicio
var j: Int = termino
let pivote = vector[inicio]
while(i<=j)
{
while(vector[i]<=pivote && i<j)
	{
		i=i+1
}	while(vector[j]>pivote)
{
	j=j-1
}
if(i<j)
	{
intercambio(i,j)
i=i+1
j=j-1
	}
}
vector[inicio] = vector [j]
vector [j] = pivote
if(inicio<j-1)
{
quickSort(inicio:inicio, termino:j-1)
}
if(i<fin)
{
quickSort(inicio:j+1, termino:termino)
}
self.vector = vector
}
func quickSort (incio:Int, termino:Int) 
{
var array : [Int] = self.array
var i: Int = inicio
var j: Int = termino
let pivote = array[inicio]
while(i<=j){
while(array[i]<=pivote && i<j)
	{
i=i+1
	}
while(array[j]>pivote)
{
j=j-1
}
if(i<j)
{
intercambio(p1:j,p2:i)
i=i+1
j=j-1
}
}
array[inicio] = array [j]
array [j] = pivote
if(inicio<j-1)
{
quickSort(inicio:inicio, termino:j-1)
}
if(i<termino)
{
quickSort(inicio:j+1, termino:termino)
}
self.array = array
	}
func mergeSort (inicio:Int, termino:Int) {   //Se reciben 2 posiciones 
var array : [Int] = self.array     //Se crea el array
if(termino-inicio =>0) {//Si el termino -incio es igual o mayor a cero es decir que existe un elemento y no es necesario ordenar
}
else{
let medio = (inicio+termino)/2  //Se divide entre 2 para encotrar el de enmedio
mergeSort(inicio:inicio, termino:medio)  //Se utiliza la recursividad para ordenar de nuevo los arrays adyacentes
mergeSort(inicio:medio,termino:termino)
let posicion1: Int = inicio
let posicion2: Int = medio  //Se definen las posicions
let posicion3: Int = 0
var arrayAuxiliar : [Int] = []
while(posicion1<medio && posicion2<termino){  //Mientras la posicion inicial es menor que la de enmedio y la posicion 2 es menor que la de temrino se entra al ciclo
if(posicion1<medio && posicion2<termino){  //Si la posisicion 1 es menor que la de enmedio y la posicion 2 es menor que la del temrino se sigue ingresando y buscando
if(array[posicion3+1]<array[posicion2+1]){    //Si la posición 3 siguientes es menor que la posición 2 siguiente
arrayAuxiliar[posicion3+1]=array[posicion1+1]  //Si la posición 3 siguientes es igual a la posición 1 siguiente
}
else{
arrayAuxiliar[posicion3+1]=array[posicion2+1] //La posicion 3 siguiente  es igual a la siguiente posicion 2 
}
}else if (posicion1<medio){
arrayAuxiliar[posicion3+1]=(arrayAuxiliar[posicion1]) //Si no la posicion 3 siguiente es la posición 1
	}
	else{
arrayAuxiliar[posicion3+1] = arrayAuxiliar[posicion2+1] //Si no  la siguiente posición 3 es la siguinete posición 2
}
}
}
self.array = array
}
	func seleccion (vector: [Int]) ->[Int]
	{
		var array : [Int] = vector //Cree otra variable para guardar el valor en una variblae
		var auxiliar : Int
		for i in 0...vector.count-1 //Se coore el primer arreglo con posición en i
		{
			var menor :Int = i;    //El valor menor se vuelve i
            for (j) in 1...vector.count-1  //Se coore j
			{
			if(vector[j]<array[menor]){  //si el valor en j es menor a la posición de menor
menor = j;
}
}
			auxiliar = array [i]   //auxiliar se convierte en la posición en i
array [i] = array [menor]   //la posición en i se vuelve menor
array [menor] = auxiliar    //Y menor se guarda en la posición auxiliar
    }
return vector            //Se devuelve el vector
}
}

protocol ordenamiento //Protocolo como interfaz en Java
{
	 func seleccion (vector : [Int]) -> [Int]
	func burbuja()
	func inserccion()
	func mergeSort(inicio:Int, termino:Int)
	func quickSort(inicio:Int, termino:Int)//
}

class secuencial: Busquedas
{
    override func busqueda(valor: Int) -> Int
    {
    let i:Int = self.vector.count-1 //Se recorre el arreglo si el valor es igual a la posición se regresa el valor de la posición si no se regresa un menos uno
    for i in 0...valor
{
   if(self.vector[i] == valor) // si se encuentra el valor se regresa la posición
{
	return i
}
  }
        return -1
   }
}

//Main

var secuential: secuencial = secuencial()
secuential.setVector(vector: secuential.CrearVector(tamaño: 50))
secuential.MostrarVector()
secuential.MostrarF(valor: secuential.busqueda(valor: 77))
var vector1: [Int] = [6,8,9,14,11,78,21,42,45]
var binario: binaria = binaria()
binario.setVector(vector: vector1)
binario.MostrarF(valor: binario.busqueda(valor:6))
binario.MostrarVector()
