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
        return [Person(name: "INSHU DUDEJA", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_f15gfw42v4" ,mobileNumber:"91-9717098526",userName:"9197ajukt611985"),Person(name: "Aman", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_eyow4il4rh" ,mobileNumber:"91-8288011172",userName:"918231t90ujj111"),Person(name: "Rajiv", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f19rwfpxa0" ,mobileNumber:"1-6195504830",userName:"1619u5rlvml6048")]
    }
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
