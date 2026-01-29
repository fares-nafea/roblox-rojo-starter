
print("hello")

task.spawn(function()
    task.wait(5)
    print(" 5 Second wait finished ")
end)

print("Goodbye")