class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def edit? # so o dono do bookmark pode editar
      # user ==> current_user
      # record ==> o que estamos passando , no caso bookmark(comentario)
      # record.user == user
      is_owner? # refatorando
    end

    def update?
      is_owner?
    end

    def destroy?
      is_owner
    end
  end

  private

  def is_owner?
    record.user == user
  end
end
