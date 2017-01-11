"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num_list):
        """
        Metodo que recibe de entrada una lista de numeros
        y regresa la suma de estos
        """
        # variable donde se guardara la suma de todos los numeros
        resultado = 0
        # ciclo donde se suman los numeros de la lista
        for num in num_list:
            # suma del valor a la variable resultado
            resultado = resultado + num
        # retorno del resultado de la suma de la lista de numeros
        return resultado
