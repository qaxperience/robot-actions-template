![poster](./.github/poster.png)

## Sobre

Repositório do treinamento: Testes contínuos em Robot Framework no Github Actions

## Techs
- Robot Framework
- Browser (Playwright)
- Python

## Como executar

1. Clonar o repositório, instalar as dependências
```
pip install -r requirements.txt

e rodar o comando: 

rfbrowser init

```

2. Executar testes em Headless
```
robot -d ./logs -v IS_HEADLESS:True tests
```

3. Executar testes em modo assistido
```
robot -d ./logs -v IS_HEADLESS:False tests
```

4. Executar report com Allure
```
1 - robot --listener allure_robotframework -d ./logs tests

2 - allure serve output/allure
```





