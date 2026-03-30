# frozen_string_literal: true

DeviseTokenAuth.setup do |config|
  # Por padrão, os cabeçalhos de autorização serão alterados após cada solicitação.
  # O cliente é responsável por rastrear os tokens que estão mudando. Mude
  # isso para falso para impedir que o cabeçalho de autorização mude após cada
  # solicitação.
  config.change_headers_on_each_request = true

  # Por padrão, os usuários precisarão reautenticar após 2 semanas. Essa configuração
  # determina quanto tempo os tokens permanecerão válidos após serem emitidos.
  config.token_lifespan = 1.weeks

  # O valor de token_cost é definido como 10 por padrão. Para acelerar o teste,
  # você pode definir esse valor como 4. No entanto, é recomendado usar um valor
  # inferior a 10 em outras configurações.
  config.token_cost = Rails.env.test? ? 4 : 10

  # Define o número máximo de dispositivos simultâneos por usuário, que é 10 por
  # padrão. Após essa limitação for atingida, os tokens mais antigos serão removidos.
  # config.max_number_of_devices = 10

  # Quando você precisa fazer várias solicitações para a API ao mesmo tempo, cada
  # solicitação do lote precisará compartilhar o mesmo token de autenticação.
  # Essa configuração determina quanto tempo as solicitações podem estar separadas
  # umas das outras enquanto ainda usam o mesmo token de autenticação.
  config.batch_request_buffer_throttle = 5.seconds

  # Essa rota será o prefixo para todos os callbacks de redirecionamento do OAuth2.
  # Por exemplo, usando o padrão '/omniauth', o provedor do OAuth2 do GitHub
  # redirecionará com êxito a autenticação para '/omniauth/github/callback'.
  # config.omniauth_prefix = "/omniauth"

  # Por padrão, não é necessário enviar a senha atual para atualizar a senha.
  # Descomente para exigir que o parâmetro current_password seja verificado antes
  # de atualizar todos os atributos. Defina-o como :password se você quiser que
  # ele seja verificado apenas se a senha for atualizada.
  # config.check_current_password_before_update = :attributes

  # Por padrão, apenas o suporte ao token de portador (Bearer Token) é implementado
  # por padrão. Se você deseja integrar-se com autenticação do Devise herdada,
  # você pode fazer isso habilitando essa bandeira. NOTA: Esse recurso é altamente
  # experimental!
  # config.enable_standard_devise_support = false

  # Por padrão, o DeviseTokenAuth não envia email de confirmação, mesmo quando
  # incluindo o módulo confirmable do Devise. Se você deseja usar o módulo
  # confirmable do Devise e enviar email, defina-o como true. (Essa é uma
  # configuração para compatibilidade)
  # config.send_confirmation_email = true
end
