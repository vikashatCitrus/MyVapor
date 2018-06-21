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
        return [Person(name: "Tariq", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_f25oekursi" ,mobileNumber:"91-5901712017",userName:"9159yfdo14tv120"),Person(name: "Musa Bhai", age: 26 ,gender:"female" , imageFileId:"1_1_7_G_I_I3_f25oekursj" ,mobileNumber:"91-4901712017",userName:"9149p3g0fsjk120"),Person(name: "Musa Bhai", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f25oekursl" ,mobileNumber:"91-3901712017",userName:"9139c0ux9vcr120"),Person(name: "Rajiv", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f25oekursp" ,mobileNumber:"91-2901712017",userName:"9129tsbystl2120"),Person(name: "Swati Thapa", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f25oekurss" ,mobileNumber:"91-1101712017",userName:"9111u8mg4yz4120"),Person(name: "Mahesh", age: 26 ,gender:"male" , imageFileId:"1_1_7_G_I_I3_f25oekursu" ,mobileNumber:"91-1111712017",userName:"9111uetlsqht120")]
    }
    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
