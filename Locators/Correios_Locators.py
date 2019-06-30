__author__ = 'Brito'


class Locator:
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

# define page related method here
# to return xpath or to do user operation


def get_search_zip_address_button():
    xpath = "(//div[@class= 'acao'])[2]//input[@class= 'acesso-busca-submit']"
    return xpath


def get_search_text_field():
    xpath = "//*[@id='Geral']/div/div/span[2]/label/input"
    return xpath


def get_search_button():
    xpath = "//input[@value= 'Buscar']"
    return xpath


def get_result_zip_search():
    xpath = "//*[contains(text(),'Rua Augusto de Carvalho Asbahr')]"
    return xpath


def get_result_address_search():
    xpath = "//*[contains(text(),'30640-100')]"
    return xpath


def get_invalid_zip_code_search():
    xpath = "//*[contains(text(),'DADOS NAO ENCONTRADOS')]"
    return xpath

