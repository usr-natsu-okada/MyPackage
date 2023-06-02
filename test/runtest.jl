using MyPackage: myiseven, bisect # 今いる名前空間にたす
using Test # test用のスタンダードなライブラリ


@testset "myiseven" begin # test名
    # @test myiseven(2) # testマクロ　は assertの高級ver. 
    # @test myiseven(3)
    @test myiseven(1) == false
    @test myiseven(2) == true
    for i in 1:10
        @test myiseven(i) == (i % 2 == 0)
    end
end


@testset "myiseven2" begin
    @test myiseven(2)
    @test myiseven(3)
end



@testset "bisect" begin
    @test isapprox(bisect(x-1, 0, 2, 1e-10))
end