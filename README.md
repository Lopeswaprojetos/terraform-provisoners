# Terraform Provisioners com AWS

Este README fornece um guia de como utilizar Terraform Provisioners para gerenciar recursos na AWS . Este projeto destina-se a ilustrar o uso prático dos provisioners do Terraform para configurar e gerenciar recursos de infraestrutura na Amazon Web Services (AWS), como instâncias EC2, grupos de segurança, e mais.

## Visão Geral

Os Provisioners do Terraform são ferramentas poderosas que permitem executar scripts em máquinas locais ou remotas, tanto na criação quanto na destruição de recursos. Eles são essenciais para tarefas que não podem ser realizadas diretamente através da configuração de recursos do Terraform. No contexto da AWS, isso pode incluir a configuração inicial de instâncias EC2, ajustes de grupos de segurança, ou automação de deployment de aplicações.

## Pré-requisitos

Antes de começar, você precisará:

- Ter o Terraform instalado na sua máquina.
- Possuir credenciais de acesso à AWS configuradas, seja através do AWS CLI ou por variáveis de ambiente.
- Ter conhecimento básico sobre a sintaxe e operação do Terraform, bem como conceitos fundamentais da AWS.

## Como Usar

1. **Clone o Projeto**: Primeiro, clone o repositório para sua máquina local usando `git clone https://github.com/Lopeswaprojetos/terraform-provisioners.git`.

2. **Configuração Inicial**: Navegue até a pasta do projeto clonado e revise os arquivos de configuração do Terraform (`*.tf`) para entender a estrutura dos recursos que serão criados ou gerenciados.

3. **Inicialize o Terraform**: Execute `terraform init` para inicializar o diretório de trabalho do Terraform, o que prepara seu projeto para execução.

4. **Plano de Execução**: Antes de aplicar as mudanças, é recomendável executar `terraform plan` para revisar as alterações que serão realizadas na sua infraestrutura AWS.

5. **Aplicação dos Recursos**: Utilize `terraform apply` para criar ou modificar os recursos definidos em seus arquivos de configuração. O Terraform solicitará confirmação antes de proceder com as mudanças.

6. **Provisioners**: Os scripts e ações definidos nos provisioners serão executados neste ponto, configurando seus recursos conforme necessário.

7. **Destruir Recursos**: Quando não precisar mais dos recursos, você pode liberá-los executando `terraform destroy`, que também solicitará sua confirmação antes de proceder.

## Exemplos de Provisioners

O projeto inclui exemplos de uso de provisioners locais e remotos, permitindo ver na prática como automatizar tarefas de configuração de instâncias EC2 e outros recursos na AWS.

- **Provisioners Locais**: Podem ser usados para executar scripts na sua máquina local que afetem os recursos na AWS de alguma forma.
- **Provisioners Remotos**: Permitem executar scripts diretamente em instâncias EC2 para configuração ou setup inicial.

## Conclusão

Utilizar Terraform Provisioners em conjunto com a AWS permite uma grande flexibilidade e automação na gestão de infraestrutura como código. Este projeto oferece uma base sólida para explorar essas capacidades e integrá-las aos seus próprios projetos de infraestrutura.

Lembre-se de revisar a documentação oficial do Terraform e da AWS para mais detalhes sobre recursos específicos e melhores práticas.
