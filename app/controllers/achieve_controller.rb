class AchieveController < ApplicationController
  def start
    render('start.html.erb')
  end

  def class1
    @EmmettLevel=1
    @EmmettExp=30
    @EmmettStars=0

    if @EmmettExp+@EmmettStars*10 >=100
      @EmmettLevel = @EmmettLevel+1
      @EmmettExp=@EmmettExp-100
    end
    if @EmmettStars==0
      @Star1="/Star.png"
      @Star2="/Star.png"
      @Star3="/Star.png"
    elsif @EmmettStars==1
      @Star1="/StarFilled.png"
      @Star2="/Star.png"
      @Star3="/Star.png"
    elsif @EmmettStars==2
      @Star1="/StarFilled.png"
      @Star2="/StarFilled.png"
      @Star3="/Star.png"
    else
      @Star1="/StarFilled.png"
      @Star2="/StarFilled.png"
      @Star3="/StarFilled.png"

    end


    render('class1.html.erb')
  end

  #TODO figure out how to add html based on the amount of students in the class


  def getClassComponents(classlist,classexp,stars)
    @Students = classlist
    @Exp= classexp
    @Level=[]
    @Stars= []
    @Star1 = []
    @Star2 = []
    @Star3 = []

    (0...@Students.length).step(1) do |k|
      @Level << classexp[k]/100
      @Exp[k]= classexp[k]%100
      @Stars << stars[k]
    end



              #######ADD STARS HERE TO THE CLASS


    (0...@Students.length).step(1) do |j|

    if @Stars[j]+@Stars[j]*10 >=100
       @Level[j] = @Level[j]+1
       @Exp[j]=@Exp[j]-100
    end

    if @Stars[j]==0
       @Star1[j]="/Star.png"
       @Star2[j]="/Star.png"
       @Star3[j]="/Star.png"
    elsif @Stars[j]==1
      @Star1[j]="/StarFilled.png"
      @Star2[j]="/Star.png"
      @Star3[j]="/Star.png"
    elsif @Stars[j]==2
      @Star1[j]="/StarFilled.png"
      @Star2[j]="/StarFilled.png"
      @Star3[j]="/Star.png"
    else
      @Star1[j]="/StarFilled.png"
      @Star2[j]="/StarFilled.png"
      @Star3[j]="/StarFilled.png"
    end

  end
  end

  def class2
    classstudents=["Spencer","James","Tommy","Daniel"]
    #TODO tie the class exp to the student names/accounts. hmmmmm
    classexp=[5010,390,10,440]
    #TODO make the stars a thing you can add to from another panel?
    classstars=[0,0,0,0]
    getClassComponents(classstudents,classexp,classstars)
    render('class2.html.erb')
  end

  def class3
    classstudents=["Caden","Alex H","Alexander R","Aren", "Joe", "Henry"]
    #TODO tie the class exp to the student names/accounts. hmmmmm
    classexp=[150,390,10,440,800,210]
    #TODO make the stars a thing you can add to from another panel?
    classstars=[0,0,0,0,0,0]
    getClassComponents(classstudents,classexp,classstars)
    render('class3.html.erb')
  end

  def class4
    classstudents=["Myhien"]
    #TODO tie the class exp to the student names/accounts. hmmmmm
    classexp=[660]
    #TODO make the stars a thing you can add to from another panel?
    classstars=[0]
    getClassComponents(classstudents,classexp,classstars)
    render('class4.html.erb')
  end








end
