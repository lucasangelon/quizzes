# Trying to merge all the course information into one object.
class CourseObject
  def initialize(id)
     @id = id
     @name = Course.where(id: @id).name
     
     setClusters
     setUnits
  end
  
  public
  def setClusters
      @clusters = []
      
     CourseCluster.where(course_id: @id).find_each do |cl|
        @tempId = cl.cluster_id
        @tempName = Cluster.where(id: @tempId).name
        @clusters.push(@tempId, @tempName)
     end
  end
  
  public
  def setUnits
      @units = []
      
     @clusters.each do |c|
        @tempId = ClusterUnit.collect(cluster_id: c[0]).unit_id
        @tempName = Unit.where(id: @tempId).name
        @units.push(@tempId, @tempName)
     end
  end
end