# frozen_string_literal: true

FactoryBot.define do
  factory :cost do
    txtDescricao { 'COMBUSTÍVEIS E LUBRIFICANTES.' }
    txtFornecedor { 'SAO JOAO POSTOS' }
    txtCNPJCPF { '371.304.810/0016-0' }
    datEmissao { Time.current }
    vlrLiquido { 695.49 }
    urlDocumento { 'https://www.google.com/' }
    deputy { build(:deputy) }
  end
end