from telegram.ext import Updater, CommandHandler, CallbackQueryHandler
from config import TOKEN
import bot
from GraphVisualization import GraphVisualization
from fractions import Fraction as frac
import numpy as np


def main():
    # Establecemos una conexión entre nuestro programa y el bot.
    updater = Updater(TOKEN, use_context=True)  # Insertemos el Token del bot.
    dp = updater.dispatcher

    # Establecer los comandos que ejecutará el bot.
    dp.add_handler(CommandHandler("start", bot.start))
    dp.add_handler(CommandHandler("ayuda", bot.ayuda))
    dp.add_handler(CallbackQueryHandler(bot.menu, pattern="op1"))
    dp.add_handler(CallbackQueryHandler(bot.menu, pattern="op2"))
    dp.add_handler(CallbackQueryHandler(bot.menu, pattern="op3"))
    dp.add_handler(CallbackQueryHandler(bot.menu, pattern="op4"))
    dp.add_handler(CommandHandler("doc", bot.documento))
    dp.add_handler(CommandHandler("img", bot.image))
    dp.add_handler(CommandHandler("grafo", bot.grafo))
    dp.add_handler(CommandHandler("sec", bot.secuencia))

    # Iniciamos el bot.
    updater.start_polling()
    # Mantener al bot ejecutándose hasta que ocurra una interrupción.
    updater.idle()


if __name__ == '__main__':
    main()
    coeff = [1, -6, 9]
    texto = ""
    i = 0
    for raiz in np.roots(coeff):
        print(f"La parte real de {raiz} es {raiz.real}.")
        print(f"La parte compleja de {raiz} es {round(raiz.imag,2)}.")
        texto = texto + f"b_{i+1}*({raiz.real})^n"
        i += 1
        if raiz != np.roots(coeff)[-1]:
            texto += " + "
        print("\n")

    number = 0.25
    print(texto)
    """
    fraction = frac(number)
    print(number.as_integer_ratio())
    print(f"La respuesta es {frac(number).limit_denominator()}*n.")
    print(fraction + 1.25)
    grafo = GraphVisualization()
    grafo.addEdge(0, 2)
    grafo.addEdge(1, 2)
    grafo.addEdge(1, 3)
    grafo.addEdge(5, 3)
    grafo.addEdge(3, 4)
    grafo.addEdge(1, 0)
    grafo.visualize()
    
    """
