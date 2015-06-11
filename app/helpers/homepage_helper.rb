module HomepageHelper
  
  # Retrieve a given user courses.
  def getCourses()
    @courses = []
    CourseUser.where(user_id: session[:user_id]).find_each do |cu|
      Course.where(id: cu.course_id).find_each do |c|
        @courses.push(c)
      end
    end
    
    return @courses
  end
  
  # Retrieve a given course clusters.
  def getClusters(courseId)
    @clusters = []
    CourseCluster.where(course_id: courseId).find_each do |cc|
      Cluster.where(id: cc.cluster_id).find_each do |c|
        @clusters.push(c)
      end
    end
    
    return @clusters
  end
  
  # Retrieve a given cluster units.
  def getUnits(clusterId)
    @units = []
    ClusterUnit.where(cluster_id: clusterId).find_each do |cu|
      Unit.where(id: cu.unit_id).find_each do |u|
        @units.push(u)
      end
    end
    
    return @units
  end
  
end