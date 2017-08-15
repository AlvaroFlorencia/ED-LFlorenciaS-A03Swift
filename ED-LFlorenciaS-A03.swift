import Foundation

class Busquedas 
{
var vector: [Int] = [] //Atributo
func CrearVector(tamaño:Int)->Int
{
    var vector:[Int] = [Int]()
    for _ in 0...(tamaño-1)  //se corre el for y se va llenando  el array con datos random ,el %100 es para que aparezcan números enteros
{
    vector.append(random() % 100)
        }
        return vector
        }
func  getVector()-> [Int]  //Getter
{
return self.vector
}

    func MostrarVector(vector:[Int]) 
    {
    let n:Int = self.vector.count-1 //-1 para evitar un excepción
    var string = "Valores del array:"   
    for(valor) in 0...n
{
    string+=String(self.vector[valor])  //Se recorre el for y se va imprimiendo
    string+=" , "
    }
    print(string)
    }

   func setVector(vector:[Int])  //Setter
   {
    self.vector = vector
    }
    func MostrarF(n: Int) //Parametro entero
	{
        if(n==(-1))
		{
			print("El dato no se encuetra dentro del vector")    //Si recibe -1 de clases hijas quiere decri que no se encuentra en el vector
		}
        else
        {
			print("El dato  se encuentra dentro del  vector + (n)") //Si es otro número se devuelve la posición
		}
    }

    
    func busqueda(n: Int)->Int
    {
    preconditionFailure("Metodo abstracto a utilizar") //Método abstracto
    }
    }
class binaria: Busquedas
{
 override func busqueda(valor: Int) -> Int   
    {
var inicio: Int = 0
var fin: Int = self.vector.count-1    //Atributos inicio,medio y fin
var centro: Int = (inicio+fin)/2  
	
while(inicio < fin)
    {
var posicionCentro:Int = self.vector[centro] 
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
}

class secuencial: Busquedas
{
    override func busqueda(valor: Int) -> Int
    {
    let n:Int = self.vector.count-1 //Se recorre el arreglo si el valor es igual a la posición se regresa el valor de la posición si no se regresa un menos uno
    for i in 0...n
{
            if(self.vector[i] == valor)
			{
				return i
			}
        }
        return -1
    }
}
//
var vector: [Int] = [1,2,3,4,5,6,7,8,9] //Arreglo en forma ordenada para pueda funcionar el binario
var binario1: binary = binary()
var secuencial1: secuencial = secuencial()
secuencial1.setVector(array: secuencial1.setVector(n: 30))
binario1.setVector(array: vector)
secuencial1.mostrarF(n: secuencial1.busqueda(item: 5))
binario1.mostrarF(n: binario1.busqueda(item:5))



