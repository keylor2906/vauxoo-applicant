"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Metodo para evaluar si un numero es primo o no
        """
        if num_int < 2:
            return False
        else:
            #Ciclo donde se evaluaran las distintas divisiones del numero
            for count in range(2, num_int):
                #Evaluacion del numero
                if (num_int % count) == 0:
                    #En caso de ser divisible entre otro numero, no es primo
                    return False
            #En caso de no ser divisible entre otro numero, es primo
            return True
