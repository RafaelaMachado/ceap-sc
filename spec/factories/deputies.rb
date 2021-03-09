# frozen_string_literal: true

FactoryBot.define do
  factory :deputy do
    txNomeParlamentar { 'Jorge Goetten' }
    ideCadastro { 214694 }
    nuCarteiraParlamentar { '563' }
    cpf { '43927998915' }
    sgUF { 'sc' }
    sgPartido { 'PL' }
  end
end