class EnablePgcryptoExtension < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extensions.include?('pgcrypto')
  end
end
