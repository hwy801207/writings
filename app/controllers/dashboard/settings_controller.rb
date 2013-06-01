class Dashboard::SettingsController < Dashboard::BaseController
  before_filter :require_creator

  def show
  end

  def update
    @space.update_attributes space_params
  end

  private

  def space_params
    params.require(:space).permit(:domain, :disqus_shortname, :full_name, :description)
  end
end
