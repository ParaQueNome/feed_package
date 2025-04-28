
---

# 📦 feed_package

Pacote para gerenciar feeds de posts com suporte a upload de arquivos e widgets customizados para comentários funcionais.

## ✨ Sobre

O `feed_package` é uma biblioteca Flutter que fornece:

- Funcionalidades para **inserir posts** em formato de feed.
- **Widgets customizados** prontos para exibir e interagir com comentários.
- Serviço de **upload de arquivos** associado aos posts.

Tudo de forma modular, limpa e pronta para integrar diretamente no seu app!

---

## 🚀 Funcionalidades

- **Insert Post**: Insere novos posts com a opção de incluir arquivos (como imagens ou documentos).
- **Upload de Arquivos**: Arquivos são enviados para o bucket de armazenamento e associados automaticamente ao post.
- **Feed Widget Customizado**: Widgets prontos para exibir feed com comentários funcionais (enviar, visualizar e interagir).

---

## 🔥 Instalação

Adicione o `feed_package` ao seu `pubspec.yaml`:

```yaml
dependencies:
  feed_package:
    git:
      url:https://github.com/ParaQueNome/feed_package.git
```

---

## 🛠️ Como Usar

### 1. Inicializar o `FeedService`

Use o `FeedService` para inserir posts:

```dart
final feedService = ref.read(feedServiceProvider);

await feedService.insertBucket(
  file, // Um File do Dart:io
  feedModel, // Um objeto FeedModel
);
```

### 2. Usar os Widgets de Feed

Basta utilizar os widgets disponíveis para exibir o feed e comentários.  
(Em breve exemplo de código aqui — você pode completar depois com seu widget específico!)

---

## 📂 Estrutura

- `FeedService`: Serviço responsável por upload de arquivo + inserção de post.
- `FeedModel`: Modelo de dados para os posts.
- `Widgets`: Componentes prontos para feed e comentários.

---

## 📋 Requisitos

- Flutter SDK >= 3.0.0
- Riverpod para gerenciamento de estado
- Dependências como `riverpod_annotation` e `flutter_riverpod`

---

## 🤝 Contribuindo

Contribuições são bem-vindas!  
Sinta-se livre para abrir issues ou enviar pull requests.

---

## 📝 Licença

Este projeto está licenciado sob a licença MIT.

---

# 📸 Preview
*(Aqui você pode adicionar prints dos seus widgets funcionando depois, fica super legal!)*

---

# 🚀 Contato

Para dúvidas ou sugestões: [guiaugusto455@gmail.com] ou crie uma issue!

---

## ⚡ Resumo rápido

| Item | Status |
|:--|:--|
| Inserir Post com Upload | ✅ |
| Feed com Comentários | ✅ |
| Widgets Customizados | ✅ |
| Suporte a Arquivos | ✅ |

---
