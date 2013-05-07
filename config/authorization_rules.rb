authorization do
  role :admin do
    has_permission_on :energies, to: :manage
  end

  role :guest do
    has_permission_on :gemstones, to: [:read, :new, :edit, :create, :update]
    has_permission_on :colors, to: [:read]
    has_permission_on :energies, to: [:read]
    has_permission_on :chakras, to: [:read]
    has_permission_on :links, to: [:read]
    has_permission_on :linktypes, to: [:read]
    has_permission_on :image, to: [:read]
  end
end

privileges do
  privilege :manage, includes: [:create, :read, :update, :delete]
  privilege :read, includes: [:index, :show]
  privilege :create, includes: :new
  privilege :update, includes: :edit
  privilege :delete, includes: :destroy
end
