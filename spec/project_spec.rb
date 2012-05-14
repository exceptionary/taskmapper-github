require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe TaskMapper::Provider::Github::Project do

  before(:all) do 
    @repo_name = "tmtest-repo"
    @returned_repo = "taskmapper-user/tmtest-repo"
    @klass = TaskMapper::Provider::Github::Project
  end

  before(:each) do
    @github = TaskMapper.new(:github, :login => 'taskmapper-user', :password => 'Tm123456')
  end

  it "should be able to load all projects" do
    stub_get('https://taskmapper-user:Tm123456@api.github.com/users/taskmapper-user/repos', 'projects.json')
    stub_get('https://taskmapper-user:Tm123456@github.com/api/v2/json/organizations/repositories', 'repositories.json')
    @projects = @github.projects
    @projects.should be_an_instance_of(Array)
    @projects.first.should be_an_instance_of(@klass)
  end

  it "should be able to load all projects based on an array of name(id)" do 
    stub_get('https://taskmapper-user:Tm123456@api.github.com/repos/taskmapper-user/tmtest-repo', 'project.json')
    @projects = @github.projects([@repo_name])
    @projects.should be_an_instance_of(Array)
    @projects.first.should be_an_instance_of(@klass)
    @projects.first.id.should == @returned_repo
  end

  it "should be able to load a single project based on a single name(id)" do 
    @project = @github.projects(@repo_name)
    @project.should be_an_instance_of(@klass)
    @project.id.should == @returned_repo
  end

  it "should be able to find by name(id)" do
    @project = @github.project(@repo_name)
    @project.should be_an_instance_of(@klass)
    @project.id.should == @returned_repo
  end

  it "should be able to find by attributes" do
    @projects = @github.projects(:name => 'tmtest-repo')
    @projects.should be_an_instance_of(Array)
    @projects.first.id.should be_eql(@returned_repo)
  end
end

