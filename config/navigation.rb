SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    primary.item :gemstones, 'Stenar', gemstones_path
    primary.item :colors, 'Färger', colors_path
    primary.item :chakras, 'Chakran', chakras_path
    primary.item :energier, 'Energier', energies_path

    primary.with_options(:if=>Proc.new {user_signed_in? }) do |inne|
      inne.item :links, 'Länkar', links_path
      inne.item :linktyopes, 'Länktyper', linktypes_path
      inne.item :users, 'Användare', users_path
      inne.item :profil, 'Min Profil', edit_user_registration_path
    end

    primary.with_options(:unless=>Proc.new {user_signed_in? }) do |ute|
      ute.item :login, 'Logga in', new_user_session_path
    end
  end
end
