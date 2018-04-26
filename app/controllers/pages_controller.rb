class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :signupstudents, :signupstudents2, :signupparents ]
  def home
  end

  def homepage
  end

  def homepage_parents
  end

  def favorites
    @jobs = current_user.job_likes.map { |like| Job.find(like.votable_id) }
    # @jobs = current_user.get_voted Job
  end

  def suggestion
    # @interests = current_user.interest_likes.map { |like| Interest.find(like.votable_id) }
    @interests = current_user.get_voted(Interest)
    sql_request = @interests.map {|interest| "interest_id = #{interest.id}" }.join(' OR ')
    @jobs = Job.joins(:job_interests).where("#{sql_request}").uniq
  end

  def signupstudents
  end

  def signupstudents2
  end

  def infos
  end

  def entretien
  end

  def financements
  end

  def conseillers
  end

  def outils
  end

  def changements
  end

  def un_cv_parfait
  end

  def lettre_de_motivation_qui_cartonne
  end

  def je_vais_tout_dechirer
  end

  def je_sors_du_lot
  end

  def bourse_et_APL
  end

  def les_autres_aides
  end

  def le_pret_bancaire
  end

  def signupparents
  end

  def tout_savoir_sur_orientation
  end

  def epanouissement_au_quotidien
  end

  def energies_que_je_transmets
  end

  def devenir_mentor
  end
end

