extension ConstantDeclaration {
    public func javaScript(with indentLevel: Int) -> String {
        guard !isStatic else {
            // static properties must be translated in type layers
            return ""
        }
        
        if let expression = expression {
            return "\(indent(of: indentLevel))const \(name) = \(expression.javaScript(with: indentLevel));\n"
        } else {
            return "\(indent(of: indentLevel))const \(name);\n"
        }
    }
}

extension VariableDeclaration {
    public func javaScript(with indentLevel: Int) -> String {
        guard !isStatic else {
            // static properties must be translated in type layers
            return ""
        }
        
        if let expression = expression {
            return "\(indent(of: indentLevel))let \(name) = \(expression.javaScript(with: indentLevel));\n"
        } else {
            return "\(indent(of: indentLevel))let \(name);\n"
        }
    }
}
