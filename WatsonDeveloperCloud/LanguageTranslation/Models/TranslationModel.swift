/**
 * Copyright IBM Corporation 2015
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import ObjectMapper

extension LanguageTranslation {
    
    public struct TranslationModel: Mappable {
        public var baseModelID: String?
        public var customizable: Bool?
        public var defaultModel: Bool?
        public var domain: String?
        public var modelID: String?
        public var name: String?
        public var owner: String?
        public var source: String?
        public var status: String?
        public var target: String?
        
        public init?(_ map: Map) {}
        
        public mutating func mapping(map: Map) {
            baseModelID     <- map["base_model_id"]
            customizable    <- map["customizable"]
            defaultModel    <- map["default"]
            domain          <- map["domain"]
            modelID         <- map["model_id"]
            name            <- map["name"]
            owner           <- map["owner"]
            status          <- map["status"]
            target          <- map["target"]
        }
    }
}