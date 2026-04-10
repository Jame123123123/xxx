local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- ใช้ WaitForChild เพื่อป้องกันกรณีสคริปต์รันก่อนที่โฟลเดอร์หรือ Event จะโหลดเสร็จ
local cardFolder = ReplicatedStorage:WaitForChild("CARDX2", 5)

if cardFolder then
    local vipEvent = cardFolder:FindFirstChild("ChangeVIPEvent1Day")
    
    if vipEvent and vipEvent:IsA("RemoteEvent") then
        vipEvent:FireServer()
        print("I nahee Successfully")
    else
        warn("ไม่พบ RemoteEvent")
    end
else
    warn("ไม่พบโฟลเดอร์ReplicatedStorage")
end

print("Nahee")
