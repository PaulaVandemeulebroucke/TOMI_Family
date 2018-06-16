class PagesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home, :signupstudents, :signupparents, :CGU ]
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
  def infos
  end
  def ose
  end
  def CGU
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
  def bourse
  end
  def apl
  end
  def aideslogement
  end
  def aidesregionales
  end
  def aidespourpartir
  end
  def aidestransports
  end
  def aidesmaster
  end
  def aidespremieremploi
  end
  def aidesartistes
  end
  def aidesmerite
  end
  def aidesurgences
  end
  def aidesautres
  end
  def dropdown_HDF
  end
  def dropdown_IDF
  end
  def dropdown_Normandie
  end
  def dropdown_Bretagne
  end
  def dropdown_PDLL
  end
  def dropdown_CVDL
  end
  def dropdown_BFC
  end
  def dropdown_GE
  end
  def dropdown_NA
  end
  def dropdown_ARA
  end
  def dropdown_Occitanie
  end
  def dropdown_PACA
  end
  def dropdown_Paradis_francais
  end
end
