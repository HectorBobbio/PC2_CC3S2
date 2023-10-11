class Nodo
    def initialize(data)
        @data = data
        @der = nil
        @izq = nil
    end
    attr_accessor :data, :der, :izq
end

class BinaryTree

    attr_accessor :root
    def initialize
        @root = nil
    end

    def << data
        # Si no hay nodos en el arbol, se agrega como raiz
        if @root == nil
            @root = Nodo.new(data)
        else
            # Se posiciona en el nodo indicado 
            nodo_padre = @root
            nodo_hijo = @root
            while nodo_hijo != nil
                nodo_padre = nodo_hijo
                if data > nodo_hijo.data
                    nodo_hijo = nodo_hijo.der
                else
                    nodo_hijo = nodo_hijo.izq
                end
            end
            # Se agrega el nodo como hijo del nodo_padre
            if data > nodo_padre.data
                nodo_padre.der = Nodo.new(data)
            else
                nodo_padre.izq = Nodo.new(data)
            end
        end
    end

    def empty?
        return @root == nil
    end

    def each
        arr = []
        resultado = []
        arr.append(@root)
        while !arr.empty?
            aux = arr.shift()

            if aux != nil
                arr.append(aux.izq)
                arr.append(aux.der)
                if aux.data != nil
                    resultado.append(aux.data)
                end
            end
        end
        i = 0
        while i < resultado.length
            yield resultado[i]
            i = i + 1
        end
    end

    def include?(elemt)
        self.each do |n|
            if n == elemt
                return true
            else
                return false
            end
        end 
    end
end

arbol = BinaryTree.new
arbol << 3
arbol << 2
arbol << 1
arbol << 5 
arbol << 7
p arbol.empty?
arbol.each do |n|
    puts n
end
puts arbol.include?(3)
puts arbol.include?(8)

