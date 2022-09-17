class SessionPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all # isso vai executar o policy scope no controller index do modelo
      scope.where(user: user) # disse q o user é o current user, ai n precisa fazer autorização 1 por 1
    end

    def show
      true
    end

    def new
      true
    end

    def create
      true
    end

    def destroy?
      is_owner
    end

    # private

    def is_owner?
      record.user == user
    end
  end
end
