import Vapor
struct Person: Content {
    var name: String
    var age: Int
    var gender: String
    var imageFileId: String
    var mobileNumber: String
    var userName: String
    
   
}
/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    
   
    
    
    router.get("json") { req in
        return [Person(name: "Priya Khanna", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_f2b96774ld" ,mobileNumber:"91-9870210027",userName:"91980svht7n1100"),Person(name: "Anamika Rana", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_f2b96774li" ,mobileNumber:"91-9870210025",userName:"919814mnud3c100"),Person(name: "Akshay Kumar", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f2b96774ll" ,mobileNumber:"91-9870210029",userName:"9198ae75j3aa100")]
    }
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
