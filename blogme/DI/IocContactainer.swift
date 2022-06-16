//
//  IocContactainer.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import Swinject

func buildContainer() -> Container {
    
    let container = Container()
    
    container.register(APIClientProtocol.self){ _ in
            return APIClient()
        }.inObjectScope(.container)
    
    return container

}
