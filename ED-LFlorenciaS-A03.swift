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
	 func seleccion (vector : [Int]) -> [Int]  //
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
