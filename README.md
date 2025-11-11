# telas_cadastro

Flutter Auth UI Template

Este projeto é um template completo de UI de autenticação em Flutter, contendo todas as telas essenciais de um fluxo moderno de login. Ideal para quem quer estudar, praticar ou apresentar um portfólio de interfaces profissionais.

✅ Funcionalidades do Projeto

# Este template inclui todas as telas base de um app real:

✅ Splash Screen (com timer automático)
✅ Onboarding com PageView + animações de Fade 
✅ Botões Sign In / Sign Up 
✅ Tela de Login com BLoC 
✅ Tela de Cadastro com BLoC 
✅ Recuperação de senha (4 etapas) 
✅ Navegação usando rotas nomeadas

  
# Todas as telas seguem o mesmo padrão visual: cores, tipografia, bordas e espaçamentos.

🎨 Tecnologias e Padrões Usados

  ✅ Flutter 3.x

  ✅ Navegação com Navigator.push e pushReplacement

  ✅ Widgets personalizados e estilos consistentes

  ✅ Flutter BLoC (para Sign In e Sign Up)

🔰 Estrutura organizada por pastas:

 🔘 /features → Telas e fluxos

 🔘 /common.constants → Cores e estilos globais

 🔘 /assets/images → Imagens do projeto


📂 Estrutura de Pastas

lib/
├─ app.dart
├─ main.dart
├─ common.constants/
│ └─ app_colors.dart
├─ features/
│ ├─ Splash/
│ │ └─ splash_page.dart
│ ├─ Onboarding/
│ │ └─ onboarding_page.dart
│ ├─ Sign/
│ │ ├─ sign_in_page.dart
│ │ └─ sign_in_bloc.dart
│ ├─ SignUp/
│ │ ├─ sign_up_page.dart
│ │ └─ sign_up_bloc.dart
│ ├─ Passoword/
│ │ ├─ check_email.dart
│ │ ├─ password_page.dart
│ │ └─ password_changed.dart

🎨 Personalização

Este template permite ajustes rápidos:

  🔘 Alterar cores no arquivo app_colors.dart

  🔘 Alterar imagens do onboarding em assets/images

  🔘 Ajustar textos direto nos slides do Onboarding


▶️ Como Rodar o Projeto
  git clone https://github.com/SEU_USUARIO/telas_cadastro.git
  cd telas_cadastro
  flutter pub get
  flutter run
 

🌐 Propósito deste Projeto

Este projeto foi criado unicamente para:

  🔘 estudo de UI em Flutter

  🔘 criação de portfólio no GitHub

  🔘 prática de layouts modernos

  🔘 demonstração de habilidades em navegação e design mobile

Não contém integração com API ou backend.

🤝 Contribuições

  🔘 Sinta-se livre para:

  🔘 adicionar animações

  🔘 melhorar cores e tipografia

  🔘 criar novas telas (ex.: home page, perfil, dashboard)

  🔘 transformar em template público no pub.dev
  
👨‍💻 Autor

Projeto desenvolvido por Ruben Miguel como prática de UI e navegação em Flutter.

Se quiser aprimorar este template, fique à vontade para abrir PRs ou sugestões.

📩 Contato

Para dúvidas ou melhorias, entre em contato ou abra uma issue no repositório.

Feito com Flutter 💙


