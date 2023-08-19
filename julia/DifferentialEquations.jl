using DifferentialEquations

# 微分方程式の定義
function f(du, u, p, t)
    du[1] = p[1] * u[1] - p[2] * u[1] * u[2]
    du[2] = -p[3] * u[2] + p[4] * u[1] * u[2]
end

# 初期値の設定
u0 = [1.0, 1.0]

# パラメータの設定
p = [1.5, 1.0, 3.0, 1.0]

# 解く時間範囲の設定
tspan = (0.0, 10.0)

# 解く
prob = ODEProblem(f, u0, tspan, p)
sol = solve(prob)

# 結果を表示
println(sol)
