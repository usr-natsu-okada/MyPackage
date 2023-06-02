module MyPackage

greet() = print("Revise")


function greet2()
    print("New function!")
    
end

struct MyType
    x::Int
    y::Int
    z::Int
end

include("file1.jl") # file1の中身をここに展開する, 新しい機能を追加したいときは, 機能の名前をつけて追加

end # module MyPackage
